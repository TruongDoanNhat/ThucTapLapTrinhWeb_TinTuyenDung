<%@ page import="vn.edu.hcmuaf.fit.model.Account" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 03/01/2023
  Time: 3:59 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String email = request.getParameter("email");
  request.setAttribute("email", email);

%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
  <title>Quên mật khẩu</title>
  <link rel="stylesheet" type="text/css" href="../assets/css/login.css">
</head>
</head>
<body>
<section>
  <div class="img-bg">
    <img src="assets/img/log_in/img.png" alt="">
  </div>

  <div class="noi-dung">
    <!-- Logo -->
    <div class="logo-log">
      <a href="dang-nhap.jsp"><img src="../assets/img/logo/logo.png" alt=""></a>
    </div>
    <!-- Form -->
    <div class="form">
      <h2 class="in">Quên mật khẩu </h2>
      <form>
        <div id="modal">
          <!--set password -->
          <div >
            <br>
            <div class="input-form">
              <span>Mật khẩu</span>
              <input id="pass" name="password" onkeyup="daoNutDN()" type="password" class="input"
                     data-type="password"
                     placeholder="Nhập mật khẩu">
            </div>
            <div class="input-form">
              <span>Xác nhận mật khẩu</span>
              <input id="pass-again" name="password-again" onkeyup="daoNutDN()" type="password"
                     class="input"
                     data-type="password"
                     placeholder="Nhập lại mật khẩu ">
            </div>
            <div class="input-form">
              <input id="btndone" name="btndone-candi" type="submit" value="Đặt lại mật khẩu">
            </div>
          </div>

        </div>
      </form>
    </div>
  </div>
</section>

</body>
<%--<script>--%>
<%--  const btn_nhanma = document.getElementById('btnnhanma');--%>
<%--  const btn_datlaimk = document.getElementById('btndatlaimk');--%>
<%--  const btn_done = document.getElementById('btndone');--%>

<%--  const modal1 = document.getElementById('modal1');--%>
<%--  const modal2 = document.getElementById('modal2');--%>
<%--  const modal3 = document.getElementById('modal3');--%>


<%--  btn_nhanma.addEventListener("click", () => {--%>
<%--    modal1.classList.add("close");--%>
<%--    modal2.classList.remove("close");--%>
<%--    modal2.classList.add("show");--%>
<%--  });--%>
<%--  btn_datlaimk.addEventListener("click", () => {--%>
<%--    modal2.classList.remove("show");--%>
<%--    modal2.classList.add("close");--%>
<%--    modal3.classList.remove("close");--%>
<%--    modal3.classList.add("show");--%>
<%--  });--%>
<%--</script>--%>

</html>
