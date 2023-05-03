package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.Post;
import vn.edu.hcmuaf.fit.model.Price;
import vn.edu.hcmuaf.fit.service.DAOBill;
import vn.edu.hcmuaf.fit.service.DAOPost;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@WebServlet(name = "Post", value = {"/PostManager", "/Post", "/Category"})
public class PostServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAOPost p = new DAOPost();
        DAOBill daoBill = new DAOBill();
        String message = "hello";
        Account account = UtilSession.getInstance().getValue(request, "account");
        String action = request.getParameter("action");
        String idManager = request.getParameter("id");

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
                p.insertPost(category, title, quantity, salary, address, type, rank, gen, description, rights, requests, Post.status_unpaid, endDate);
                response.sendRedirect(request.getContextPath() + "/Post?action=giohang");
                break;
            case "giohang":
                int id = UtilSession.getInstance().getValue(request, "account").getId();
                Price price = daoBill.getPrice();
                List<Post> posts = p.getPost(id, Post.status_unpaid);
                request.setAttribute("postList", posts);
                request.setAttribute("price", price);
                UtilControl.forward("business/busi-gio-hang.jsp", request, response);
                break;
            case "quanlybaidang":
                List<Post> postAll = p.getPostAll();
                request.setAttribute("postAll", postAll);
//                response.sendRedirect("admin/Admin-quan-li-bai-dang.jsp");
                UtilControl.phanQuyenServletAdmin1(account, "admin/Admin-quan-li-bai-dang.jsp", "/Login?action=login", request, response);
//                if (account != null) {
//                    if (account.getRole() == 0) {
//                        UtilControl.forward("admin/Admin-quan-li-bai-dang.jsp", request, response);
//                    } else {
//                        response.sendRedirect(request.getContextPath() + "/Login?action=login");
//                    }
//                } else {
//                    response.sendRedirect(request.getContextPath() + "/Login?action=login");
//                }
                break;
            case "approve":
                p.updatePost(Integer.valueOf(idManager), Post.status_approve);
//                if (account != null) {
//                    if (account.getRole() == 0) {
//                        UtilControl.forward("PostManager?action=quanlybaidang", request, response);
//                    } else {
//                        response.sendRedirect(request.getContextPath() + "/Login?action=login");
//                    }
//                } else {
//                    response.sendRedirect(request.getContextPath() + "/Login?action=login");
//                }
                UtilControl.phanQuyenServletAdmin2(account, "PostManager?action=quanlybaidang", "/Login?action=login", request, response);
                break;
            case "remove":
                p.updatePost(Integer.valueOf(idManager), Post.status_unpaid);
                // (chưa làm) trả lại thông báo cho business
                UtilControl.phanQuyenServletAdmin2(account, "PostManager?action=quanlybaidang", "/Login?action=login", request, response);
                break;
            case "lock":
                p.updatePost(Integer.valueOf(idManager), Post.status_lock);
                // (chưa làm) trả lại thông báo cho business
                UtilControl.phanQuyenServletAdmin2(account, "PostManager?action=quanlybaidang", "/Login?action=login", request, response);
                break;
            case "delete":
                p.deletePost(Integer.valueOf(idManager));
                UtilControl.phanQuyenServletAdmin2(account, "PostManager?action=quanlybaidang", "/Login?action=login", request, response);
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
