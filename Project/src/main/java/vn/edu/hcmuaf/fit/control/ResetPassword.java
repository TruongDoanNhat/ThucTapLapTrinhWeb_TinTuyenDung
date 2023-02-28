package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.Util.Util;
import vn.edu.hcmuaf.fit.service.DAOAccount;
import vn.edu.hcmuaf.fit.service.MailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "ResetPassword", value = "/ResetPassword")
public class ResetPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        DAOAccount d = new DAOAccount();
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        boolean emailExist = d.checkEmail(username, email);
        if (!emailExist) {
            request.setAttribute("message", "Email không tồn tại! Vui lòng nhập lại email!");
            UtilControl.forward("quen-mat-khau.jsp", request, response);
        } else {
            String name = d.getAccount().getName();
            String password = Util.randomPassword();
            String subject = " Reset password ";
            String content = "Hi " + name + ", We provide your password again: " + password;
            MailService.sendMail(email, subject, content);
            password = Util.encryptionPassword(password);
            d.updatePassword(username, password);
            response.sendRedirect("/visitor/dang-nhap.jsp");
        }
    }

    public static void main(String[] args) {

    }
}
