<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Post" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 9:29 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% List<Post> postAll = (List<Post>) request.getAttribute("postAll"); %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Việc làm mới</title>
    <link type="text/css" href="admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="admin/bootstrap/css/bootstrap-responsive.min.css"
          rel="stylesheet">
    <link type="text/css" href="admin/css/theme.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="admin/css/quan-ly-bai-dang.css">
    <link type="text/css" href="admin/images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
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
                        <h5 class="mb-0">Quản lý bài đăng</h5>
                        <form class="navbar-search pull-left input-append"
                              action="<%=request.getContextPath()%>/PostManager?action=search" method="post">
                            <div style="right: 60px; position: absolute">
                                <input name="keywords" type="text" style="height:30px" class="span3"
                                       placeholder="Tìm kiếm tên bài viết">
                                <button class="btn" type="submit">
                                    <i class="icon-search"></i>
                                </button>
                                <a href="business/busi-dang-tin.jsp" class="holder"
                                   style="right: -165px; top:5px; position: absolute; outline: none">
                                    <i class="icon-plus"></i>
                                </a>

                            </div>

                            <select tabindex="1" data-placeholder="Vui lòng chọn.." name="status"
                                    style="right: -72px;top: 0px; width: 123px">
                                <option selected="selected" value="0">Tất cả</option>
                                <option value="1">Chưa duyệt</option>
                                <option value="2">Đã duyệt</option>
                                <option value="3">Khóa</option>
                                <option value="4">Hết hạn</option>
                            </select>
<%--                            <span class="info">Đăng tin</span>--%>
                        </form>

                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example" class="table table-striped table-bordered second"
                                   style="width:100%">
                                <thead>
                                <tr>
                                    <th class="pb-20">STT</th>
                                    <th class="pb-20">Tên công việc</th>
                                    <th class="pb-20">Chức vụ</th>
                                    <th class="pb-20">Ngày đăng</th>
                                    <th class="pb-20">Ngày hết hạn</th>
                                    <th class="pb-20">Địa chỉ</th>
                                    <th class="pb-20">Trạng thái</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <% for (Post p : postAll) {
                                    switch (p.getStatus()) {
                                        case 1:
                                %>
                                <%--                 chưa duyệt--%>
                                <tr>
                                    <td><%=p.getId()%>
                                    </td>
                                    <td><%=p.getTitle()%>
                                    </td>
                                    <td><%=p.getRank()%>
                                    </td>
                                    <td><%=p.getCreateDate()%>
                                    </td>
                                    <td><%=p.getEndDate()%>
                                    </td>
                                    <td><%=p.getAddress()%>
                                    </td>
                                    <td class="col-yel">Chưa duyệt</td>
                                    <td>
                                        <div class="btn-group ml-auto">
                                            <a href="<%=request.getContextPath()%>/PostManager?action=approve&id=<%=p.getId()%>"
                                               class="btn btn-sm btn-outline-light"
                                               style="padding-left: 20px;outline: none">
                                                <i class="icon-check"></i>
                                            </a>
                                            <a href="<%=request.getContextPath()%>/PostManager?action=remove&id=<%=p.getId()%>"
                                               class="btn btn-sm btn-outline-light"
                                               style="padding-left: 20px;outline: none">
                                                <i class="icon-trash"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                <%--                 đã duyệt--%>
                                <%
                                        break;
                                    case 2:
                                %>
                                <tr>
                                    <td><%=p.getId()%>
                                    </td>
                                    <td><%=p.getTitle()%>
                                    </td>
                                    <td><%=p.getRank()%>
                                    </td>
                                    <td><%=p.getCreateDate()%>
                                    </td>
                                    <td><%=p.getEndDate()%>
                                    </td>
                                    <td><%=p.getAddress()%>
                                    </td>
                                    <td style="color: #1a9307">Đã duyệt</td>
                                    <td>
                                        <div class="btn-group ml-auto">
                                            <a href="<%=request.getContextPath()%>/PostManager?action=lock&id=<%=p.getId()%>"
                                               class="btn btn-sm btn-outline-light"
                                               style="padding-left: 20px;outline: none">
                                                <i class="icon-lock"></i>
                                            </a>
                                            <%--                                            <button class="btn btn-sm btn-outline-light"--%>
                                            <%--                                                    style="padding-left: 20px; outline: none">--%>
                                            <%--                                                <i class="icon-trash"></i>--%>
                                            <%--                                            </button>--%>
                                        </div>
                                    </td>
                                </tr>
                                <%
                                        break;
                                    case 3:
                                %>
                                <%--                  khóa --%>
                                <tr>
                                    <td><%=p.getId()%>
                                    </td>
                                    <td><%=p.getTitle()%>
                                    </td>
                                    <td><%=p.getRank()%>
                                    </td>
                                    <td><%=p.getCreateDate()%>
                                    </td>
                                    <td><%=p.getEndDate()%>
                                    </td>
                                    <td><%=p.getAddress()%>
                                    </td>
                                    <td class="col-grey">Khóa</td>
                                    <td>
                                        <div class="btn-group ml-auto">
                                            <a href="<%=request.getContextPath()%>/PostManager?action=approve&id=<%=p.getId()%>"
                                               class="btn btn-sm btn-outline-light"
                                               style="padding-left: 20px;outline: none">
                                                <i class="icon-check"></i>
                                            </a>
                                            <a href="<%=request.getContextPath()%>/PostManager?action=delete&id=<%=p.getId()%>"
                                               class="btn btn-sm btn-outline-light"
                                               style="padding-left: 20px;outline: none">
                                                <i class="icon-trash"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                <%
                                        break;
                                    case 4:
                                %>
                                <%--               hết hạn --%>
                                <tr>
                                    <td><%=p.getId()%>
                                    </td>
                                    <td><%=p.getTitle()%>
                                    </td>
                                    <td><%=p.getRank()%>
                                    </td>
                                    <td><%=p.getCreateDate()%>
                                    </td>
                                    <td><%=p.getEndDate()%>
                                    </td>
                                    <td><%=p.getAddress()%>
                                    </td>
                                    <td class="col-red">Hết hạn</td>
                                    <td>
                                        <div class="btn-group ml-auto">
                                            <a href="<%=request.getContextPath()%>/PostManager?action=delete&id=<%=p.getId()%>"
                                               class="btn btn-sm btn-outline-light"
                                               style="padding-left: 20px;outline: none">
                                                <i class="icon-trash"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                <%
                                        }
                                    }%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div style="margin: 0 auto; text-align: center;">
                    <!-- Hiển thị nút phân trang -->
                    <c:forEach begin="1" end="${sobd}" var="t">
                        <a href="Post?action=quanlybaidang&trang=${t}" class="btn btn-link">${t}</a>
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
<script src="admin/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="admin/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="admin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="admin/scripts/flot/jquery.flot.js" type="text/javascript"></script>
<script src="admin/scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
<script src="admin/scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="admin/scripts/common.js" type="text/javascript"></script>

</html>
