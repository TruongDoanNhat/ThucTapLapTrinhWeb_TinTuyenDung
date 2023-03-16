package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.service.DAOPost;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Post", value = {"/Post", "/Category"})
public class PostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAOPost p = new DAOPost();
        String action = request.getParameter("action");

        if (action != null) {
            request.setAttribute("listPOC", p.getPostofCategoryByID(action));
//            request.getRequestDispatcher("danh-sach-viec-lam-candi.jsp").forward(request, response);
        } else {
            request.setAttribute("listPOC", p.getPostAll());
        }
        request.getRequestDispatcher("danh-sach-viec-lam-candi.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}
