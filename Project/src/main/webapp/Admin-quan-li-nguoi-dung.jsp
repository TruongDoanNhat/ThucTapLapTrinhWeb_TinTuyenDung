<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 10:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Nguời dùng</title>
    <link type="text/css" href="admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="admin/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link type="text/css" href="admin/css/theme.css" rel="stylesheet">
    <link type="text/css" href="admin/images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
    <link rel="stylesheet" href="admin/css/quan-ly-bai-dang.css">
</head>
<body>
<jsp:include page="Admin-header.jsp"></jsp:include>
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
            </div>
            <!--/.span3-->
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0">Quản lý người dùng</h5>
                    </div>
                    <form class="navbar-search pull-left input-append" action="#">
                        <input type="text" class="span3" placeholder="Tìm kiếm theo tên, chức vụ">
                        <button class="btn" type="button">
                            <i class="icon-search"></i>
                        </button>

                        <button class="btn btn-small" style="outline: none">
                            <i class="icon-plus"></i>
                        </button>

                        <button class="btn btn-smalls" style="outline: none">
                            <i class="icon-trash"></i>
                        </button>

                    </form>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example" class="table table-striped table-bordered second"
                                   style="width:100%">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên người dùng</th>
                                    <th>Đối tượng</th>
                                    <th>Số điện thoại</th>
                                    <th>Email</th>
                                    <th>Chức năng</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Lê Hữu Phước</td>
                                    <td>Doanh nghiệp</td>
                                    <td>0384748409</td>
                                    <td>lhphuoc602@gmail.com</td>
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
                                    <td>Doanh nghiệp</td>
                                    <td>0346966814</td>
                                    <td>tdnhat2011@gmail.com</td>
                                    <td>
                                        <div class="btn-group ml-auto" >
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
                                    <td>Nguyễn Đình Nguyên</td>
                                    <td>Người ứng tuyển</td>
                                    <td>0937087259</td>
                                    <td>ndn1123@gmail.com</td>
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
                                    <td>Hồ Yến Nhi</td>
                                    <td>Người ứng tuyển</td>
                                    <td>0249995354</td>
                                    <td>yennhi241@gmail.com</td>
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
                                    <td>Doanh nghiệp</td>
                                    <td>0981845655</td>
                                    <td>lthoahong111@gmail.com</td>
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
                                    <td>Hoàng Văn Thụ</td>
                                    <td>Người ứng tuyển</td>
                                    <td>0254888737</td>
                                    <td>hvthu0606@gmail.com</td>
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
                                    <td>7</td>
                                    <td>Nguyễn Thị Kim Cúc</td>
                                    <td>Daonh nghiệp</td>
                                    <td>0562608743</td>
                                    <td>ntkcuc@gmail.com</td>
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
                                    <td>8</td>
                                    <td>Lê Thị Bưởi</td>
                                    <td>Người ứng tuyển</td>
                                    <td>0988070515</td>
                                    <td>ltbuoi0612@gmail.com</td>
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
<script src="admin/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="admin/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="admin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="admin/scripts/flot/jquery.flot.js" type="text/javascript"></script>
<script src="admin/scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
<script src="admin/scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="admin/scripts/common.js" type="text/javascript"></script>

</html>
