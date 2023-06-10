<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 05/01/2023
  Time: 7:36 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Title</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrapost.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slicknav.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/price_rangs.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/magnific-popupost.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/nice-select.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/responsive.css">
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
<jsp:include page="../visitor/header-candi.jsp"></jsp:include>
<main>
    <div data-v-c4f347a8="" class="container-fluid1 py-4" style="margin-top: 30px" >
        <div data-v-c4f347a8="" class="d-flex shadow-sm" >
            <div data-v-c4f347a8="">
                <div data-v-61ae721f="" data-v-c4f347a8="" class="list-group1 rounded">
                    <a data-v-61ae721f="" href="doi-mat-khau.html"
                       class="list-group-item list-group-item-action border-0  bg-white" >
                        <i data-v-61ae721f="" class="fa mr-2 fa-lock"></i> Đổi mật khẩu
                    </a>
                    <a data-v-61ae721f="" href="tai-khoan.html" aria-current="page"
                       class="list-group-item list-group-item-action border-0 nuxt-link-exact-active nuxt-link-active bg-none">
                        <i data-v-61ae721f="" class="fa mr-2 fa-user"></i> Thông tin cá nhân
                    </a>
                    <a data-v-61ae721f="" href="<%=request.getContextPath()%>/candidate/candi-tao-cv.jsp"
                       aria-current="page"
                       class="list-group-item list-group-item-action border-0 nuxt-link-exact-active nuxt-link-active bg-white">
                        <i data-v-61ae721f="" class="fa mr-2 fa-user"></i> Tạo CV
                    </a>
                    <a data-v-61ae721f="" href="<%=request.getContextPath()%>/candidate/CV?action=quanlycv"
                       aria-current="page"
                       class="list-group-item list-group-item-action border-0 nuxt-link-exact-active nuxt-link-active bg-white">
                        <i data-v-61ae721f="" class="fa mr-2 fa-user"></i> Quản lý CV
                    </a>
                </div>
            </div>
            <div data-v-c4f347a8="" class="bg-white w-100 rounded" >
                <!--               form -->
                <form data-v-c4f347a8="" >
                    <div data-v-c4f347a8="" class="">
                        <div data-v-c4f347a8="" class="card-header bg-white" style="border: none; box-shadow: none">
                            <h5> Đổi mật khẩu </h5>
                        </div>

                        <div data-v-c4f347a8="" class="card-body setting-form">

                            <div data-v-c4f347a8="" class="row">
                                <div data-v-c4f347a8="" class="form-group col-md-6">
                                    <label data-v-c4f347a8="">Nhập mật khẩu</label>
                                    <div data-v-8c64d55c="" data-v-c4f347a8="">
                                        <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                            <input data-v-8c64d55c="" id="ncSqdCYZxB" type="text"
                                                   placeholder="Nhập mật khẩu hiện tại" autocomplete="true"
                                                   class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-v-c4f347a8="" class="row">
                                <div data-v-c4f347a8="" class="form-group col-md-6">
                                    <label data-v-c4f347a8="">Nhập mật khẩu mới</label>
                                    <div data-v-8c64d55c="" data-v-c4f347a8="">
                                        <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                            <input data-v-8c64d55c="" type="text"
                                                   placeholder="Nhập mật khẩu mới" autocomplete="true"
                                                   class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-v-c4f347a8="" class="row">
                                <div data-v-c4f347a8="" class="form-group col-md-6">
                                    <label data-v-c4f347a8=""> Nhập lại mật khẩu </label>
                                    <div data-v-8c64d55c="" data-v-c4f347a8="">
                                        <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                            <input data-v-8c64d55c="" type="text"
                                                   placeholder=" Nhập lại mật khẩu" autocomplete="true"
                                                   class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-v-c4f347a8="" class="form-group mb-0">
                                <a data-v-c4f347a8="" href="/app/dashboard" class="btn head-btn1" style="background: crimson">Hủy</a>
                                <button data-v-c4f347a8="" type="submit" class="btn head-btn1"  style="background: #0e90d2">
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
<jsp:include page="footter-candi.jsp"></jsp:include>

</body>
</html>
