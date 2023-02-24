<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 03/01/2023
  Time: 6:45 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header</title>
</head>
<body>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                <i class="icon-reorder shaded"></i></a><a class="brand" href="Admin-trang-chu.jsp">Admin </a>
            <div class="nav-collapse collapse navbar-inverse-collapse">
                <!--                <form class="navbar-search pull-left input-append" action="#">-->
                <!--                    <input type="text" class="span3">-->
                <!--                    <button class="btn" type="button">-->
                <!--                        <i class="icon-search"></i>-->
                <!--                    </button>-->
                <!--                </form>-->
                <ul class="nav pull-right">
                    <ul class="nav nav-icons">
                        <!--                    <li class="active"><a href="#"><i class="icon-envelope"></i></a></li>-->
                        <li><a href="../candidate/trang-chu-candi.jsp"><i class="icon-eye-open"></i></a></li>
                        <li><a href=""><i class="icon-bell "></i></a>
                            <ul class="dropdown-menu dropdown-menu-end  px-2 py-3 me-sm-n4">
                                <li class="mb-2 font-weight-bold" style="text-align: center"><a href="#"> Đăng xuất</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> Cài đặt giao diện
                        <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Logo</a></li>
                            <li><a href="#">Màu sắc</a></li>
                            <li><a href="#">Ảnh</a></li>
                        </ul>
                    </li>
                    <li class="nav-user dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="images/user.png" class="nav-avatar"/>
                        <c:if test="${sessionScope.account == null}">
                            <span>User</span>
                        </c:if>
                        <c:if test="${sessionScope.account != null}">
                            <span> Xin chào ${sessionScope.account.username}</span>
                        </c:if>

                        <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Trang cá nhân</a></li>
                            <li><a href="#">Chỉnh sửa trang cá nhân</a></li>
                            <li><a href="#">Cài đặt tài khoản</a></li>

                            <li class="divider"></li>
                            <li><a href='<c:url value="/Home?action=logout"/>'>Đăng xuất</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.nav-collapse -->
        </div>
    </div>
    <!-- /navbar-inner -->
</div>
</body>
</html>
