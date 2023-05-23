<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 9:53 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Ứng viên</title>
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
                        <h5 class="mb-0">Quản lý ứng viên</h5>
                    </div>
                    <form class="navbar-search pull-left input-append" action="#">
                        <input type="text" style="height:30px" class="span3" placeholder="Tìm kiếm theo tên, chức vụ">
                        <button class="btn" type="submit">
                            <i class="icon-search"></i>
                        </button>
                        <a href="admin/dang-ky-Admin.jsp" class="holder"
                           style="right: -165px; top:5px; position: absolute; outline: none">
                            <i class="icon-plus"></i>
                        </a>
<%--                        <button class="btn btn-smalls" style="outline: none">--%>
<%--                            <i class="icon-trash"></i>--%>
<%--                        </button>--%>

                    </form>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example" class="table table-striped table-bordered second"
                                   style="width:100%">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên ứng viên</th>
                                    <th>Ngày sinh</th>
                                    <th>Giới tính</th>
                                    <th>Công việc</th>
                                    <th>Mô tả</th>
                                    <th>Chức năng</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Nguyễn Đình Nguyên</td>
                                    <td>06/02/2002</td>
                                    <td>Nam</td>
                                    <td class="cv">Front-end</td>
                                    <td class="mt">Tôi đang tìm kiếm một công việc với tư cách là nhà phát triển front-end để làm
                                        việc trong các dự án thú vị và đầy thử thách
                                    </td>
                                    <td>
                                        <div class="btn-group ml-auto">
                                            <button class="btn btn-sm btn-outline-light" style="outline: none">
                                                <i class="icon-pencil"></i>
                                            </button>
                                            <button class="btn btn-sm btn-outline-light" style="outline: none">
                                                <i class="icon-trash"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Trương Đoàn Nhất</td>
                                    <td>20/11/2000</td>
                                    <td>Nam</td>
                                    <td class="cv">Lập trình PHP</td>
                                    <td class="mt">Tôi đang tìm kiếm một công việc với tư cách là lập trình viên PHP để làm việc
                                        trong các dự án thú vị
                                    </td>
                                    <!--                                    <td>Quận 2, Tp.HCM, Việt Nam</td>-->
                                    <!--                                    <td class="col-blue">Đã duyệt</td>-->
                                    <td>
                                        <div class="btn-group ml-auto">
                                            <button class="btn btn-sm btn-outline-light" style="outline: none">
                                                <i class="icon-pencil"></i>
                                            </button>
                                            <button class="btn btn-sm btn-outline-light" style="outline: none">
                                                <i class="icon-trash"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Hồ Yến Nhi</td>
                                    <td>11/09/2000</td>
                                    <td>Nữ</td>
                                    <td class="cv"> Quản lý hệ thống nhân sự</td>
                                    <td class="mt">Tôi đang tìm kiếm một nhóm để thực hiện các dự án thú vị</td>
                                    <!--                                    <td>Quận 2, Tp.HCM, Việt Nam</td>-->
                                    <!--                                    <td class="col-blue">Đã duyệt</td>-->
                                    <td>
                                        <div class="btn-group ml-auto">
                                            <button class="btn btn-sm btn-outline-light" style="outline: none">
                                                <i class="icon-pencil"></i>
                                            </button>
                                            <button class="btn btn-sm btn-outline-light" style="outline: none">
                                                <i class="icon-trash"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Lê Hữu Phước</td>
                                    <td>24/12/2003</td>
                                    <td>Nam</td>
                                    <td class="cv">Thiết kế và chế tạo cơ khí</td>
                                    <td class="mt">Tôi muốn tìm kiếm thêm nhóm để thiết kế và chế tạo máy móc</td>
                                    <td>
                                        <div class="btn-group ml-auto">
                                            <button class="btn btn-sm btn-outline-light" style="outline: none">
                                                <i class="icon-pencil"></i>
                                            </button>
                                            <button class="btn btn-sm btn-outline-light" style="outline: none">
                                                <i class="icon-trash"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Lê Thị Hoa Hồng</td>
                                    <td>22/02/2002</td>
                                    <td>Nữ</td>
                                    <td class="cv"> Kỹ thuật điện tử viễn thông</td>
                                    <td class="mt">Tôi muốn làm nhân viên kinh doanh dich vụ viễn thông</td>
                                    <td>
                                        <div class="btn-group ml-auto">
                                            <button class="btn btn-sm btn-outline-light" style="outline: none">
                                                <i class="icon-pencil"></i>
                                            </button>
                                            <button class="btn btn-sm btn-outline-light" style="outline: none">
                                                <i class="icon-trash"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Nguyễn Thị Huệ</td>
                                    <td>06/11/1999</td>
                                    <td>Nữ</td>
                                    <td class="cv">Luật</td>
                                    <td class="mt">Tôi muốn làm luật sư để bào chữa hoặc biện hộ cho bị can</td>
                                    <td>
                                        <div class="btn-group ml-auto">
                                            <button class="btn btn-sm btn-outline-light" style="outline: none">
                                                <i class="icon-pencil"></i>
                                            </button>
                                            <button class="btn btn-sm btn-outline-light" style="outline: none">
                                                <i class="icon-trash"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
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
