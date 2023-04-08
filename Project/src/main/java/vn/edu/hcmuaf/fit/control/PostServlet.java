package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Post;
import vn.edu.hcmuaf.fit.service.DAOPost;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@WebServlet(name = "Post", value = {"/Post", "/Category"})
public class PostServlet extends HttpServlet {
    public static final int status_unpaid = 0;
    public static final int status_paided = 1;
    public static final int status_approve = 2;
    public static final int status_remove = 3;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAOPost p = new DAOPost();
        String action = request.getParameter("action");
        String message = "hello";
        switch (action) {
            case "dangtin":
                String title = request.getParameter("title");
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
                Date createDate = new Date(); // lấy ngày hiện tại
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(createDate);
                calendar.add(Calendar.MONTH, 1);
                Date endDate = calendar.getTime(); // thêm một tháng
                p.insertPost(category, title, quantity, salary, address, type, rank, gen,
                        description, rights, requests, status_unpaid, endDate);
                response.sendRedirect("business/busi-gio-hang.jsp");
                break;
            case "giohang":
                int id = UtilSession.getInstance().getValue(request, "account").getId();
                List<Post> posts = p.getPost(id, status_unpaid);
                request.setAttribute("postList", posts);
//              response.sendRedirect("business/busi-gio-hang.jsp");
                UtilControl.forward("business/busi-gio-hang.jsp",request,response);
                break;
        }

//        if (action != null) {
//            request.setAttribute("listPOC", p.getPostofCategoryByID(Integer.valueOf(action)));
////            request.getRequestDispatcher("danh-sach-viec-lam-candi.jsp").forward(request, response);
//        } else {
//            request.setAttribute("listPOC", p.getPostAll());
//        }
//        request.getRequestDispatcher("danh-sach-viec-lam-candi.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    public static void main(String[] args) {

    }
}
