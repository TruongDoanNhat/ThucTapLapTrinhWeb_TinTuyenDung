package vn.edu.hcmuaf.fit.filter;

import vn.edu.hcmuaf.fit.control.UtilSession;
import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.DAOAccount;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "AuthenticationFilter")
public class AuthFilter implements Filter {
    private ServletContext context;
    private int count = 1;

    public void init(FilterConfig config) throws ServletException {
        this.context = config.getServletContext();
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String u = request.getRequestURI();
        if (request.getAttribute("javax.servlet.forward.request_uri") != null) {
            u = (String) request.getAttribute("javax.servlet.forward.request_uri");
        }
        int index = u.indexOf("/");
        String url = u;
        String urlSession = UtilSession.getInstance().getValue2(request, "url");
        Account account = UtilSession.getInstance().getValue(request, "account");
        if (account != null) {
            if (!DAOAccount.checkStatus(account.getUsername(), account.getStatus())) {
                account = null;
                UtilSession.getInstance().removeValue(request, "account");
            }
        }
        if (index != -1) {
            url = u.substring(u.indexOf("/", 1));
        }
        if (!url.startsWith("/Login") && (url.startsWith("/candidate") || url.startsWith("/business") || url.startsWith("/admin")) && account == null && urlSession == null) {
            UtilSession.getInstance().putValue(request, "url", u);
        }
        int role = 1;
        int status = 0;
        if (url.startsWith("/admin")) {
            if (account != null) {
                role = account.getRole();
                status = account.getStatus();
                if (role == 0 && status == 1) {
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
                status = account.getStatus();
                if ((role == 2 || role == 0) && status == 1) {
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
                status = account.getStatus();
                if ((role == 1 || role == 0) && status == 1) {
                    chain.doFilter(servletRequest, servletResponse);
                } else {
                    response.sendRedirect(request.getContextPath() + "/Login?action=login");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/Login?action=login");
            }
        } else {
            chain.doFilter(servletRequest, servletResponse);
        }
    }
}
