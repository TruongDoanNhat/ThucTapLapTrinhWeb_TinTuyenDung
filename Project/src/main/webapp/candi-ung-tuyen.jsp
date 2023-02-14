<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05/01/2023
  Time: 6:58 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Ứng tuyển</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="manifest" href="site.webmanifest">
  <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

  <!-- CSS here -->
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
  <link rel="stylesheet" href="assets/css/price_rangs.css">
  <link rel="stylesheet" href="assets/css/flaticon.css">
  <link rel="stylesheet" href="assets/css/slicknav.css">
  <link rel="stylesheet" href="assets/css/animate.min.css">
  <link rel="stylesheet" href="assets/css/magnific-popup.css">
  <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
  <link rel="stylesheet" href="assets/css/themify-icons.css">
  <link rel="stylesheet" href="assets/css/slick.css">
  <link rel="stylesheet" href="assets/css/nice-select.css">
  <link rel="stylesheet" href="assets/css/style.css">

  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
        rel="stylesheet">

  <!-- Main CSS-->
  <link rel="stylesheet" href="assets/css/main.css" media="all">
</head>
<body>
<jsp:include page="header-candi.jsp"></jsp:include>
<!-- Hero Area Start-->
<div class="slider-area ">
  <div class="single-slider section-overly slider-height2 d-flex align-items-center"
       data-background="assets/img/hero/about.jpg">
    <div class="container">
      <div class="row">
        <div class="col-xl-12">
          <div class="hero-cap text-center">
            <h2>Tạo ấn tượng với nhà tuyển dụng</h2>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Hero Area End -->
<!-- Start Sample Area -->
<section class="sample-text-area">
  <div class="container box_1170">
    <h3 class="text-heading">03 bước tạo ấn tượng với nhà tuyển dụng</h3>
    <p class="sample-text">
      <b>01 — Chọn mẫu CV phù hợp</b><br>
      Hãy chọn mẫu CV mà bạn ưng ý và phù hợp với bạn nhất nhé.
    </p>
    <p><b>02 — Cập nhật thông tin chi tiết</b><br>
      Chúng tôi sẽ tự động điền thông tin từ hồ sơ của bạn. Nếu thông tin có thay đổi, bạn cũng có thể cập nhật
      ngay tại đây nhé.
    </p>
    <p><b>03 — Tải CV và ứng tuyển</b><br>
      Sau khi hoàn thành, hãy <b>lưu ngay CV</b> trong hồ sơ tìm việc của bạn, hoặc <b>tải xuống miễn phí</b> dưới
      dạng PDF không có watermark.
    </p>
  </div>
</section>
<!-- End Sample Area -->

<!-- Start Align Area -->
<div class="page-wrapper bg-dark p-t-100 p-b-50">
  <div class="wrapper wrapper--w900">
    <div class="card card-6">
      <div class="card-heading">
        <h2 class="title">Upload CV</h2>
      </div>
      <div class="card-body">
        <form method="POST">

          <div class="form-row">
            <div class="name">Upload CV</div>
            <div class="value">
              <div class="input-group js-input-file">
                <input class="input-file" type="file" name="file_cv" id="file">
                <!--                                <label class="label&#45;&#45;file" for="file">Chọn tệp</label>-->
                <!--                                <span class="input-file__info">Không có tệp được chọn</span>-->
              </div>
              <div class="label--desc">Tải lên CV / Sơ yếu lý lịch của bạn hoặc bất kỳ tệp nào có liên
                quan. Kích thước tệp tối đa 50 MB
              </div>
            </div>
          </div>
        </form>
      </div>
      <div class="card-footer">
        <button class="button button--radius-2 button--blue-2" type="submit">Gửi đơn</button>
      </div>
    </div>
  </div>
</div>
<!-- End Align Area -->
<jsp:include page="footter-candi.jsp"></jsp:include>
</body>
<!-- JS here -->

<!-- All JS Custom Plugins Link Here here -->
<script src="assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Range -->
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/slick.min.js"></script>
<script src="assets/js/price_rangs.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="assets/js/wow.min.js"></script>
<script src="assets/js/animated.headline.js"></script>
<script src="assets/js/jquery.magnific-popup.js"></script>

<!-- Scrollup, nice-select, sticky -->
<script src="assets/js/jquery.scrollUp.min.js"></script>
<script src="assets/js/jquery.nice-select.min.js"></script>
<script src="assets/js/jquery.sticky.js"></script>

<!-- contact js -->
<script src="assets/js/contact.js"></script>
<script src="assets/js/jquery.form.js"></script>
<script src="assets/js/jquery.validate.min.js"></script>
<script src="assets/js/mail-script.js"></script>
<script src="assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="assets/js/plugins.js"></script>
<script src="assets/js/main.js"></script>
</html>
