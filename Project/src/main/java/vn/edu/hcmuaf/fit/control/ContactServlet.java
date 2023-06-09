package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Contact;
import vn.edu.hcmuaf.fit.service.DAOContact;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Contact", value = "/admin/Contact")
public class ContactServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        Contact contact = DAOContact.getInstance().getContact();

        switch (action) {
            case "changeContact":
                String name = request.getParameter("name");
                String address = request.getParameter("address");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                DAOContact.getInstance().updateContact(name, address, phone, email);
                response.sendRedirect(request.getContextPath() + "/admin/Contact?action=contact");
                break;
            case "contact":
                request.setAttribute("contact", contact);
                UtilControl.forward("Admin-chinh-sua-lien-he.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
