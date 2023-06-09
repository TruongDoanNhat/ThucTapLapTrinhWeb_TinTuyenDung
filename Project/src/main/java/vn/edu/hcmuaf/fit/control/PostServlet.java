package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.*;
import vn.edu.hcmuaf.fit.service.DAOBill;
import vn.edu.hcmuaf.fit.service.DAOPost;
import vn.edu.hcmuaf.fit.service.DAOPrice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@WebServlet(name = "Post", value = {"/admin/PostManager", "/business/Post", "/Category"})
public class PostServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        DAOPost p = new DAOPost();
        DAOBill daoBill = new DAOBill();

        Account account = UtilSession.getInstance().getValue(request, "account");
        String url2 = UtilSession.getInstance().getValue2(request, "url2");

        List<Post> postAll;

        String action = request.getParameter("action");
        String idManager = request.getParameter("id");
        String billID = request.getParameter("billID");
        String keywords = request.getParameter("keywords");
        String status = request.getParameter("status") == null ? "0" : request.getParameter("status");
        String trang = request.getParameter("trang");
        int tongBaiViet;
        int soBaiViet;

        if (trang == null) {
            trang = "1";
        }
        int t = Integer.parseInt(trang);
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
                response.sendRedirect(request.getContextPath() + "/business/Post?action=giohang");
                break;
            case "giohang":
                int id = UtilSession.getInstance().getValue(request, "account").getId();
                Price price = DAOPrice.getInstance().getPrice();
                List<Post> posts = p.getPost(id, Post.status_unpaid);
                request.setAttribute("postList", posts);
                request.setAttribute("price", price);
                UtilControl.forward("busi-gio-hang.jsp", request, response);
                break;
            case "tintuyendung":
                tongBaiViet = p.getTotalPostBusi(account.getId());
                soBaiViet = tongBaiViet / 3;
                if (tongBaiViet % 3 != 0) {
                    soBaiViet++;
                }
                postAll = p.getPostIdBusi(account.getId(), t);

                if (billID != null) {
                    tongBaiViet = p.getTotalPostIdBill(billID);
                    soBaiViet = tongBaiViet / 3;
                    if (tongBaiViet % 3 != 0) {
                        soBaiViet++;
                    }
                    postAll = p.getPostIdBill(billID, t);
                    p.updateBill(billID, Bill.STATUS_SEEN);
                    request.setAttribute("billId", billID);
                    if (!trang.equals("1") || url2 == null) {
                        UtilSession.getInstance().putValue(request, "url2", "/admin/Pay?action=quanlydoanhthu");
                    } else {
                        UtilSession.getInstance().removeValue(request, "url2");
                    }

                }

                request.setAttribute("post", postAll);
                request.setAttribute("sobv", soBaiViet);
                request.setAttribute("trang", t);
                UtilControl.forward("busi-tin-tuyen-dung.jsp", request, response);
//                UtilControl.phanQuyenServletBusi1(account, "/busi-tin-tuyen-dung.jsp", "/Login?action=login", request, response);
                break;
            case "xemthongtinvieclam":
                String id2 = request.getParameter("id");
                int idPost = Integer.parseInt(id2);
                Post post2 = p.getPostDetail(idPost);
                request.setAttribute("post2", post2);
                Company company = p.getCompanyFromPost(idPost);
                request.setAttribute("company", company);
                Account account1 = p.getAccountFromPost(idPost);
                request.setAttribute("account1", account1);
                UtilControl.forward("/visitor/thong-tin-viec-lam-candi.jsp", request, response);
                break;
            case "search":
                postAll = status.equals("0") ? p.getPostSearch(keywords) : p.getPostSearch(keywords, status);
                request.setAttribute("postAll", postAll);
                UtilControl.forward("Admin-quan-li-bai-dang.jsp", request, response);
                break;
            case "approve":
                p.updatePost(Integer.valueOf(idManager), Post.status_approve);
                response.sendRedirect(request.getContextPath() + "/admin/PostManager?action=quanlybaidang");
//                UtilControl.phanQuyenServletAdmin2(account, "PostManager?action=quanlybaidang", "/Login?action=login", request, response);
                break;
            case "remove":
                p.updatePost(Integer.valueOf(idManager), Post.status_unpaid);
                // (chưa làm) trả lại thông báo cho business
                response.sendRedirect(request.getContextPath() + "/admin/PostManager?action=quanlybaidang");
//                UtilControl.phanQuyenServletAdmin2(account, "PostManager?action=quanlybaidang", "/Login?action=login", request, response);
                break;
            case "lock":
                p.updatePost(Integer.valueOf(idManager), Post.status_lock);
                // (chưa làm) trả lại thông báo cho business
                response.sendRedirect(request.getContextPath() + "/admin/PostManager?action=quanlybaidang");
//                UtilControl.phanQuyenServletAdmin2(account, "PostManager?action=quanlybaidang", "/Login?action=login", request, response);
                break;
            case "delete":
                p.deletePost(Integer.valueOf(idManager));
                response.sendRedirect(request.getContextPath() + "/admin/PostManager?action=quanlybaidang");
//                UtilControl.phanQuyenServletAdmin2(account, "PostManager?action=quanlybaidang", "/Login?action=login", request, response);
                break;
            case "danhsanhvieclam":
//                lay danh sách việc làm
                List<Post> postAll1 = p.getPostAll(t);
//                gáng danh sách việc làm
                request.setAttribute("listJob", postAll1);
//                hiển thị
                UtilControl.forward("visitor/danh-sach-viec-lam-candi.jsp", request, response);
                break;
            case "quanlybaidang":
                int dem2 = p.getTotalPostPaid();
                int sobd = dem2 / 5;
                if (dem2 % 5 != 0) {
                    sobd++;
                }
                List<Post> post3 = p.getPostAll(t);
                request.setAttribute("postAll", post3);
                request.setAttribute("sobd", sobd);
                request.setAttribute("trang", t);
                UtilControl.forward("Admin-quan-li-bai-dang.jsp", request, response);
//                UtilControl.phanQuyenServletAdmin1(account, "Admin-quan-li-bai-dang.jsp", "/Login?action=login", request, response);
                break;
            case "category":
                request.setAttribute("listPOC", p.getPostofCategoryByID(Integer.valueOf(idManager)));
                UtilControl.forward("visitor/danh-sach-viec-lam-candi.jsp", request, response);
                break;
            case "vieclamdaungtuyen":
                if (account != null) {
                    List<Post> postApplied1 = p.getPostApplied(account.getEmail());
                    request.setAttribute("jobApplied", postApplied1);
                }
                UtilControl.phanQuyenServletCandi1(account, "candidate/candi-viec-lam-da-ung-tuyen.jsp", "/Login?action=login", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}
