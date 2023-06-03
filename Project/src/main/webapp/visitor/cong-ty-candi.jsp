<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05/01/2023
  Time: 7:37 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title> Công ty </title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">
  <%@ page import="vn.edu.hcmuaf.fit.service.DAOPost" %>
  <%@ page import="vn.edu.hcmuaf.fit.model.Category" %>

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
<!-- Hero Area Start-->
<div class="slider-area ">
  <div class="single-slider section-overly slider-height2 d-flex align-items-center"
       data-background="assets/img/hero/about.jpg">
    <div class="container">
      <div class="row">
        <div class="col-xl-12">
          <div class="hero-cap text-center">
            <h2>Công ty</h2>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Hero Area End -->
<!--================Blog Area =================-->
<section class="blog_area single-post-area section-padding">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 posts-list">
        <div class="single-post">
          <div class="feature-img">
            <img src="https://static.topcv.vn/company_covers/cong-ty-co-phan-dau-tu-giao-duc-va-phat-trien-nguon-luc-quoc-te-pasal-e105dbf3fdc1a694fd162de8e301be9b-6099fe67ba6b6.jpg"
                 alt="Công ty Cổ Phần Đầu tư Giáo dục Và Phát triển Nguồn Lực Quốc Tế Pasal"
                 class="img-fluid"></div>
          <div class="blog_details">
            <h2>Công ty cổ phần Giáo dục và Phát triển nguồn nhân lực quốc tế PASAL
            </h2>
            <p class="excert">
              Công ty Cổ phần Đầu tư Giáo dục và Phát triển Nguồn lực Quốc tế PASAL được thành lập vào
              ngày 01/04/2015. Pasal là tổ chức đào tạo tiếng Anh duy nhất tại Việt Nam hợp tác ĐỘC QUYỀN
              với chuyên gia Paul Gruber (hệ thống Pronunciation Workshop) & TS A.J Hoge (hệ thống
              Effortless English) & chuyên gia Simon Corcoran (hệ thống IELTS).

              Tại Pasal, chúng tôi cam kết mang tới những giải pháp học uy tín và hiệu quả nhất thế giới -
              giúp bạn giao tiếp tiếng Anh trôi chảy từ 3-6 tháng Tổ chức giáo dục Pasal là nơi hội tụ của
              những người trẻ chứa đựng khát khao thay đổi tiếng Anh và tư duy của thế hệ trẻ Việt Nam để
              thành công trên con đường sự nghiệp đầy năng động và thách thức sau này. Họ đã tìm ra “Đam
              mê” đích thực của mình với sự nghiệp đào tạo tiếng Anh và sẻ chia giá trị cho các bạn Sinh
              viên Việt Nam với khát vọng to lớn về tương lai của đất nước và hình ảnh con người Việt Nam
              khắp bốn bể năm châu.

              Tầm nhìn Tổ chức giáo dục Pasal đặt ra mục tiêu sẽ trở thành tập đoàn giáo dục hàng đầu với
              sự hiện diện khắp Việt Nam và các nước Đông Nam Á Chúng tôi tin rằng với sức trẻ và sức bật
              mạnh mẽ của tuổi trẻ, các bạn có khả năng đưa đất nước của mình vươn xa hơn, cao hơn trên
              bản đồ thế giới. Để làm được điều đó, tiếng Anh là một trang bị không thể thiếu. Pasal xác
              định tầm nhìn như một đơn vị tiên phong mang đến trang bị tốt nhất, đồng thời truyền cảm
              hứng học tập và phát triển bản thân cho thế hệ nòng cốt trong tương lai.

              Sứ mệnh Sứ mệnh của Tổ chức Giáo dục Pasal đồng thời là tôn chỉ hành động xuyên suốt của
              chúng tôi chính là cung cấp các giải pháp giáo dục độc đáo, khác biệt và hiệu quả giúp giúp
              bạn tìm câu trả lời cho tất cả những câu hỏi nói trên và khơi nguồn đam mê tiếng Anh và tự
              tin giao tiếp trôi chảy sau 03-06 tháng học.
            </p>
          </div>
        </div>
        <!--Địa chỉ-->
        <div class="bg-white br-8 mt-20">
          <div class="section ">
            <div class="contact-section">
              <div class="section-header">
                <h2 class="section-title">Liên hệ</h2>
              </div>
              <div class="section-body">
                <div class="info">
                  <div class="company-logo">
                    <img src="https://cdn.topcv.vn/37/company_logos/cong-ty-co-phan-dau-tu-giao-duc-va-phat-trien-nguon-luc-quoc-te-pasal-5ad4093c6754b_rs.jpg" alt="" title="" class="company-image-logo">
                  </div>
                  <div class="company-name">
                    <h4>Công ty Cổ Phần Đầu tư Giáo dục Và Phát triển Nguồn Lực Quốc Tế Pasal <i class="fa-solid fa-circle-check color-premium"></i></h4>
                  </div>
                </div>
                <hr>
                <div class="content-contact">
                  <div class="info-line">
                    <i class="fa-solid ">Liên hệ: </i>
                    <a href="tel:0977619598">0977619598</a>
                  </div>
                  <div class="info-line">
                    <i class="fa-solid">Website: </i>
                    <span><a class="" href="http://pasal.edu.vn" target="_blank">http://pasal.edu.vn</a></span>
                  </div>
                  <div class="info-line">
                    <i class="fa-solid ">Địa chỉ: </i>
                    <span>Head Office Số 2, Ngõ 54 Phỗ Vũ Trọng Phụng, Thanh Xuân, Hà Nội.</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
      <div class="col-lg-4">
        <div class="blog_right_sidebar">

          <aside class="single_sidebar_widget post_category_widget">
            <h4 class="widget_title">Việc làm</h4>
            <ul class="list cat-list">
              <%
                DAOPost dp = new DAOPost();
                for (Category c : dp.getCategoryAll()) { %>
              <li>
                <div class="<%=c.getId()%>">
                  <h5>
                    <a href="<%=request.getContextPath()%>/Category?action=category&id=<%=c.getId()%>&name=<%=c.getName()%>"><%=c.getName()%>"
                    </a>
                  </h5>
                  <span>(<%=dp.getPostofCategoryByID(c.getId()).size()%>)</span>
                </div>
              </li>
              <li>
<%--                <a href="#" class="d-flex">--%>
<%--                  <p>Chuyên viên tư vấn mảng tuyển dụng</p>--%>
<%--                  <p>(5)</p>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--              <li>--%>
<%--                <a href="#" class="d-flex">--%>
<%--                  <p>Java Developer</p>--%>
<%--                  <p>(3)</p>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--              <li>--%>
<%--                <a href="#" class="d-flex">--%>
<%--                  <p>Fullstack Developer</p>--%>
<%--                  <p>(11)</p>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--              <li>--%>
<%--                <a href="#" class="d-flex">--%>
<%--                  <p>Lập trình viên PHP</p>--%>
<%--                  <p>(12)</p>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--              <li>--%>
<%--                <a href="#" class="d-flex">--%>
<%--                  <p>Nhân viên Lập trình.NetDeveloper</p>--%>
<%--                  <p>(9)</p>--%>
<%--                </a>--%>
<%--              </li>--%>
              <% }%>
            </ul>
          </aside>
          <aside class="single_sidebar_widget popular_post_widget">
            <h3 class="widget_title">Bài viết gần đây</h3>
            <div class="media post_item">
              <img src="<%=request.getContextPath()%>/assets/img/post/post_1.png" alt="post">
              <div class="media-body">
                <a href="single-blog.html">
                  <h3>Rộn ràng ngày hội Việc làm công nghệ thông tin...</h3>
                </a>
                <p>1 giờ trước</p>
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
                  <h3>Thị trường hoạt động công nghệ thông tin</h3>
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

      </div>
    </div>
  </div>
<%--</section>--%>
<!--================ Blog Area end =================-->
<jsp:include page="footter-candi.jsp"></jsp:include>
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

<!-- Jquery Slick , Owl-Carousel Range -->
<script src="<%=request.getContextPath()%>/assets/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/slick.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/price_rangs.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="<%=request.getContextPath()%>/assets/js/wow.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/animated.headline.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.magnific-popupost.js"></script>

<!-- Scrollup, nice-select, sticky -->
<script src="<%=request.getContextPath()%>/assets/js/jquery.scrollUpost.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.nice-select.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.sticky.js"></script>

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
