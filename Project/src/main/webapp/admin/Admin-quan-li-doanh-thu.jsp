<%@ page import="vn.edu.hcmuaf.fit.service.modelQuanLy.QuanLyDoanhThu" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 9:53 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% List<QuanLyDoanhThu> listDoanhThu = (List<QuanLyDoanhThu>) request.getAttribute("listDoanhThu");%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Quản lý doanh thu </title>
    <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link type="text/css" href="css/theme.css" rel="stylesheet">
    <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
    <link rel="stylesheet" href="css/quan-ly-bai-dang.css">
</head>
<body>
<jsp:include page="Admin-header.jsp"></jsp:include>
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
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0">Quản lý doanh thu</h5>
                    </div>
                    <form class="navbar-search pull-left input-append"
                          action="<%=request.getContextPath()%>/admin/Pay?action=quanlydoanhthu" method="post">
                        <%--                        <input type="text" style="height:30px" class="span3" name="keywords" placeholder="Tìm kiếm">--%>
                        <input style="height:30px; width: 130px;" type="month" min="2010-01" max="" id="inputTime"
                               class="span3" name="keywords"/>
                        <select tabindex="1" data-placeholder="Vui lòng chọn.." name="statusSearch"
                                style="right: 0px;top: 0px; width: 123px">
                            <option selected="selected" value="3">Tất cả</option>
                            <option value="1">Đã xem</option>
                            <option value="0">Chưa xem</option>
                        </select>
                        <script>
                            var now = new Date();
                            var maxDate = now.getFullYear() + '-0' + (now.getMonth() + 1)
                            document.getElementById("inputTime").setAttribute("max", maxDate);
                        </script>
                        <button class="btn" type="submit">
                            <i class="icon-search"></i>
                        </button>

                    </form>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example" class="table table-striped table-bordered second"
                                   style="width:100%">
                                <thead>
                                <tr>
                                    <th>Tên người dùng</th>
                                    <th>Số tài khoản</th>
                                    <th>Số bài đăng</th>
                                    <th>Tổng tiền</th>
                                    <th>Ngày thanh toán</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <% if (listDoanhThu != null || listDoanhThu.size() > 0) {
                                    for (QuanLyDoanhThu doanhThu : listDoanhThu) { %>
                                <tr>
                                    <td><%=doanhThu.getName()%>
                                    </td>
                                    <td><%=doanhThu.getNumAccount()%>
                                    </td>
                                    <td><%=doanhThu.getSoBai()%>
                                    </td>
                                    <td class="cv"><%=doanhThu.getMoney()%> VND</td>
                                    <td class="mt"><%=doanhThu.getCreateDate()%>
                                    </td>
                                    <td class="mt">
                                        <div class="btn-group ml-auto" style="width: 10px">
                                            <% if (doanhThu.getStatus() == 1) { %>
                                            <a href="<%=request.getContextPath()%>/business/Post?action=tintuyendung&billID=<%=doanhThu.getId()%>"
                                               class="btn btn-sm btn-outline-light" style="outline: none">
                                                <i class="icon-eye-open" style="right: 5px;"></i>
                                            </a>
                                            <% } else { %>
                                            <a href="<%=request.getContextPath()%>/business/Post?action=tintuyendung&billID=<%=doanhThu.getId()%>"
                                               class="btn btn-sm btn-outline-light"
                                               style="outline: none;background: #8ff118;">
                                                <i class="icon-eye-open" style="right: 5px;"></i>
                                            </a>
                                            <% }%>
                                        </div>
                                    </td>
                                </tr>
                                <%
                                        }
                                    }
                                %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end data table  -->
            <!-- ============================================================== -->
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
