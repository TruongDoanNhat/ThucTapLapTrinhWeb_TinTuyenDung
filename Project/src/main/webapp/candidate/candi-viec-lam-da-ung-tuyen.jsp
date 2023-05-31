<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Post" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOPost" %>
<%@ page import="vn.edu.hcmuaf.fit.model.PostApplied" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 1/4/2023
  Time: 2:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Date date = new Date();
    DAOPost daoPost = new DAOPost();

%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> Việc làm đã ứng tuyển </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/bootstrapost.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/slicknav.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/price_rangs.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/magnific-popupost.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/nice-select.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/responsive.css">
</head>
<body>

<!--================Blog Area =================-->
<jsp:include page="../visitor/header-candi.jsp"></jsp:include>

<div id="main">
    <div id="history-apply">
        <div class="container">
            <div id="chat-app" class="row">
                <div class="col-md-8">
                    <div class="box-group">
                        <div class="box-group-header">
                            <div class="box-group-title">
                                Việc làm đã ứng tuyển
                            </div>
                        </div>
                        <%
                            List<Post> postApplied  = (List<Post>) request.getAttribute("jobApplied");
                            for (Post p :postApplied) {
                        %>


                        <%if(postApplied.size()>0)  { %>
                        <div class="single-job-items mb-30">
                            <div class="job-items">
                                <div class="company-img">
                                    <a href="<%=request.getContextPath()%>/Post?action=xemthongtinvieclam&id=<%=p.getId()%>"><img
                                            src="<%=request.getContextPath()%>/assets/img/icon/job-list1.png" alt="ảnh không được hiển thị"></a>
                                </div>
                                <div class="job-tittle job-tittle2">
                                    <a href="<%=request.getContextPath()%>/Post?action=xemthongtinvieclam&id=<%=p.getId()%>">
                                        <h4><%=p.getTitle()%>
                                        </h4>
                                    </a>
                                    <ul>
                                        <%--                    <li> ${dp.getAddressByCompanyID()}--%>
                                        <%--     </li>--%>
                                        <li>
                                            <%--         <i class="fas fa-map-marker-alt"></i>--%>
                                        </li>
                                        <li><%=p.getSalary()%> VNĐ</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="items-link items-link2 f-right">
                                <a href="/Post_details?id=<%=p.getId()%>">
                                    <%=p.getType()%>
                                </a>
                                <%if (daoPost.dateToCreate(p.getCreateDate()) > 0) { %>
                                <span><%=daoPost.dateToCreate(p.getCreateDate())%> ngày trước</span>
                                <% } else { %>
                                <span>Mới nhất</span>
                                <% } %>
                            </div>
                        </div>

                        <% } else { %>
                            <div class='empty-job'>
                        <div class="box-group-body">
                            <div class="empty-job">
                                <div class="image-empty">
                                    <img src="https://www.topcv.vn/v4/image/history-apply/empty.png" alt="empty apply">
                                </div>
                                <h3 class="title">Bạn chưa ứng tuyển công việc nào!</h3>
                                <div class="caption">
                                    <p>
                                        Bạn chưa ứng tuyển công việc nào!
                                    </p>
                                    <p>
                                        Bắt đầu sự nghiệp mơ ước với hàng nghìn việc làm chất lượng tại TopViecLam
                                    </p>
                                </div>
                                <div class="btn-action">
                                    <a href="<%=request.getContextPath()%>/Post?action=danhsanhvieclam" target="_blank"
                                       class="btn btn-primary btn-primary-hover">Tìm việc ngay</a>
                                </div>
                            </div>
                            <div class="feed-jobs">
                            </div>
                        </div>
                        <% } %>
                        <% } %>
                        <div class="text-center">
                        </div>
                    </div>

                    <div class="box-group">
                        <div class="box-group-header">
                            <div class="box-group-title mb-12px">
                                Việc làm phù hợp với bạn
                            </div>
                            <%
                                List<Post> listpost = daoPost.getPostApprove();
                                for (Post p : listpost) {
                            %>
                            <div class="single-job-items mb-30">
                                <div class="job-items">
                                    <div class="company-img">
                                        <a href="<%=request.getContextPath()%>/Post?action=xemthongtinvieclam&id=<%=p.getId()%>"><img
                                                src="<%=request.getContextPath()%>/assets/img/icon/job-list1.png" alt="ảnh không được hiển thị"></a>
                                    </div>
                                    <div class="job-tittle job-tittle2">
                                        <a href="<%=request.getContextPath()%>/Post?action=xemthongtinvieclam&id=<%=p.getId()%>">
                                            <h4><%=p.getTitle()%>
                                            </h4>
                                        </a>
                                        <ul>
                                            <%--                    <li> ${dp.getAddressByCompanyID()}--%>
                                            <%--     </li>--%>
                                            <li>
                                                <%--         <i class="fas fa-map-marker-alt"></i>--%>
                                            </li>
                                            <li><%=p.getSalary()%> VNĐ</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="items-link items-link2 f-right">
                                    <a href="/Post_details?id=<%=p.getId()%>">
                                        <%=p.getType()%>
                                    </a>
                                    <%if (daoPost.dateToCreate(p.getCreateDate()) > 0) { %>
                                    <span><%=daoPost.dateToCreate(p.getCreateDate())%> ngày trước</span>
                                    <% } else { %>
                                    <span>Mới nhất</span>
                                    <% } %>
                                </div>
                            </div>
                            <% } %>
<%--                            <p>Để nhận được gợi ý việc làm chính xác hơn, hãy <a href=""--%>
<%--                                                                                 class="text-highlight config-suggest-btn">tùy--%>
<%--                                chỉnh cài đặt gợi ý việc làm</a>.</p>--%>
                        </div>
                        <div class="box-group-body">


<%--                            <% } %>--%>


                        </div>
                        <div class="text-center">
                            <a href="<%=request.getContextPath()%>/Post?action=danhsanhvieclam" target="_blank" class="btn btn-suggestion-more btn-primary-hover">
                                Xem tất cả
                            </a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</div>

<!--================Blog Area =================-->
<jsp:include page="../visitor/footter-candi.jsp"></jsp:include>
</body>
<!-- JS here -->

<!-- All JS Custom Plugins Link Here here -->
<script src="<%=request.getContextPath()%>/assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="<%=request.getContextPath()%>/assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/bootstrapost.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="<%=request.getContextPath()%>/assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="<%=request.getContextPath()%>/assets/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/slick.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/price_rangs.js"></script>

<!-- One Page, Animated-HeadLin -->
<script src="<%=request.getContextPath()%>/assets/js/wow.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/animated.headline.js"></script>

<!-- Scrollup, nice-select, sticky -->
<script src="<%=request.getContextPath()%>/assets/js/jquery.scrollUpost.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.nice-select.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.sticky.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.magnific-popupost.js"></script>

<!-- contact js -->
<script src="<%=request.getContextPath()%>/assets/js/contact.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.form.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.validate.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/mail-script.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.ajaxchimpost.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="<%=request.getContextPath()%>/assets/js/plugins.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>


</html>
