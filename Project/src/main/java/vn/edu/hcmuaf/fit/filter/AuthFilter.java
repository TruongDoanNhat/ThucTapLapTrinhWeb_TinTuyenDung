package vn.edu.hcmuaf.fit.filter;

import vn.edu.hcmuaf.fit.control.UtilSession;
import vn.edu.hcmuaf.fit.model.Account;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "AuthenticationFilter")
public class AuthFilter implements Filter {
    private ServletContext context;

    public void init(FilterConfig config) throws ServletException {
        this.context = config.getServletContext();
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String url = request.getRequestURI();
        Account account = UtilSession.getInstance().getValue(request, "account");
        int role;
        if (url.startsWith("/admin")) {
            if (account != null) {
                role = account.getRole();
                if (role == 0) {
                    chain.doFilter(servletRequest, servletResponse);
                } else {
                    response.sendRedirect(request.getContextPath() + "/Login?action=login");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/Login?action=login");
            }
        } else if (url.startsWith("/business")) {
            if (account != null) {
                role = account.getRole();

                if (role == 2 || role == 1) {
                    chain.doFilter(servletRequest, servletResponse);
                } else {
                    response.sendRedirect(request.getContextPath() + "/Login?action=login");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/Login?action=login");
            }
        } else if (url.startsWith("/candidate")) {
            if (account != null) {
                role = account.getRole();
                if (role == 1) {
                    chain.doFilter(servletRequest, servletResponse);
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/Login?action=login");
            }
        } else {
            chain.doFilter(servletRequest, servletResponse);
        }

    }
}
