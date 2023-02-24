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
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String s = request.getParameter("gen");
        String img = null;
        int gen = (s != null) ? (s.equals("Nam") ? 1 : 2) : 0;

        Account account = (Account) request.getSession().getAttribute("account");
        if (account != null) {
            account.setName(name);
            account.setPhone(phone);
            account.setEmail(email);
            account.setGen(gen);
            request.getRequestDispatcher("candi-tai-khoan.jsp").forward(request, response);
            DAOAccount d = new DAOAccount();
            d.updateAccountCandi(account.getUsername(), account.getName(), account.getPhone(), account.getEmail(), account.getGen());
        }else{
            request.getRequestDispatcher("dang-nhap-candi.jsp").forward(request, response);
        }

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
