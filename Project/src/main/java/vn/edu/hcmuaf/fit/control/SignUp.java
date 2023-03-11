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
import java.util.Date;

@WebServlet(name = "SignUp", value = "/SignUp")
public class SignUp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAOAccount d = new DAOAccount();
        String name = request.getParameter("hoten");
        String user_name = request.getParameter("user_name");
        String password = request.getParameter("password");
        password = Util.encryptionPassword(password);
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String companyName = request.getParameter("companyName");
        String address = request.getParameter("location");
        String description = request.getParameter("description");
        int type = 0;
        String img = null;
        Date date = new Date();
        int role = UtilControl.setRole("btndangky_candi", "btndangky_busi", request);
        String action = request.getParameter("action");


        if (user_name != null) {
            if (role == 1) {
                if (d.registerCandi(email, user_name, password, name, type, role, 0, date)) {
                    response.sendRedirect("/visitor/dang-nhap.jsp");
                } else {
                    String message = d.getMessage();
                    request.setAttribute("message", message);
                    UtilControl.forward(role, "visitor/dang-ky-Admin.jsp", "visitor/dang-ky-candi.jsp", "visitor/dang-ky-busi.jsp", request, response);
                }
            } else if (role == 0) {
                if (d.registerAdmin(user_name, password, email, role, date, 0)) {
                    response.sendRedirect("/visitor/dang-nhap.jsp");
                } else {
                    String message = d.getMessage();
                    request.setAttribute("message", message);
                    UtilControl.forward(role, "visitor/dang-ky-Admin.jsp", "visitor/dang-ky-candi.jsp", "visitor/dang-ky-busi.jsp", request, response);
                }
            } else {
                if (d.registerBusi(user_name, password, role, name, email, phone, type, 0, companyName, address, description, date)) {
                    response.sendRedirect("/visitor/dang-nhap.jsp");
                } else {
                    String message = d.getMessage();
                    request.setAttribute("message", message);
                    UtilControl.forward(role, "visitor/dang-ky-Admin.jsp", "visitor/dang-ky-candi.jsp", "visitor/dang-ky-busi.jsp", request, response);
                }
            }
        }
        if (action == null) {
            String subject = "Email Verification";
            String content = "Click the link to verify your email: " + request.getRequestURL() + "?action=daxacthuc&u=" + user_name + "&e=" + email;
            MailService.sendMail(email, subject, content);
        } else {
            switch (action) {
                case "candidate":
                    UtilControl.forward("visitor/dang-ky-candi.jsp", request, response);
                    break;
                case "business":
                    UtilControl.forward("visitor/dang-ky-busi.jsp", request, response);
                    break;
                case "admin":
                    UtilControl.forward("visitor/dang-ky-admin.jsp", request, response);
                    break;
                case "daxacthuc":
                    d.xacThucEmail(request.getParameter("u"), request.getParameter("e"));
                    response.sendRedirect("/visitor/index.jsp");
            }
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


}
