package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.DAOAccount;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", value = {"/Login"})
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAOAccount d = new DAOAccount();
        String user = request.getParameter("username");
        String pass = request.getParameter("password");

        int role = UtilControl.setRole("btndangnhap_candi", "btndangnhap_busi", request);
        boolean checkAccount = d.checkAccount(user, pass, role);
        String message = d.getMessage();
        String action = request.getParameter("action");
        if (action != null) {
            switch (action) {
                case "login-candi":
                    request.getRequestDispatcher("dang-nhap-candi.jsp").forward(request, response);
                    break;
                case "login-busi":
                    request.getRequestDispatcher("busi-dang-nhap.jsp").forward(request, response);
                    break;
                case "login-admin":
                    request.getRequestDispatcher("Admin-dang-nhap.jsp").forward(request, response);
                    break;
            }
        } else {
            if (checkAccount) {
                HttpSession session = request.getSession(true);
                session.setAttribute("account", (Account) d.getAccount());
                UtilControl.send(d.getAccount().getRole(), "Admin-trang-chu.jsp", "trang-chu-candi.jsp", "busi-trang-chu.jsp", response);
            } else {
                request.setAttribute("message", message);
                UtilControl.forward(role, "Admin-dang-nhap.jsp", "dang-nhap-candi.jsp", "busi-dang-nhap.jsp", request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
