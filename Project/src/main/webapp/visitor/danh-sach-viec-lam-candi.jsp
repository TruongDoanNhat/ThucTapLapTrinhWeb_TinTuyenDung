<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Post" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOPost" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.control.UtilSession" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05/01/2023
  Time: 4:16 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% DAOPost dp = new DAOPost();
    List<Post> post = (List<Post>) request.getAttribute("postAll");

%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Danh sách việc làm</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/img/favicon.ico">

    <!-- CSS here -->

    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrapost.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/price_rangs.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/flaticon.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/slicknav.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/animate.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/magnific-popupost.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/themify-icons.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/slick.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/nice-select.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">

</head>
<body>
<!-- Preloader Start -->
<div id="preloader-active">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
                <img src="<%=request.getContextPath()%>/assets/img/logo/logo.png" alt="">
            </div>
        </div>
    </div>
</div>
<!-- Preloader Start -->
<jsp:include page="header-candi.jsp"></jsp:include>
<main>

    <!-- Hero Area Start-->
    <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center"
             data-background="<%=request.getContextPath()%>/assets/img/hero/about.jpg"style="background-image: url(<%=request.getContextPath()%>/assets/img/hero/about.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Việc làm</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero Area End -->
    <!-- Job List Area Start -->


    <div class="job-listing-area pt-120 pb-120">
        <div class="container">
            <div class="row">
                <!-- Left content -->
                <div class="col-xl-3 col-lg-3 col-md-4 padding-left">
                    <div class="row">
                        <div class="col-12">
                            <div class="small-section-tittle2 mb-45">
                                <h4>Lọc việc làm</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Job Category Listing start -->
                    <div class="job-category-listing mb-50">
                        <!-- single one -->
                        <div class="single-listing">
                            <div class="small-section-tittle2">
                                <h4> Danh mục </h4>
                            </div>
                            <!-- Select job items start -->
                            <div class="">
                                <select name="select">
                                    <option value="">Việc làm</option>
                                    <option value="">Kĩ thuật mạng</option>
                                    <option value="">Thiết kế UI/UX</option>
                                    <option value="">AI</option>
                                    <option value="">Lập trình game</option>
                                </select>
                            </div>
                            <!--  Select job items End-->
                            <!-- select-Categories start -->
                            <div class="select-Categories pt-80 pb-50">
                                <div class="small-section-tittle2">
                                    <h4>Hình thức làm việc</h4>
                                </div>
                                <label class="container">Toàn thời gian
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">Bán thời gian
                                    <input type="checkbox" checked="checked active">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">Thực tập
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <!-- select-Categories End -->
                        </div>
                        <!-- single two -->
                        <div class="single-listing">

                            <!-- Select job items start -->
                            <!--  Select job items End-->
                            <!-- select-Categories start -->
                            <div class="select-Categories pt-80 pb-50" >
                                <div class="small-section-tittle2">
                                    <h4>Kinh nghiệm</h4>
                                </div>
                                <label class="container">1-2 Năm
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">2-3 Năm
                                    <input type="checkbox" checked="checked active">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">3-6 Năm
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">>6 Năm
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <!-- select-Categories End -->
                        </div>
                        <!-- single three -->
                        <div class="single-listing">
                            <!-- select-Categories start -->

                            <!-- select-Categories End -->
                        </div>
                        <div class="single-listing">
                            <!-- Range Slider Start -->
                            <aside class="left_widgets p_filter_widgets price_rangs_aside sidebar_box_shadow">
                                <div class="small-section-tittle2">
                                    <h4>Mức lương</h4>
                                </div>
                                <div class="widgets_inner">
                                    <div class="range_item">
                                        <div class="d-flex align-items-center">
                                            <div class="price_text">
                                                <select name="select">
                                                    <option value=""> < 10 triệu</option>
                                                    <option value=""> 10 - 15 triệu</option>
                                                    <option value=""> 15 - 20 triệu</option>
                                                    <option value=""> 20 - 25 triệu</option>
                                                    <option value=""> > 25 triệu</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </aside>
                            <!-- Range Slider End -->
                        </div>
                    </div>
                    <!-- Job Category Listing End -->
                </div>
                <!-- Right content -->
                <div class="col-xl-9 col-lg-9 col-md-8">
                    <!-- Featured_job_start -->
                    <section class="featured-job-area">
                        <div class="container">
                            <!-- Count of Job list Start -->
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="count-job mb-35">
                                        <span><%=dp.getPostAllApproveSize()%> việc làm được tìm thấy</span>
                                        <!-- Select job items start -->
                                        <div class="select-job-items">

                                        </div>
                                        <!--  Select job items End-->
                                    </div>
                                </div>
                            </div>
                            <!-- Count of Job list End -->

                            <div class="container">

                                <%


                                    for (Post p : post) {
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
                                        <a href="<%=request.getContextPath()%>/Post?action=xemthongtinvieclam&id=<%=p.getId()%>">
                                            <%=p.getType()%>
                                        </a>
                                        <%if (dp.dateToCreate(p.getCreateDate()) > 0) { %>
                                        <span><%=dp.dateToCreate(p.getCreateDate())%> ngày trước</span>
                                        <% } else { %>
                                        <span>Mới nhất</span>
                                        <% } %>
                                    </div>
                                </div>
                                <% } %>
                            </div>
                        </div>
                    </section>
                    <!-- Featured_job_end -->
                </div>
            </div>
        </div>
        <!-- Phân trang -->
<%--        <div style="margin: 0 auto; text-align: center;">--%>
<%--            <%--%>
<%--                if (request.getAttribute("trang") != null || request.getAttribute("sobd") != null) {--%>
<%--                    int sobd = (int) request.getAttribute("sobd");--%>
<%--                    int t = (int) request.getAttribute("trang");--%>
<%--                    for (int pageNumber = t - 2; pageNumber <= t + 2; pageNumber++) { // Lặp qua 5 trang gần trang hiện tại (2 trang trước và 2 trang sau)--%>
<%--                        if (pageNumber >= 1 && pageNumber <= sobd) { // Kiểm tra xem trang có nằm trong phạm vi từ 1 đến tổng số trang hay không--%>
<%--                            if (pageNumber == t) { // Kiểm tra xem đây có phải là trang hiện tại hay không--%>
<%--            %>--%>
<%--            <span class="page-item active"><%= pageNumber %></span> <!-- Hiển thị số trang hiện tại -->--%>
<%--            <% } else { // Nếu không phải là trang hiện tại--%>
<%--                if (request.getAttribute("categoryId") == null) {--%>
<%--            %>--%>
<%--            <!-- Tạo liên kết đến trang khác -->--%>
<%--            <a href="Post?action=danhsanhvieclam&trang=<%= pageNumber %>"--%>
<%--               class="page-link"><%= pageNumber %>--%>
<%--            </a>--%>
<%--            <% } else {%>--%>
<%--            <a href="Post?action=search&trang=<%= pageNumber %>&categoryId=<%=request.getAttribute("categoryId")%>"--%>
<%--               class="page-link"><%= pageNumber %>--%>
<%--            </a>--%>
<%--            <% } %>--%>
<%--            <% } %>--%>
<%--            <% } %>--%>
<%--            <% } %>--%>
<%--            <% } %>--%>
<%--        </div>--%>
    </div>
    <!-- Job List Area End -->
    <!--Pagination Start -->
    <div class="pagination-area pb-115 text-center">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="single-wrap d-flex justify-content-center">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-start">
                                <%
                                    if (request.getAttribute("trang") != null || request.getAttribute("sobd") != null) {
                                        int sobd = (int) request.getAttribute("sobd");
                                        int t = (int) request.getAttribute("trang");
                                        for (int pageNumber = t - 2; pageNumber <= t + 2; pageNumber++) { // Lặp qua 5 trang gần trang hiện tại (2 trang trước và 2 trang sau)
                                            if (pageNumber >= 1 && pageNumber <= sobd) { // Kiểm tra xem trang có nằm trong phạm vi từ 1 đến tổng số trang hay không
                                                if (pageNumber == t) { // Kiểm tra xem đây có phải là trang hiện tại hay không
                                %>
                                <li class="page-item active"><a class="page-link" href=""><%= pageNumber %></a></li>
                                <% } else { // Nếu không phải là trang hiện tại
                                    if (request.getAttribute("categoryId") == null) {
                                %>
                                <li class="page-item"><a class="page-link" href="Post?action=danhsanhvieclam&trang=<%= pageNumber %>"><%= pageNumber %></a></li>
                                <% } else {%>
                                <li class="page-item"><a class="page-link"href="Post?action=timkiem&trang=<%= pageNumber %>&categoryId=<%=request.getAttribute("categoryId")%>"><%= pageNumber %></a></li>
                                <% } %>
                                <% } %>
                                <% } %>
                                <% } %>
                                <% } %>
                               <li class="page-item"><a class="page-link" href="#"><span class="ti-angle-right"></span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Pagination End -->

</main>
<jsp:include page="footter-candi.jsp"></jsp:include>
</body>
<!-- JS here -->

<!-- All JS Custom Plugins Link Here here -->
<script src="<%=request.getContextPath()%>/assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->

<script src="<%=request.getContextPath()%>/assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>

<!-- Jquery Mobile Menu -->
<script src="<%=request.getContextPath()%>/assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Range -->
<script src="<%=request.getContextPath()%>/assets/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/slick.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/price_rangs.js"></script>
<!-- One Page, Animated-HeadLin -->

<script src="<%=request.getContextPath()%>/assets/js/wow.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/animated.headline.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.magnific-popup.js"></script>

<!-- Scrollup, nice-select, sticky -->
<script src="<%=request.getContextPath()%>/assets/js/jquery.scrollUp.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.nice-select.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.sticky.js"></script>

<!-- contact js -->
<script src="<%=request.getContextPath()%>/assets/js/contact.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.form.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.validate.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/mail-script.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.ajaxchimp.min.js"></script>


<!-- Jquery Plugins, main Jquery -->
<script src="<%=request.getContextPath()%>/assets/js/plugins.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>

</html>
