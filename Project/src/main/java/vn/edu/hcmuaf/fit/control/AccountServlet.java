package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.DAOAccount;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Account", value = "/Account")
public class AccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");

        Account account = (Account) UtilSession.getInstance().getValue(request, "account");
        if (account != null) {
            account.setName(name);
            request.getRequestDispatcher("candi-tai-khoan.jsp").forward(request, response);
            DAOAccount d = new DAOAccount();
            d.updateAccountCandi(account.getUsername(), account.getName());
        } else {
            request.getRequestDispatcher("visitor/dang-nhap.jsp").forward(request, response);
        }

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
