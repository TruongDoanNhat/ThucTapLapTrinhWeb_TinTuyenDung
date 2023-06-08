package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.service.DAOBill;
import vn.edu.hcmuaf.fit.service.DAOPost;
import vn.edu.hcmuaf.fit.service.modelQuanLy.QuanLyThongKe;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Statistics", value = "/admin/Statistics")
public class Statistics extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        String year = request.getParameter("year");
        DAOBill daoBill = new DAOBill();
        DAOPost daoPost = new DAOPost();
        int[] doanhThuNam = new int[12];
        int[] doanhThuNamTruoc = new int[12];
        int[] baiVietNam = new int[12];

        switch (action) {
            case "adminThongke":
                if (year != null) {
                    doanhThuNam = daoBill.doanhThuNam(year);
                    doanhThuNamTruoc = daoBill.doanhThuNam(String.valueOf(Integer.valueOf(year) - 1));
                    baiVietNam = daoPost.baiVietNam(year);
                }
                request.setAttribute("doanhThuNam", doanhThuNam);
                request.setAttribute("doanhThuNamTruoc", doanhThuNamTruoc);
                request.setAttribute("baiVietNam", baiVietNam);
                UtilControl.forward("Admin-baocao-thongke.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
