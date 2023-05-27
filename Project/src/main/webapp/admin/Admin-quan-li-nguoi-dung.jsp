<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOAccount" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Account" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOCompany" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 10:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    DAOCompany daoCompany = new DAOCompany();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Nguời dùng</title>
    <link type="text/css" href="<%=request.getContextPath()%>/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="<%=request.getContextPath()%>/admin/bootstrap/css/bootstrap-responsive.min.css"
          rel="stylesheet">
    <link type="text/css" href="<%=request.getContextPath()%>/admin/css/theme.css" rel="stylesheet">
    <link type="text/css" href="<%=request.getContextPath()%>/admin/images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/quan-ly-bai-dang.css">
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
                        <h5 class="mb-0" style="font-size: 15px;">Quản lý người dùng</h5>
                    </div>
                    <form class="navbar-search pull-left input-append"
                          action="<%=request.getContextPath()%>/AccountManager?action=search" method="post">
                        <div style="right: 60px; position: absolute">
                            <input type="text" class="span3"  name="keywords" placeholder="Tìm kiếm theo tên, chức vụ">
                            <button class="btn" type="submit">
                                <i class="icon-search"></i>
                            </button>
                            <a href="<%=request.getContextPath()%>/admin/dang-ky-Admin.jsp" class="holder"
                               style="right: -165px; top:5px; position: absolute; outline: none">
                                <i class="icon-plus"></i>
                            </a>
                            <%--                        <button class="btn btn-smalls" style="outline: none">--%>
                            <%--                            <i class="icon-trash"></i>--%>
                            <%--                        </button>--%>
                        </div>
                        <select tabindex="1" data-placeholder="Vui lòng chọn.." name="role"
                                style="right: -72px;top: 0px; width: 123px">
                            <option selected="selected" value="3">Tất cả</option>
                            <option value="0">ADMIN</option>
                            <option value="1">CANDIDATE</option>
                            <option value="2">BUSINESS</option>
                        </select>
                        <%--                            <span class="info">Đăng tin</span>--%>
                    </form>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example" class="table table-striped table-bordered second"
                                   style="width:100%">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên người dùng</th>
                                    <th>Email</th>
                                    <th>Đối tượng</th>
                                    <th>Trạng thái</th>
                                    <th>Ngày tạo</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <% List<Account> listAccount = (List<Account>) request.getAttribute("listAccount");
                                    for (Account account : listAccount) {
                                        int role = account.getRole();
                                %>
                                <tr>
                                    <td><%=account.getId()%>
                                    </td>
                                    <td><%=account.getName()%>
                                    </td>
                                    <td><%=account.getEmail()%>
                                    </td>
                                    <%
                                        if (role == 2) {%>
                                    <td>
                                        <a style="font-weight: bold"
                                           href="<%=request.getContextPath()%>/CompanyManager?action=detailsCompany&id=<%=account.getCompanyId()%>"><%=account.getNameRole(role)%>
                                        </a>
                                        <br>
                                        <span>Công ty: <%=daoCompany.getCompany(account.getCompanyId()).getName()%></span>
                                    </td>
                                    <% } else {%>
                                    <td><%=account.getNameRole(role)%>
                                    </td>
                                    <% } %>
                                    <td><%=account.getNameStatus(account.getStatus())%>
                                    </td>
                                    <td>
                                        <%=account.getCreateDate()%>
                                    </td>
                                    <td>
                                        <div class="btn-group ml-auto">
                                            <% if (account.getStatus() == Account.LOCK) {%>
                                            <a href="<%=request.getContextPath()%>/AccountManager?action=unlock&username=<%=account.getUsername()%>"
                                               class="btn btn-sm btn-outline-light"
                                               style="padding-left: 20px;outline: none; background: #c27d86">
                                                <i class="icon-lock"></i>
                                            </a>
                                            <%} else {%>
                                            <a href="<%=request.getContextPath()%>/AccountManager?action=lock&username=<%=account.getUsername()%>"
                                               class="btn btn-sm btn-outline-light"
                                               style="padding-left: 20px;outline: none">
                                                <i class="icon-lock"></i>
                                            </a>
                                            <%}%>
                                            <%--                                            <button class="btn btn-sm btn-outline-light" style="outline: none">--%>
                                            <%--                                                <i class="icon-pencil"></i>--%>
                                            <%--                                            </button>--%>
                                            <%--                                            <button class="btn btn-sm btn-outline-light" style="outline: none">--%>
                                            <%--                                                <i class="icon-trash"></i>--%>
                                            <%--                                            </button>--%>
                                        </div>
                                    </td>
                                </tr>
                                <% } %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div style="margin: 0 auto; text-align: center;">
                    <!-- Hiển thị nút phân trang -->
                    <c:forEach begin="1" end="${soAccount}" var="t">
                        <a href="Account?action=accountManager&trang=${t}" class="btn btn-link">${t}</a>
                    </c:forEach>
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
<script src="<%=request.getContextPath()%>/admin/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/admin/scripts/jquery-ui-1.10.1.custom.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/admin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/admin/scripts/flot/jquery.flot.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/admin/scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/admin/scripts/datatables/jquery.dataTables.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/admin/scripts/common.js" type="text/javascript"></script>

</html>
