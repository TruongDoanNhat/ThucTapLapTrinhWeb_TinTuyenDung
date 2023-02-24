<%@ page import="vn.edu.hcmuaf.fit.service.DAOPost" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05/01/2023
  Time: 2:59 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% DAOPost dp = new DAOPost(); %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Việc làm</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../assets/css/slicknav.css">
    <link rel="stylesheet" href="../assets/css/price_rangs.css">
    <link rel="stylesheet" href="../assets/css/animate.min.css">
    <link rel="stylesheet" href="../assets/css/magnific-popup.css">
    <link rel="stylesheet" href="../assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="../assets/css/themify-icons.css">
    <link rel="stylesheet" href="../assets/css/slick.css">
    <link rel="stylesheet" href="../assets/css/nice-select.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/responsive.css">
</head>
<body>
<!-- Preloader Start -->
<div id="preloader-active">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
                <img src="../assets/img/logo/logo.png" alt="">
            </div>
        </div>
    </div>
</div>
<!-- Preloader Start -->
<jsp:include page="header-candi.jsp"></jsp:include>
<main>
    <%--    <c:forEach var="p" items="${listPOC}">--%>
    <!-- Breadcrumb Start-->

    <div class="ctn-breadcrumb-detail">
        <a href="/Home" class="text-highlight bold">Trang chủ</a> <i class="fa-solid fa-angle-right"></i>
        <a href="/Post" class="text-highlight bold">Việc làm</a> <i class="fa-solid fa-angle-right"></i>
        <span class="text-dark-blue">${postDetails.getTitle()}</span>
    </div>
    <!-- Breadcrumb End -->
    <!-- job post company Start -->
    <div class="job-post-company pt-120 pb-120">
        <div class="container">
            <div class="row justify-content-between">
                <!-- Left Content -->
                <div class="col-xl-7 col-lg-8">
                    <!-- job single -->
                    <div class="single-job-items mb-50">
                        <div class="job-items">
                            <div class="company-img company-img-details">
                                <a href="#"><img src="../assets/img/icon/job-list1.png" alt=""></a>
                            </div>
                            <div class="job-tittle">
                                <h4>${postDetails.getTitle()}</h4>
                                </a>
                                <ul>
<%--                                    <li> ${dp.getCompanyByUsername(postDetails.getUser_name()).getName()}</li>--%>
                                    <li><i class="fas fa-map-marker-alt"></i>Q9, HCM</li>
                                    <li>${postDetails.getSalary()} VNĐ</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- job single End -->

                    <div class="job-post-details">
                        <div class="post-details1 mb-50">
                            <br>

                            <!-- tab start -->
                            <div id="tab-company" class="container">
                                <ul class="nav nav-pills">
                                    <li class="active"><a href="#tab-info" data-toggle="tab">Mô tả công việc</a>
                                    </li>
                                    <li><a href="#t ">Thông tin công ty</a></li>
                                    <li><a href="#v">Việc làm liên quan</a></li>
                                </ul>
                            </div>
                            <!-- tab end -->
                            <br>


                            <!-- Small Section Tittle -->
                            <div id="t" class="small-section-tittle">
                                <h4>Mô tả công việc</h4>
                            </div>

                            <p>– Làm việc theo sự phân công của trưởng nhóm / quản lý dự án, phối hợp giữa các nhóm
                                để
                                phát triển sản.</p>
                            <p>– Tham gia các công đoạn tìm hiểu yêu cầu, phân tích, thiết kế, nghiên cứu công nghệ
                                khi
                                được phân công.</p>
                            <p>– Nghiên cứu công nghệ và phát triển sản phẩm.</p>
                        </div>
                        <div class="post-details2  mb-50">
                            <!-- Small Section Tittle -->
                            <div class="small-section-tittle">
                                <h4>Yêu cầu ứng viên</h4>
                            </div>
                            <ul>
                                <li> Lập trình các loại ngôn ngữ ( C#,Python, Nodejs, ReactJs......), CSDL MSSQL
                                    Server
                                    (2008, 2012).
                                </li>
                                <li>Kinh nghiệm tối thiểu 1 năm trở lên.</li>
                                <li>Ưu tiên người có kinh nghiệm làm việc trên hãng phầm mềm thứ ba: Mycrosoft
                                    Visual
                                    Studio.
                                </li>
                                <li>Có khả năng phân tích và thiết kế database.</li>
                                <li>Có các kỹ năng giao tiếp, sáng tạo và quan tâm đến trải nghiệm người dùng.</li>
                            </ul>
                        </div>
                        <div id="v" class="post-details2  mb-50">
                            <!-- Small Section Tittle -->
                            <div class="small-section-tittle">
                                <h4>Quyền lợi</h4>
                            </div>
                            <ul>
                                <li>Lương: Lương cứng + thưởng dự án.</li>
                                <li>Làm việc trong môi trường năng động, chuyên nghiệp có nhiều cơ hội thăng tiến.
                                </li>
                                <li>Cung cấp trang thiết bị đầy đủ để phục vụ công việc.</li>
                                <li>Được đóng BHXH, BHYT, BHTN.</li>
                                <li>Được hưởng các chính sách phúc lợi theo quy định của công ty.</li>
                                <li>Được đào tạo, nâng cao nghiệp vụ thường xuyên.</li>
                            </ul>
                        </div>
                    </div>

                </div>
                <!-- Right Content -->
                <div class="col-xl-4 col-lg-4">
                    <div class="post-details3  mb-50">
                        <!-- Small Section Tittle -->
                        <div class="small-section-tittle">
                            <h4>Tổng quan về công việc</h4>
                        </div>
                        <ul>
                            <li>Chức vụ : <span>${postDetails.getPosition()}</span></li>
                            <li>Hình thức làm việc : <span>${postDetails.getType_job()}</span></li>
                            <li>Địa điểm : <span>Hồ Chí Minh</span></li>
                            <li>Mức lương : <span>${postDetails.getSalary()} VNĐ</span></li>
                            <li>Hạn nộp hồ sơ : <span> 03/11/2020 </span></li>
<%--                            ${postDetails.getDeadline().toString()}--%>
                        </ul>
                        <div class="apply-btn2">
                            <a href="candi-viec-lam-da-ung-tuyen.jsp" class="btn">Nộp đơn</a>
                        </div>
                    </div>
                    <div class="post-details4  mb-50">
                        <!-- Small Section Tittle -->
                        <div class="small-section-tittle">
                            <h4><a href="#">Thông tin công ty</a></h4>
                        </div>
                        <span>Công ty TNHH Công nghệ và Truyền thông</span>
                        <p>Được thành lâp vào tháng 3 năm 2006 với tiền thân là một đội chuyên gia phần mềm và giải
                            pháp
                            viễn thông có kinh nghiệm từ Hàn Quốc. Chúng tôi đang từng bước đạt được uy tín và niềm
                            tin
                            từ khách hàng với những sản phẩm công nghệ hiện đại và phù hợp với các doanh nghiệp
                            trong
                            nước và các đối tác nước ngoài như Hàn Quốc , Nhật Bản , Trung Quốc</p>
                        <ul>
                            <li>Tên: <span>Công ty TNHH công nghệ và truyền thông </span></li>
                            <li>Web : <span>CNvsTT.com</span></li>
                            <li>Email: <span>CNvsTT@gmail.com</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- job post company End -->
    <%--    </c:forEach>--%>
</main>
<jsp:include page="footter-candi.jsp"></jsp:include>
</body>
<!-- JS here -->

<!-- All JS Custom Plugins Link Here here -->
<script src="../assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="../assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="../assets/js/popper.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="../assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Range -->
<script src="../assets/js/owl.carousel.min.js"></script>
<script src="../assets/js/slick.min.js"></script>
<script src="../assets/js/price_rangs.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="../assets/js/wow.min.js"></script>
<script src="../assets/js/animated.headline.js"></script>
<script src="../assets/js/jquery.magnific-popup.js"></script>

<!-- Scrollup, nice-select, sticky -->
<script src="../assets/js/jquery.scrollUp.min.js"></script>
<script src="../assets/js/jquery.nice-select.min.js"></script>
<script src="../assets/js/jquery.sticky.js"></script>

<!-- contact js -->
<script src="../assets/js/contact.js"></script>
<script src="../assets/js/jquery.form.js"></script>
<script src="../assets/js/jquery.validate.min.js"></script>
<script src="../assets/js/mail-script.js"></script>
<script src="../assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="../assets/js/plugins.js"></script>
<script src="../assets/js/main.js"></script>
</html>
