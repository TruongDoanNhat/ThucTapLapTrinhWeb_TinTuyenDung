package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.service.DAOCV;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CV", value = {"/cadidate/CV", "/CV"})
public class CVServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAOCV cv = new DAOCV();
        String action = request.getParameter("action");

        switch (action) {
            case "taocv" :
                String title = request.getParameter("title");
                String name = request.getParameter("name");
                String rank = request.getParameter("rank");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String gen = request.getParameter("gen");
                String address = request.getParameter("address");
                String salary = request.getParameter("salary");
                String skill = request.getParameter("skill");
                String interest = request.getParameter("interest");
                String exp = request.getParameter("exp");
                String lv = request.getParameter("lv");
                cv.insertCV(title, name, rank, email, phone, gen, address, salary, skill, interest,exp,lv);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doGet(request, response);
    }
}
