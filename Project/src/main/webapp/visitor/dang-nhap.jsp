<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 31/12/2022
  Time: 4:47 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<% String message = (String) request.getAttribute("message"); %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <title>Đăng nhập</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/fontawesome-all.min.css">
</head>
<body>
<section>
    <div class="img-bg">
        <img src="../assets/img/log_in/img2.jpg" alt="">
    </div>

    <div class="noi-dung">
        <!-- Logo -->
        <div class="logo-log">
            <a href="#"><img src="../assets/img/logo/logo.png" alt=""></a>
        </div>
        <div class="form">
            <h2 class="in">Chào mừng bạn trở lại </h2>
            <%
                if (message != null) {
            %>
            <div style="width: 95%;
                                            height: calc(1.5em + 0.75rem + 2px);
                                            padding: 0.375rem 0.75rem;
                                            background: #E05E74; border-radius: 5px;
                                            border: 2px solid black">
                <label style="color: #4d0203;
                                                  font-size: 1rem;
                                                  font-weight: 400;
                                                  line-height: 1.5;">
                    <b> ERROR! </b> Đăng nhập thất bại. Tài khoản hoặc mật khẩu không đúng
                </label>
            </div>
            <%
                }
            %>
            <form action="<%=request.getContextPath()%>/Login" method="post">
                <div class="input-form">
                    <span>Tài khoản</span>
                    <input id="id" name="username" value="${cookie.username.value}" autofocus  onkeyup="daoNutDN()" style="width: 95%" type="text"
                           placeholder="Tài khoản" >
                </div>
                <div class="input-form">
                    <span>Mật khẩu</span>
                    <input id="pass" name="password" value="${cookie.password.value}" onkeyup="daoNutDN()" autocomplete="new-password" type="password"
                           style="width: 95%"
                           placeholder="Nhập mật khẩu">
                    <i class="fa fa-eye" onclick="daoTT()" style="position: relative; left: -40px;cursor: pointer;"></i>
                </div>
                <div class="nho-dang-nhap">
                    <label ><input type="checkbox" name="remember_me" id="remember_me" ${cookie.remember_me.value == 'true' ? 'checked' : ''}> Nhớ Đăng Nhập</label>
                </div>
                <div class="input-form">
                    <input type="submit" name="btndangnhap_candi" style="width: 95%" id="btndangnhap" value="Đăng Nhập">
                </div>
                <div class="container_swap">

                    <div class="div_left">
                        <p>Đăng ký cho <a class="in" href='<c:url value="/SignUp?action=business"/>'>Doanh nghiệp</a>/<a class="in" href='<c:url value="/SignUp?action=candidate"/>'>Người ứng tuyển</a>
                    </p>
                    </div>

                    <div class="div_right"><a class="in" href='<c:url value="/ResetPassword?action=forgotPassword"/>'>Quên mật khẩu</a></div>

                </div>
            </form>

        </div>
    </div>
</section>
</body>

<script>
    function daoNutDN() {
        var u = document.getElementById("id").value;
        var p = document.getElementById("pass").value;
        if (u.length > 0 && p.length > 0)
            document.getElementById("btndangnhap").disabled = false;
        else
            document.getElementById("btndangnhap").disabled = true;
    }
</script>
<script>
    function daoTT() {
        var mk = document.getElementById("pass");
        mk.type = (mk.type === "password") ? "text" : "password";
    }
</script>
</html>
