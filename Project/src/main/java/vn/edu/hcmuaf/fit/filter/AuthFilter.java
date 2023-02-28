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
        if (url.startsWith("/admin")) {
            if (account != null) {
                if (account.getRole() == 0) {
                    chain.doFilter(servletRequest, servletResponse);
                } else if (account.getRole() == 1) {
                    response.sendRedirect(request.getContextPath() + "/Login?action=login-admin");
                } else {
                    response.sendRedirect(request.getContextPath() + "/Login?action=login-admin");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/Login?action=login-admin");
            }
        } else if (url.startsWith("/business")) {
            if (account != null) {
                if (account.getRole() == 2) {
                    chain.doFilter(servletRequest, servletResponse);
                } else if (account.getRole() == 1) {
                    response.sendRedirect(request.getContextPath() + "/Login?action=login-busi");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/Login?action=login-busi");
            }
        } else if (url.startsWith("/candidate")) {
            if (account != null) {
                if (account.getRole() == 1) {
                    chain.doFilter(servletRequest, servletResponse);
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/Login?action=login-candi");
            }
        } else {
            chain.doFilter(servletRequest, servletResponse);
        }

    }
}
