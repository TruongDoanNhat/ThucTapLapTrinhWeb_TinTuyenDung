package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.CV;
import vn.edu.hcmuaf.fit.model.Post;
import vn.edu.hcmuaf.fit.model.PostApplied;
import vn.edu.hcmuaf.fit.service.DAOCV;
import vn.edu.hcmuaf.fit.service.DAOPost;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@WebServlet(name = "/Post_details", value = "/candidate/Post_details")
public class  PostDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAOPost p = new DAOPost();
        DAOCV cv = new DAOCV();
        int id = UtilSession.getInstance().getValue(request, "account").getId();
        String action = request.getParameter("action");
        String cvId = request.getParameter("cv");
        String postId = request.getParameter("postId");

        switch (action) {
            case "nopcv":
                cv.insertPostapplied(cvId, postId);
                response.sendRedirect(request.getContextPath() + "/candidate/Post_details?action=vieclamdaungtuyen");
                break;
            case "vieclamdaungtuyen":
                List<Post> postApplied = p.getPostApplied(id);
                List<PostApplied> postApplied2 = cv.getPostApplied(id);
                request.setAttribute("jobApplied", postApplied);
                request.setAttribute("jobApplied2", postApplied2);
                UtilControl.forward("candi-viec-lam-da-ung-tuyen.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
