<%@ page import="vn.edu.hcmuaf.fit.model.CV" %>
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
<% List<CV> cvs = (List<CV>) request.getAttribute("cvList"); %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Tài khoản</title>
    <meta name=" description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/bootstrapost.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/flaticon.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/price_rangs.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/slicknav.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/magnific-popupost.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/nice-select.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/tai-khoan.css">
</head>
<body style ="background-color: #D5D5D5;
font-family: system-ui;">
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
                    <a data-v-61ae721f="" href="<%=request.getContextPath()%>/candidate/candi-tai-khoan.jsp"
                       aria-current="page"
                       class="list-group-item list-group-item-action border-0 nuxt-link-exact-active nuxt-link-active bg-white">
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
            <div data-v-c4f347a8="" class="bg-white w-100 rounded">
                <!--               form -->
                <div style="background-color: #E9E7EA;
    width:1000px;
    max-width: 100%;
    margin:auto;
    padding:50px;
    box-shadow: 0 10px 50px #858585;
    display: grid;
    grid-template-columns: 35% 65%;
    column-gap: 5%;
    row-gap: 30px;">
                    <div style="display: flex; justify-content: flex-start;
    align-items: center;">
                        <img src="https://i.pinimg.com/564x/eb/57/6f/eb576ff023487bcb1fa3ad61ee7b23ee.jpg" alt=""
                             style="width:200px;
    height:200px;
    object-fit: cover;
    border-radius: 50%;">
                    </div>
                    <div  >
                        <h1 style="font-weight: 300;
    font-size: xxx-large;
    margin:0px 0 5px ;">Thành Nghĩa</h1>
                        <div style="margin:0;
    font-weight: bold;
    letter-spacing: 3px;">Frond-End Developer
                        </div>
                        <ul style="padding:0;
    list-style: none;">
                            <li>
                <span style="display: inline-block;
    background-color: #000;
    width:20px;
    height:20px;
    color:#fff;
    text-align: center;
    border-radius: 50%;
    font-size: small;
    margin-right: 20px;">G</span> Nam
                            </li>
                            <li>
                <span style="display: inline-block;
    background-color: #000;
    width:20px;
    height:20px;
    color:#fff;
    text-align: center;
    border-radius: 50%;
    font-size: small;
    margin-right: 20px;">P</span> +84123456789
                            </li>
                            <li>
                <span style="display: inline-block;
    background-color: #000;
    width:20px;
    height:20px;
    color:#fff;
    text-align: center;
    border-radius: 50%;
    font-size: small;
    margin-right: 20px;">E</span> hohoang.dev@gmail.com
                            </li>
                        </ul>
                    </div>
                    <div >
                        <ul>
                            <li>From <b>HCMC</b> - VietNam</li>
                            <li>01/01/0101</li>
                            <li>AAAA University</li>
                        </ul>
                    </div>
                    <div style="margin:20px 0 10px;">
                        <h2>INTRODUCE MYSELT</h2>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit eligendi omnis quasi dolores modi
                        eius aliquam
                        ipsum soluta, dolore tenetur excepturi praesentium porro alias itaque enim labore qui
                        necessitatibus molestias
                        hic cum deserunt ab! Illum sed eveniet distinctio, alias sunt repudiandae labore a dolorum
                        tenetur? Harum
                        deleniti mollitia odio neque.
                    </div>
                    <div style="margin:20px 0 10px;">
                        <h2>EXPERIENCE</h2>

                        <div style="margin:20px 0 10px;">
                            <h4>Frond-end Developer</h4>
                            <div >
                                <span>2020 - 2022</span>
                                <span>ABC D company</span>
                            </div>
                            <div >
                                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Architecto accusantium officia
                                nobis quas
                                excepturi consectetur quidem quia est neque doloremque.
                            </div>
                        </div>

                        <div style="margin:20px 0 10px;">
                            <h4>Student</h4>
                            <div class="time">
                                <span>2015 - 2019</span>
                                <span>ACDC University</span>
                            </div>
                            <div class="des">
                                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Architecto accusantium officia
                                nobis quas
                                excepturi consectetur quidem quia est neque doloremque.
                            </div>
                        </div>
                        <h2 class="skills"  style="margin:20px 0 10px;">
                            SKILLS
                        </h2>
                        <ul>
                            <li>HTML</li>
                            <li>CSS</li>
                            <li>Bootstrap</li>
                            <li>Javascript</li>
                            <li>PHP</li>
                            <li>MySql</li>
                            <li>Git</li>
                            <li>Laravel</li>
                        </ul>

                    </div>
                    <div class="project">
                        <h2>PROJECTS</h2>
                        <div style="margin:20px 0 10px;">
                            <h4>Website shopping</h4>
                            <div >
                                2020
                            </div>
                            <div class="web">
                                www.lundevweb.com
                            </div>
                            <div class="location">
                                Frond-end Developer
                            </div>
                            <div class="des">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto consequatur amet sed, est
                                eum facilis
                                repellendus
                                atque perspiciatis iste porro nobis autem explicabo expedita fugiat nostrum. Eveniet eum
                                autem culpa!
                                <ul>
                                    <li>Lorem ipsum dolordolores.</li>
                                    <li>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Consequuntur,
                                        dolores.
                                    </li>
                                    <li>Lorem ipsum dolor sit amet consectetur dolores.</li>
                                </ul>
                            </div>
                        </div>

                        <div style="margin:20px 0 10px;">
                            <h4>Website shopping</h4>
                            <div class="time">
                                2020
                            </div>
                            <div class="web">
                                www.lundevweb.com
                            </div>
                            <div class="location">
                                Frond-end Developer
                            </div>
                            <div class="des">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto consequatur amet sed, est
                                eum facilis
                                repellendus
                                atque perspiciatis iste porro nobis autem explicabo expedita fugiat nostrum. Eveniet eum
                                autem culpa!
                                <ul>
                                    <li>Lorem ipsum dolordolores.</li>
                                    <li>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Consequuntur,
                                        dolores.
                                    </li>
                                    <li>Lorem ipsum dolor sit amet consectetur dolores.</li>
                                </ul>
                            </div>
                        </div>

                        <div style="margin:20px 0 10px;">
                            <h4>Website shopping</h4>
                            <div class="time">
                                2020
                            </div>
                            <div class="web">
                                www.lundevweb.com
                            </div>
                            <div class="location">
                                Frond-end Developer
                            </div>
                            <div class="des">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto consequatur amet sed, est
                                eum facilis
                                repellendus
                                atque perspiciatis iste porro nobis autem explicabo expedita fugiat nostrum. Eveniet eum
                                autem culpa!
                                <ul>
                                    <li>Lorem ipsum dolordolores.</li>
                                    <li>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Consequuntur,
                                        dolores.
                                    </li>
                                    <li>Lorem ipsum dolor sit amet consectetur dolores.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--                end form-->
            </div>
        </div>
    </div>
</main>
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
