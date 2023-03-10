package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.Util.Util;
import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.DAOAccount;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Login", value = {"/Login", "/Logout"})
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAOAccount d = new DAOAccount();
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        pass = Util.encryptionPassword(pass);
        boolean checkAccount = d.checkAccount(user, pass);
        String message = d.getMessage();
        String action = request.getParameter("action");
        if (action != null) {
            switch (action) {
                case "login":
                    request.getRequestDispatcher("/visitor/dang-nhap.jsp").forward(request, response);
                    break;
                case "logout":
                    UtilSession.getInstance().removeValue(request, "account");
                    response.sendRedirect("/visitor/trang-chu-candi.jsp");
                    break;
            }
        } else {
            if (checkAccount && d.getAccount().getStatus() == 1) {
                HttpSession session = request.getSession(true);
                session.setAttribute("account", (Account) d.getAccount());
                UtilControl.send(d.getAccount().getRole(), "/admin/Admin-trang-chu.jsp", "/visitor/trang-chu-candi.jsp", "/business/busi-trang-chu.jsp", response);
            } else {
                request.setAttribute("message", message);
                UtilControl.forward("/visitor/dang-nhap.jsp", request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
