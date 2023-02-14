package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.DAOAccount;
import vn.edu.hcmuaf.fit.service.DAOPost;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "HomeServlet", value = {"/Home", "/Logout"})
public class HomeServlet extends HttpServlet {
    private int r = 0;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

//        DAOAccount d = new DAOAccount();
//        int role = UtilControl.setRole("btndangnhap_candi", "btndangnhap_busi", request);
//        String user = request.getParameter("username");
//        String pass = request.getParameter("password");
//        String message = d.getMessage();
//        boolean checkAccount = d.checkAccount(user, pass, role);

        DAOPost p = new DAOPost();
        String action = request.getParameter("action");
        if (action != null) {
            switch (action) {
                case "logout":
                    Account account = (Account) request.getSession().getAttribute("account");
                    r = account.getRole();
                    UtilSession.getInstance().removeValue(request, "account");
                    action = null;
                    response.sendRedirect("/Home");
                    break;
            }
        } else {
            request.setAttribute("listPAT5", p.getPostAllTop5());
            request.setAttribute("categoryList", p.getCategoryAll());
            UtilControl.send(r, "Admin-trang-chu.jsp", "trang-chu-candi.jsp", "busi-trang-chu.jsp", response);

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }

}
