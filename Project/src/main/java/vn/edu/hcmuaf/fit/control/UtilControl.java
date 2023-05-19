package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UtilControl {


    public static void phanQuyenServletAdmin1(Account account, String linkIn, String linkOut, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (account != null) {
            if (account.getRole() == 0) {
                UtilControl.forward(linkIn, request, response);
            } else {
                response.sendRedirect(request.getContextPath() + linkOut);
            }
        } else {
            response.sendRedirect(request.getContextPath() + linkOut);
        }
    }

    public static void phanQuyenServletAdmin2(Account account, String linkIn, String linkOut, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (account != null) {
            if (account.getRole() == 0) {
                response.sendRedirect(linkIn);
            } else {
                response.sendRedirect(request.getContextPath() + linkOut);
            }
        } else {
            response.sendRedirect(request.getContextPath() + linkOut);
        }
    }

    public static void phanQuyenServletBusi1(Account account, String linkIn, String linkOut, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (account != null) {
            if (account.getRole() == 2 || account.getRole() == 0) {
                UtilControl.forward(linkIn, request, response);
            } else {
                response.sendRedirect(request.getContextPath() + linkOut);
            }
        } else {
            response.sendRedirect(request.getContextPath() + linkOut);
        }
    }

    public static void phanQuyenServletBusi2(Account account, String linkIn, String linkOut, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (account != null) {
            if (account.getRole() == 2 || account.getRole() == 0) {
                response.sendRedirect(linkIn);
            } else {
                response.sendRedirect(request.getContextPath() + linkOut);
            }
        } else {
            response.sendRedirect(request.getContextPath() + linkOut);
        }
    }

    public static void send(int role, String urlAdmin, String urlCandi, String urlBusi, HttpServletResponse response) throws IOException {
        if (role == 0)
            response.sendRedirect(urlAdmin);
        if (role == 1)
            response.sendRedirect(urlCandi);
        if (role == 2)
            response.sendRedirect(urlBusi);
    }

    public static void forward(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher(url).forward(request, response);
    }

    public static void forward(int role, String urlAdmin, String urlCandi, String urlBusi, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (role == 0)
            request.getRequestDispatcher(urlAdmin).forward(request, response);
        if (role == 1)
            request.getRequestDispatcher(urlCandi).forward(request, response);
        if (role == 2)
            request.getRequestDispatcher(urlBusi).forward(request, response);
    }

    public static int setRole(String Candi, String Busi, HttpServletRequest request) throws IOException {
        if (request.getParameter(Candi) != null)
            return 1;
        if (request.getParameter(Busi) != null)
            return 2;
        return 0;
    }

    public static int setRole(String action, HttpServletRequest request) throws IOException {
        if (action != null) {
            if (action.equals("login-candi"))
                return 1;
            if (action.equals("login-busi"))
                return 2;
        }
        return 0;
    }

}
