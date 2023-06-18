package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Company;
import vn.edu.hcmuaf.fit.service.DAOCompany;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CompanyServlet", value = "/admin/CompanyManager")
public class CompanyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        String idAccount = request.getParameter("idAccount");
        switch (action) {
            case "detailsCompany":
                Company company = DAOCompany.getCompany(Integer.parseInt(idAccount));
                request.setAttribute("company", company);
                UtilControl.forward("/visitor/cong-ty-candi.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
