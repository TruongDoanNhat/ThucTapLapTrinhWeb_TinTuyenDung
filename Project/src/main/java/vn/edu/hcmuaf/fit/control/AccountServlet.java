package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.DAOAccount;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Account", value = {"/AccountManager", "/Account"})
public class AccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        DAOAccount d = new DAOAccount();
        switch (action) {
            case "accountManager":
                request.setAttribute("listAccount", d.getAllAccount());

                break;
        }
        if (action == null) {
            String name = request.getParameter("name");
            Account account = (Account) UtilSession.getInstance().getValue(request, "account");
            if (account != null) {
                account.setName(name);
                d.updateAccountCandi(account.getUsername(), account.getName());
                request.getRequestDispatcher("candi-tai-khoan.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("visitor/dang-nhap.jsp").forward(request, response);
            }
        }

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
