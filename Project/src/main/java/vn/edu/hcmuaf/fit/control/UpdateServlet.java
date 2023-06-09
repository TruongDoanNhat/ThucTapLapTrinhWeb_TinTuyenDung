package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Contact;
import vn.edu.hcmuaf.fit.model.Price;
import vn.edu.hcmuaf.fit.service.DAOCategory;
import vn.edu.hcmuaf.fit.service.DAOContact;
import vn.edu.hcmuaf.fit.service.DAOPost;
import vn.edu.hcmuaf.fit.service.DAOPrice;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Update", value = "/admin/Update")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        Contact contact = DAOContact.getInstance().getContact();
        Price price = DAOPrice.getInstance().getPrice();

        switch (action) {
            case "changeContact":
                String name = request.getParameter("name");
                String address = request.getParameter("address");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                DAOContact.getInstance().updateContact(name, address, phone, email);
                response.sendRedirect(request.getContextPath() + "/admin/Update?action=contact");
                break;
            case "contact":
                request.setAttribute("contact", contact);
                UtilControl.forward("Admin-chinh-sua-lien-he.jsp", request, response);
                break;
            case "change":
                String money = request.getParameter("money");
                String vat = request.getParameter("vat");
                String category = request.getParameter("addCategory");
                if (category != null) {
                    DAOCategory.getInstance().insertCategory(category);
                }
                DAOPrice.getInstance().updatePrice(money, vat);
                response.sendRedirect(request.getContextPath() + "/admin/Update?action=update");
                break;
            case "update":
                request.setAttribute("listCategory", DAOCategory.getInstance().getCategoryAll());
                request.setAttribute("price", price);
                UtilControl.forward("Admin-chinh-sua.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
