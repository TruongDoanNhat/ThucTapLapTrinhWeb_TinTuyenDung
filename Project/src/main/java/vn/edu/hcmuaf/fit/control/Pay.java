package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.service.DAOPost;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Pay", value = "/Pay")
public class Pay extends HttpServlet {
    DAOPost dp = new DAOPost();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String[] post = request.getParameterValues("choose");
        // đẩy csdl vào bill
        // đổi trạng thái cho post
        for (String p : post) {
            dp.updateStatusPost(Integer.valueOf(p), PostServlet.status_paided);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
