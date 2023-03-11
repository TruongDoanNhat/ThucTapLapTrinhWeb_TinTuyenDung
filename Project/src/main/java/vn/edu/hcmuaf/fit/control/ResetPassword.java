package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.Util.Util;
import vn.edu.hcmuaf.fit.service.DAOAccount;
import vn.edu.hcmuaf.fit.service.MailService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ResetPassword", value = "/ResetPassword")
public class ResetPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        DAOAccount d = new DAOAccount();
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        boolean emailExist = d.checkEmail(username, email);
        String action = request.getParameter("action");
        switch (action) {
            case "forgotPassword":
                UtilControl.forward("/visitor/quen-mat-khau.jsp", request, response);
                break;
        }
        if (!emailExist) {
            request.setAttribute("message", "Email không tồn tại! Vui lòng nhập lại email!");
            UtilControl.forward("/visitor/quen-mat-khau.jsp", request, response);
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }


}
