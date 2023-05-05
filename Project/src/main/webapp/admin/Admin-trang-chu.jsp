<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 3:04 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin | Bảng điều khiển</title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
              rel='stylesheet'>
    </head>
</head>
<body>
<jsp:include page="Admin-header.jsp"></jsp:include>
<!-- /navbar -->
<div class="wrapper">
    <div class="container">
        <div class="row">
            <div class="span3">

                <div class="sidebar">
                    <ul class="widget widget-menu unstyled">
                        <li>
                            <a href="Admin-trang-chu.jsp">
                                <i class="menu-icon icon-dashboard"></i> Bảng điều khiển
                            </a>
                        </li>
                        <li><a class="collapsed" data-toggle="collapse" href="#togglePages"><i
                                class="menu-icon icon-cogs">
                        </i><i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right">
                        </i> Quản lý </a>
                            <ul id="togglePages" class=" collapse unstyled">
                                <li>
                                    <a href='<c:url value="/PostManager?action=quanlybaidang"/>'>
                                        <i class="icon-inbox"></i> Quản lý bài đăng
                                    </a>
                                </li>
                                <li><a href=""><i class="icon-inbox"></i> Quản lý đơn ứng tuyển </a></li>
                                <li><a href=""><i class="icon-inbox"></i> Quản lý người dùng</a></li>
                            </ul>
                        </li>

                        <li>
                            <a href="Admin-baocao-thongke.jsp">
                                <i class="menu-icon icon-tasks"></i> Báo cáo - thống kê
                            </a>
                        </li>


                        <li><a class="collapsed" data-toggle="collapse" href="#togglePages2"><i
                                class="menu-icon icon-cog">
                        </i><i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right">
                        </i> Cài đặt giao diện </a>
                            <ul id="togglePages2" class="collapse unstyled">
                                <li><a href=""><i class="icon-inbox"></i> Màu sắc </a></li>
                                <li><a href=""><i class="icon-inbox"></i> Hình ảnh </a></li>
                                <li><a href=""><i class="icon-inbox"></i> Tin tức </a></li>
                                <li><a href=""><i class="icon-inbox"></i> Liên hệ </a></li>
                                <li><a href=""><i class="icon-inbox"></i> Giới thiệu </a></li>
                                <li><a href=""><i class="icon-inbox"></i> Quảng cáo </a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="widget widget-menu unstyled">

                        <li><a href="#"><i class="menu-icon icon-signout"></i> Đăng xuất </a></li>
                    </ul>

                </div>

                <!--/.sidebar-->
            </div>
            <!--/.span3-->
            <div class="span9">
                <div class="content">
                    <div class="btn-controls">
                        <div class="btn-box-row row-fluid">
                            <a href="#" class="btn-box big span4"><i class=" menu-icon icon-bullhorn"></i><b>10</b>
                                <p class="text-muted"> Bài đăng mới</p>
                            </a><a href="#" class="btn-box big span4"><i class="icon-group"></i><b>76</b>
                            <p class="text-muted">
                                Đơn ứng tuyển mới </p>
                        </a><a href="#" class="btn-box big span4"><i class="menu-icon icon-paste"></i><b>100</b>
                            <p class="text-muted">
                                Doanh thu </p>
                        </a>
                        </div>
                    </div>
                    <div class="module">
                        <div class="module-head">
                            <h3>
                                Chart - flot</h3>
                        </div>
                        <div class="module-body">
                            <div class="chart">
                                <div id="placeholder" class="graph" href="">
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>
        <!--/.content-->
    </div>
    <!--/.span9-->
</div>
</div>
<!--/.container-->
</div>
<!--/.wrapper-->

</body>
<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
<script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
<script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="scripts/common.js" type="text/javascript"></script>

</html>
