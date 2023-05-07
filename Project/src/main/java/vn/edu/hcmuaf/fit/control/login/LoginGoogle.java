package vn.edu.hcmuaf.fit.control.login;

import vn.edu.hcmuaf.fit.bean.UserGoogle;
import vn.edu.hcmuaf.fit.properties.google.GoogleUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "/LoginGoogle", value = "/login-google")
public class LoginGoogle extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");

        if (code == null || code.isEmpty()) {
            request.setAttribute("error", "Login failed!");
            request.getRequestDispatcher("visitor/dang-nhap.jsp").forward(request,response);
        } else {

            response.sendRedirect("Login?action=google&code=" + code);
//            System.out.println(userGoogle.toString());
            //-> mấy thằng kia nó lấy user name.
//                HttpSession session = request.getSession(true);
//                session.setAttribute("account", userGoogle);
//            response.sendRedirect("visitor/trang-chu-candi.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

