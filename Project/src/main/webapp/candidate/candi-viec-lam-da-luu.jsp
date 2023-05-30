<%-- Created by IntelliJ IDEA. --%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Post" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOPost" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Category" %>
 <%-- User: Admin
  Date: 05/01/2023
  Time: 6:53 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Date date = new Date();
    DAOPost daoPost = new DAOPost();

%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> Việc làm đã lưu </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="../assets/css/bootstrapost.min.css">
    <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../assets/css/price_rangs.css">
    <link rel="stylesheet" href="../assets/css/flaticon.css">
    <link rel="stylesheet" href="../assets/css/slicknav.css">
    <link rel="stylesheet" href="../assets/css/animate.min.css">
    <link rel="stylesheet" href="../assets/css/magnific-popupost.css">
    <link rel="stylesheet" href="../assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="../assets/css/themify-icons.css">
    <link rel="stylesheet" href="../assets/css/slick.css">
    <link rel="stylesheet" href="../assets/css/nice-select.css">
    <link rel="stylesheet" href="../assets/css/style.css">
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
<jsp:include page="../visitor/header-candi.jsp"></jsp:include>
<!--================Blog Area =================-->
<div id="main">
    <div class="container" id="box-save-job">
        <div class="row1">
            <div class="col-md-9x">
                <div class="box-white1">
                    <div class="banner">
                        <p class="description">Xem lại danh sách những việc làm mà bạn đã lưu trước đó. Ứng tuyển ngay để không bỏ lỡ cơ hội
                            nghề nghiệp dành cho bạn.</p>
                    </div>
                    <div class="empty">
                        <img src="https://www.topcv.vn/v4/image/empty.png" alt="Empty">
                        <p>Bạn chưa lưu công việc nào!</p>
                        <a href="<%=request.getContextPath()%>/Post?action=danhsanhvieclam" class="btn-seatch-job btn-primary-hover">Tìm việc ngay</a>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 flex1">
                <div class="blog_right_sidebar">
                    <aside class="single_sidebar_widget post_category_widget">
                        <h4 class="widget_title">Việc làm</h4>
                        <ul class="list cat-list">
                                <%
                                    for (Category c : daoPost.getCategoryAll()) { %>
                            <li>
                                <a href="#" class="d-flex">
                                    <a href="<%=request.getContextPath()%>/Category?action=category&id=<%=c.getid()%>&name=<%=c.getName()%>"><%=c.getName()%>
                                    </a>
                                    <p>(<%=daoPost.getPostofCategoryByID(c.getid()).size()%>)</p>
                                </a>
                            </li>
                        <%}%>
                    </aside>

                    <aside class="single_sidebar_widget popular_post_widget">
                        <h3 class="widget_title">Bài viết gần đây</h3>
                        <div class="media post_item">
                            <img src="../assets/img/post/post_1.png" alt="post">
                            <div class="media-body">
                                <a href="single-blog.html">
                                    <h3>Rộn ràng ngày hội Việc làm Công nghệ thông tin...</h3>
                                </a>
                                <p> 1 giờ trước</p>
                            </div>
                        </div>
                        <div class="media post_item">
                            <img src="../assets/img/post/post_2.png" alt="post">
                            <div class="media-body">
                                <a href="single-blog.html">
                                    <h3>Đẩy mạnh ứng dụng công nghệ thông tin</h3>
                                </a>
                                <p>2 giờ trước</p>
                            </div>
                        </div>
                        <div class="media post_item">
                            <img src="../assets/img/post/post_3.png" alt="post">
                            <div class="media-body">
                                <a href="single-blog.html">
                                    <h3>Thị trường hoạt động công nghệ thông tin...</h3>
                                </a>
                                <p>3 giờ trước</p>
                            </div>
                        </div>
                        <div class="media post_item">
                            <img src="../assets/img/post/post_4.png" alt="post">
                            <div class="media-body">
                                <a href="single-blog.html">
                                    <h3>Có thật công nghệ thông tin là vua của mọi loại nghề</h3>
                                </a>
                                <p>4 giờ trước</p>
                            </div>
                        </div>
                    </aside>
                    <aside class="single_sidebar_widget tag_cloud_widget">
                        <h4 class="widget_title">Tìm kiếm gần đây</h4>
                        <ul class="list">
                            <li>
                                <a href="#">PHP</a>
                            </li>
                            <li>
                                <a href="#">Java</a>
                            </li>
                            <li>
                                <a href="#">C++</a>
                            </li>
                            <li>
                                <a href="#">C#</a>
                            </li>
                            <li>
                                <a href="#">Lập trình viên</a>
                            </li>
                            <li>
                                <a href="#">Hệ thống thông tin</a>
                            </li>
                            <li>
                                <a href="#">An toàn mạng</a>
                            </li>
                            <li>
                                <a href="#">Trí tuệ nhân tạo</a>
                            </li>
                        </ul>
                    </aside>
                </div>
            </div>

        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        $(".option-item-sort").click(function(){
            $("#sort-advanced .option-item-sort").removeClass("active");
            $(this).addClass('active');
            $("input[name='sort']").val($(this).attr('sort-value'));
            $('#frm-search-job').submit();
        });
    })
</script> </div>
<!--================Blog Area =================-->
<jsp:include page="../visitor/footter-candi.jsp"></jsp:include>
</body>
<!-- JS here -->

<!-- All JS Custom Plugins Link Here here -->
<script src="../assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="../assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="../assets/js/popper.min.js"></script>
<script src="../assets/js/bootstrapost.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="../assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Range -->
<script src="../assets/js/owl.carousel.min.js"></script>
<script src="../assets/js/slick.min.js"></script>
<script src="../assets/js/price_rangs.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="../assets/js/wow.min.js"></script>
<script src="../assets/js/animated.headline.js"></script>
<script src="../assets/js/jquery.magnific-popupost.js"></script>

<!-- Scrollup, nice-select, sticky -->
<script src="../assets/js/jquery.scrollUpost.min.js"></script>
<script src="../assets/js/jquery.nice-select.min.js"></script>
<script src="../assets/js/jquery.sticky.js"></script>

<!-- contact js -->
<script src="../assets/js/contact.js"></script>
<script src="../assets/js/jquery.form.js"></script>
<script src="../assets/js/jquery.validate.min.js"></script>
<script src="../assets/js/mail-script.js"></script>
<script src="../assets/js/jquery.ajaxchimpost.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="../assets/js/plugins.js"></script>
<script src="../assets/js/main.js"></script>

</html>