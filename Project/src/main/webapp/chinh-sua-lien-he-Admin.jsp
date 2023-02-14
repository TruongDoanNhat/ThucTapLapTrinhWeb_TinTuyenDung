<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 4:08 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin | Cài đặt giao diện</title>
        <link type="text/css" href="admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="admin/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="admin/css/theme.css" rel="stylesheet">
        <link type="text/css" href="admin/images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
              rel='stylesheet'>
        <link rel="stylesheet" href="admin/css/chart.css">
        <script src="admin/scripts/chart.js"></script>
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
</head>
<body>
<jsp:include page="header-Admin.jsp"></jsp:include>
<!-- /navbar -->
<div class="wrapper">
    <div class="container">
        <div class="row">
            <div class="span3">

                <div class="sidebar">
                    <ul class="widget widget-menu unstyled">
                        <li class="active"><a href="trang-chu.html"><i class="menu-icon icon-dashboard"></i> Bảng điều
                            khiển
                        </a></li>
                        <li><a class="collapsed" data-toggle="collapse" href="#togglePages"><i
                                class="menu-icon icon-cogs">
                        </i><i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right">
                        </i> Quản lý </a>
                            <ul id="togglePages" class=" collapse unstyled">
                                <li><a href=""><i class="icon-inbox"></i> Quản lý bài đăng </a></li>
                                <li><a href=""><i class="icon-inbox"></i> Quản lý đơn ứng tuyển </a></li>
                                <li><a href=""><i class="icon-inbox"></i> Quản lý người dùng</a></li>
                            </ul>
                        </li>


                        <li>
                            <a href="baocao-thongke-Admin.jsp">
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
                    <h4> Chỉnh sửa trang liên hệ </h4>
                    <label> Địa chỉ: </label>
                    <input class="" type="text" name="phuong-tp" placeholder="Phường, quận, thành phố">
                    <input class="" type="text" name="khupho" placeholder="Số nhà, khu phố">
                    <label> Hotline: </label>
                    <input class="" type="text" name="hotline" placeholder="Nhập hotline">
                    <input class="" type="text" name="khunggio" placeholder="Thời gian làm việc">
                    <label> Email </label>
                    <input class="" type="email" name="phuong-tp" placeholder="">

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
<script src="admin/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="admin/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="admin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="admin/scripts/flot/jquery.flot.js" type="text/javascript"></script>
<script src="admin/scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
<script src="admin/scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="admin/scripts/common.js" type="text/javascript"></script>
</html>
