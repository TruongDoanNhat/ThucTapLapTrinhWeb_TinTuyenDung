<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dinh Nguyen
  Date: 05/06/2023
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sidebar</title>
</head>
<body>
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
                    <a href="<%=request.getContextPath()%>/admin/PostManager?action=quanlybaidang">
                        <i class="icon-inbox"></i> Quản lý bài đăng
                    </a>
                </li>
                <li><a href="<%=request.getContextPath()%>/admin/Pay?action=quanlydoanhthu"><i
                        class="icon-inbox"></i> Quản lý doanh thu</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/AccountManager?action=accountManager"><i
                        class="icon-inbox"></i> Quản lý người dùng</a></li>
            </ul>
        </li>

        <li>
            <a href="<%=request.getContextPath()%>/admin/Statistics?action=adminThongke">
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
                <li><a href="<%=request.getContextPath()%>/admin/Contact?action=contact"><i
                        class="icon-inbox"></i> Liên hệ </a></li>
                <%--                                <li><a href=""><i class="icon-inbox"></i> Giới thiệu </a></li>--%>
                <%--                                <li><a href=""><i class="icon-inbox"></i> Quảng cáo </a></li>--%>
            </ul>
        </li>
    </ul>
    <ul class="widget widget-menu unstyled">
        <li>
            <a href='<c:url value="/Logout?action=logout"/>'>
                <i class="menu-icon icon-signout"></i>Đăng xuất
            </a>
        </li>
    </ul>
</div>
</body>
</html>
