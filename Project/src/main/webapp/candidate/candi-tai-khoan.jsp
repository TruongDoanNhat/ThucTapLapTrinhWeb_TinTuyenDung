<%@ page import="vn.edu.hcmuaf.fit.model.Account" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 01/01/2023
  Time: 10:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%  %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Tài khoản</title>
    <meta name=" description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrapost.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/flaticon.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/price_rangs.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slicknav.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/magnific-popupost.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/nice-select.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/tai-khoan.css">
</head>
<body>
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
<jsp:include page="../visitor/header-candi.jsp"></jsp:include>
<main>
    <div data-v-c4f347a8="" class="container-fluid1 py-4" style="margin-top: 30px">
        <div data-v-c4f347a8="" class="d-flex shadow-sm">
            <div data-v-c4f347a8="">
                <div data-v-61ae721f="" data-v-c4f347a8="" class="list-group1 rounded">
                    <a data-v-61ae721f="" href="<%=request.getContextPath()%>/visitor/doi-mat-khau-candi.jsp"
                       class="list-group-item list-group-item-action border-0 bg-none">
                        <i data-v-61ae721f="" class="fa mr-2 fa-lock"></i> Đổi mật khẩu
                    </a>
                    <a data-v-61ae721f="" href="<%=request.getContextPath()%>/candidate/candi-tai-khoan.jsp" aria-current="page"
                       class="list-group-item list-group-item-action border-0 nuxt-link-exact-active nuxt-link-active bg-white">
                        <i data-v-61ae721f="" class="fa mr-2 fa-user"></i> Thông tin cá nhân
                    </a>
                </div>
            </div>
            <div data-v-c4f347a8="" class="bg-white w-100 rounded">
                <!--               form -->
                <form action="Account" method="post">
                    <div data-v-c4f347a8="" class="">
                        <div data-v-c4f347a8="" class="card-header bg-white" style="border: none; box-shadow: none">
                            <h5> Thông tin cá nhân</h5>
                        </div>
                        <div data-v-c4f347a8="" class="card-body setting-form">
                            <div data-v-c4f347a8="" class="row">
                                <!--                                avt-->
                                <div data-v-c4f347a8="" class="form-group col-md-6">
                                    <div data-v-c4f347a8="" class="d-flex align-items-center">
                                        <label data-v-c4f347a8="" class="col-form-label mr-2"></label>
                                        <div data-v-2a31697a="" data-v-c4f347a8="" class="mr-2  avatar">
<%--                                            <c:if test="${sessionScope.account.img == null}">--%>
                                                <img src="../admin/images/user.png">
<%--                                            </c:if>--%>
<%--                                            <c:if test="${sessionScope.account.img != null}">--%>
<%--                                                <img src="${sessionScope.account.img}">--%>
<%--                                            </c:if>--%>
                                        </div>
                                        <div data-v-c4f347a8="">
                                            <%--                                            <div data-v-ea13fd1a="" data-v-c4f347a8="" class="file-upload mt-2 d-none1"--%>
                                            <%--                                                 type="file" name="avatar">--%>
                                            <%--                                                <div data-v-ea13fd1a="" class="mx-4">--%>
                                            <%--                                                    <span data-v-ea13fd1a="" class="text-muted">--%>
                                            <%--                                                        <span data-v-ea13fd1a="">Chọn hoặc kéo file vào đây</span>--%>
                                            <%--                                                    </span>--%>
                                            <%--                                                </div>--%>
                                            <%--                                                <input data-v-ea13fd1a="" id="avatar" type="file" accept="image/*">--%>
                                            <%--                                                <label data-v-ea13fd1a="" for="audio-file"--%>
                                            <%--                                                       class="btn btn-secondary text-primary btn-sm mt-2">--%>
                                            <%--                                                    <i data-v-ea13fd1a="" class="fas fa-upload"></i> Chọn file--%>
                                            <%--                                                </label>--%>
                                            <%--                                            </div>--%>
                                            <input data-v-c4f347a8="" type="text" name="avatar" class="d-none1">
                                            <%--                                            <button type="file" id="btndoiavartar" name="btndoiavartar"--%>
                                            <%--                                                    class="btn head-btn1"--%>
                                            <%--                                                    style="margin: 10px 50px; background: #0e90d2">--%>
                                            <%--                                               --%>
                                            <%--                                            </button>--%>
<%--                                                <form modelAttribute="modelClass" action="save" method="POST" enctype="multipart/form-data">--%>
<%--                                                    <div class="form-group">--%>
<%--                                                        <label for="img" class="btn head-btn1"--%>
<%--                                                               style="margin: 10px 60px; background: #0e90d2"> Đổi avatar</label>--%>
<%--                                                        <input type="file" id="img" path="productLandscapeImage" class="form-control" name="productLandscapeImage" title="Image"--%>
<%--                                                               style="margin: 10px 50px; visibility: hidden; cursor: pointer; color: orangered"--%>
<%--                                                               value=""/>--%>
<%--                                                    </div>--%>
<%--                                                </form>--%>

                                        </div>
                                    </div>
                                </div>
                                <!--                                avt end-->
                                <div data-v-c4f347a8="" class="row " style="width: 49%">
                                    <div data-v-c4f347a8="" class="form-group col-md-6">
                                        <div data-v-c4f347a8="" class="d-flex justify-content-between">
                                            <label data-v-c4f347a8="">Email</label>

                                        </div>
                                        <div class="">
                                            <input id="email" name="email" placeholder="Nhập email"
                                                   class="form-control hidden-spin-button"
                                                   value="${sessionScope.account.email}">
<%--                                            --%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-v-c4f347a8="" class="row">
                                <div data-v-c4f347a8="" class="form-group col-md-6">
                                    <label data-v-c4f347a8="">Họ và tên</label>
                                    <div data-v-8c64d55c="" data-v-c4f347a8="">
                                        <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                            <input id="name" name="name" type="text"
                                                   placeholder="Nhập họ và tên" autocomplete="true"
                                                   class="form-control" value="${sessionScope.account.name}">
                                        </div>
                                    </div>
                                </div>
                                <div data-v-c4f347a8="" class="form-group col-md-6">
                                    <label data-v-c4f347a8="">Giới tính</label>
                                    <div data-v-8c64d55c="" data-v-c4f347a8="">
                                        <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                            <select class="" id= "gen" name = "gen" >
                                                <c:if test="${sessionScope.account.gen == 1}">
                                                    <option> Nam</option>
                                                    <option> Nữ</option>
                                                </c:if>
                                                <c:if test="${sessionScope.account.gen == 2}">
                                                    <option> Nữ</option>
                                                    <option> Nam</option>
                                                </c:if>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div data-v-c4f347a8="" class="row">
                                <div data-v-c4f347a8="" class="form-group col-md-6">
                                    <label data-v-c4f347a8="">Số điện thoại</label>
                                    <div data-v-8c64d55c="" data-v-c4f347a8="">
                                        <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                            <input id="phone" name="phone" type="text"
                                                   placeholder="Nhập số điện thoại" autocomplete="true"
                                                   class="form-control" value="${sessionScope.account.phone}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-v-c4f347a8="" class="form-group mb-0">
                                <a data-v-c4f347a8="" href="/app/dashboard" class="btn head-btn1"
                                   style="background: crimson">Hủy</a>
                                <button id="btn" name="btn" type="submit" class="btn head-btn1"
                                        style="background: #0e90d2">
                                    Lưu
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
                <!--                end form-->
            </div>
        </div>
    </div>
</main>
<jsp:include page="../visitor/footter-candi.jsp"></jsp:include>

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

<!-- Jquery Slick , Owl-Carousel Plugins -->
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
