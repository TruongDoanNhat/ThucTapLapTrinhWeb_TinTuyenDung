package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.Post;
import vn.edu.hcmuaf.fit.service.DAOBill;
import vn.edu.hcmuaf.fit.service.DAOPost;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Pay", value = "/Pay")
public class Pay extends HttpServlet {
    DAOPost dp = new DAOPost();
    DAOBill db = new DAOBill();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String[] post = request.getParameterValues("choose");
        String numAccount = request.getParameter("numAccount");
        String pay = request.getParameter("pay2");
        String status = "";
        String action = request.getParameter("action");
        String id = request.getParameter("id");
        Account account = UtilSession.getInstance().getValue(request, "account");
        switch (action) {
            case "quanlydoanhthu":

                break;
            case "thanhtoan":
                // đẩy csdl vào bill
                if (db.insertBill(numAccount, pay, account.getId())) {
                    // đổi trạng thái cho post và thêm id của bill vào post
                    for (String p : post) {
                        try {
                            dp.updatePost(Integer.valueOf(p), Post.status_paided, db.getListBill().size());
                        } catch (Exception e) {
                            status = "failed";
                            request.setAttribute("status", status);
                            UtilControl.forward("business/busi-gio-hang.jsp", request, response);
                        }
                    }
                    response.sendRedirect("business/busi-trang-chu.jsp");
                } else {
                    status = "failed";
                    request.setAttribute("status", status);
                    UtilControl.forward("business/busi-gio-hang.jsp", request, response);
                }
                break;
            case "xoa":
                dp.deletePost(Integer.valueOf(id));
                response.sendRedirect("Post?action=giohang");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
