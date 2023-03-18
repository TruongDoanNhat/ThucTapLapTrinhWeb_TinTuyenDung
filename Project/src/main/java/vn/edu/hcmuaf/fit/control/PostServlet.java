package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.service.DAOPost;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.text.SimpleDateFormat;

@WebServlet(name = "Post", value = {"/Post", "/Category"})
public class PostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAOPost p = new DAOPost();
        String action = request.getParameter("action");

//      switch (action) {
//            case "dangtin":
        String tittle = request.getParameter("tittle");
        String rank = request.getParameter("rank");
        String category = request.getParameter("category");
        String type = request.getParameter("type");
        String address = request.getParameter("address");
        String salary = request.getParameter("salary");
        String quantity = request.getParameter("quantity");
        String gen = request.getParameter("gen");
        String description = request.getParameter("description");
        String requests = request.getParameter("requests");
        String rights = request.getParameter("rights");
        String file = request.getParameter("file");
        Date endDate;
        try {
            endDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("endDate"));
        } catch (java.text.ParseException e) {
            throw new RuntimeException(e);
        }
        p.insertPost(category, tittle, quantity, salary, address, type, rank, gen,
                description, rights, requests, "0", endDate);



        if (action != null) {
            request.setAttribute("listPOC", p.getPostofCategoryByID(Integer.valueOf(action)));
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

    public static void main(String[] args) {

    }
}
