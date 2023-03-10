package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.Util.Util;
import vn.edu.hcmuaf.fit.service.DAOAccount;
import vn.edu.hcmuaf.fit.service.MailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
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
        String s = request.getParameter("gen");
        String companyName = request.getParameter("companyName");
        String location = request.getParameter("location");
        String description = request.getParameter("description");
        int gen = (s != null) ? (s.equals("Nam") ? 1 : 2) : 0;
        String img = null;
        Date date = new Date();
        int role = UtilControl.setRole("btndangky_candi", "btndangky_busi", request);
        String action = request.getParameter("action");
        if (user_name != null) {
            if (role == 1) {
                if (d.registerCandi(user_name, password, role, name, email, date, 0)) {
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
                if (d.register(user_name, password, role, name, email, phone, gen, companyName, location, description, img, date, 0)) {
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
        } else if (action.equals("daxacthuc")) {
            d.xacThucEmail(request.getParameter("u"), request.getParameter("e"));
            response.sendRedirect("/visitor/index.jsp");
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


}
