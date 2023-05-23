package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.DAOAccount;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Account", value = {"/AccountManager", "/Account"})
public class AccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        String username = request.getParameter("username");
        Account account = UtilSession.getInstance().getValue(request, "account");
        DAOAccount d = new DAOAccount();
        switch (action) {
            case "accountManager":
                request.setAttribute("listAccount", d.getAllAccount());

                break;
        }
        if (action == null) {
            String name = request.getParameter("name");
            if (account != null) {
                account.setName(name);
                d.updateAccountCandi(account.getUsername(), account.getName());
                request.getRequestDispatcher("candi-tai-khoan.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("visitor/dang-nhap.jsp").forward(request, response);
            }
        }
        switch (action) {
            case "lock":
                if (!(DAOAccount.getAccountQuery(username).getType() == 2)) {
                    d.updateStatusAccount(username, Account.LOCK);
                    UtilControl.phanQuyenServletAdmin2(account, "admin/Admin-quan-li-nguoi-dung.jsp", "/Login?action=login", request, response);
                }else{
                    response.sendRedirect("visitor/error.jsp");
                }
                break;
            case "unlock":
                d.updateStatusAccount(username, Account.ACTIVATED);
                UtilControl.phanQuyenServletAdmin2(account, "admin/Admin-quan-li-nguoi-dung.jsp", "/Login?action=login", request, response);
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
