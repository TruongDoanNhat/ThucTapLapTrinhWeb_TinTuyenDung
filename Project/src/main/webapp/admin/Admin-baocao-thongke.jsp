<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 3:45 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin | Báo cáo - Thống kê</title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
              rel='stylesheet'>
        <link rel="stylesheet" href="admin/css/chart.css">
        <script src="scripts/chart.js"></script>
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
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
                            <a href="<%=request.getContextPath()%>/admin/Admin-trang-chu.jsp">
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
                                <li><a href="<%=request.getContextPath()%>/admin/Admin-quan-li-doanh-thu.jsp"><i
                                        class="icon-inbox"></i> Quản lý doanh thu</a></li>
                                <li><a href="<%=request.getContextPath()%>/admin/Admin-quan-li-nguoi-dung.jsp"><i
                                        class="icon-inbox"></i> Quản lý người dùng</a></li>
                            </ul>
                        </li>

                        <li>
                            <a href="<%=request.getContextPath()%>/admin/Admin-baocao-thongke.jsp">
                                <i class="menu-icon icon-tasks"></i> Báo cáo - thống kê
                            </a>
                        </li>
                        <li><a class="collapsed" data-toggle="collapse" href="#togglePages2"><i
                                class="menu-icon icon-cog">
                        </i><i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right">
                        </i> Cài đặt giao diện </a>
                            <ul id="togglePages2" class="collapse unstyled">
                                <%--                                <li><a href=""><i class="icon-inbox"></i> Màu sắc </a></li>--%>
                                <%--                                <li><a href=""><i class="icon-inbox"></i> Hình ảnh </a></li>--%>
                                <li><a href="<%=request.getContextPath()%>/admin/Admin-tin-tuc.jsp"><i
                                        class="icon-inbox"></i> Tin tức </a></li>
                                <li><a href="<%=request.getContextPath()%>/admin/Admin-chinh-sua-lien-he.jsp"><i
                                        class="icon-inbox"></i> Liên hệ </a></li>
                                <%--                                <li><a href=""><i class="icon-inbox"></i> Giới thiệu </a></li>--%>
                                <%--                                <li><a href=""><i class="icon-inbox"></i> Quảng cáo </a></li>--%>
                            </ul>
                        </li>
                    </ul>
                    <ul class="widget widget-menu unstyled">
                        <li><a href="'<c:url value="/Logout?action=logout"/>'"><i class="menu-icon icon-signout"></i>
                            Đăng xuất </a></li>
                    </ul>
                </div>
                <!--/.sidebar-->
            </div>
            <!--/.span3-->
            <div class="span9">
                <div class="content">
                    <h3> Thống kê</h3>
                    <div>
                        Năm
                        <select>
                            <option>2022</option>
                        </select>
                    </div>
                    <table class="table table-bordered bg">
                        <thead>
                        <tr>
                            <th>Tháng</th>
                            <th>Bài đăng tuyển</th>
                            <th>Người ứng tuyển</th>
                            <th>Doanh thu</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>30</td>
                            <td>300</td>
                            <td>15.000.000 VND</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>20</td>
                            <td>100</td>
                            <td>5.000.000 VND</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>70</td>
                            <td>800</td>
                            <td>50.000.000 VND</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>30</td>
                            <td>300</td>
                            <td>15.000.000 VND</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>20</td>
                            <td>100</td>
                            <td>5.000.000 VND</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>70</td>
                            <td>800</td>
                            <td>50.000.000 VND</td>
                        </tr>
                        </tbody>
                    </table>
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
