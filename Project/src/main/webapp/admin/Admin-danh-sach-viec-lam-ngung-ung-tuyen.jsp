<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 9:08 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Việc làm hết hạn</title>
    <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link type="text/css" href="css/theme.css" rel="stylesheet">
    <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
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
                                <li><a href=""><i class="icon-inbox"></i> Quản lý bài đăng   </a></li>
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
                                <li><a href=""><i class="icon-inbox"></i> Màu sắc   </a></li>
                                <li><a href=""><i class="icon-inbox"></i> Hình ảnh  </a></li>
                                <li><a href=""><i class="icon-inbox"></i> Tin tức   </a></li>
                                <li><a href=""><i class="icon-inbox"></i> Liên hệ   </a></li>
                                <li><a href=""><i class="icon-inbox"></i> Giới thiệu </a></li>
                                <li><a href=""><i class="icon-inbox"></i> Quảng cáo   </a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="widget widget-menu unstyled">

                        <li><a href="#"><i class="menu-icon icon-signout"></i> Đăng xuất </a></li>
                    </ul>

                </div>
                <!--/.sidebar-->
            </div><!--/.span3-->


            <div class="span9">



                <div class="module">
                    <div class="module-head" >
                        <h3>Việc làm ngừng tuyển
                        </h3>
                    </div>

                    <div class="module-body">

                        <div class="list-group work" >
                            <a href="#" class="list-group-item no-decoration ">

                                <div class="row">
                                    <div class="col-md-1">
                                        Ngày hết hạn</div>
                                    <div class="col-md-6">
                                        <strong>Tên công việc</strong>
                                    </div>
                                    <div class="col-md-4 italic">
                                        <strong> Số lượng</strong>

                                        </font></font></div>
                                    <div class="col-md-1 abc" style="padding-left:0px;padding-right:0px">
                                        <strong> Lượt truy cập</strong>
                                    </div>

                                </div>
                            </a>
                        </div>


                        <div class="list-group">
                            <a href="#" class="list-group-item no-decoration ">

                                <div class="row">
                                    <div class="col-md-1">
                                        08/05/2022</div>
                                    <div class="col-md-6">
                                        <strong>Chuyên gia tư vấn Java cao cấp</strong>
                                    </div>
                                    <div class="col-md-4 italic">

                                        <strong> Số lượng còn lại : 8</strong>

                                        </font></font></div>
                                    <div class="col-md-1 italic" style="padding-left:0px;padding-right:0px">
                                        <strong> 15 lượt truy cập</strong>
                                    </div>

                                </div>
                            </a>
                        </div>

                        <div class="list-group">
                            <a href="#" class="list-group-item no-decoration ">
                                <div class="row">
                                    <div class="col-md-1">
                                        10/07/2022</div>
                                    <div class="col-md-6">
                                        <strong>Nhân Viên IT Hỗ Trợ Kỹ Thuật </strong>
                                    </div>
                                    <div class="col-md-4 italic">

                                        <strong> Số lượng còn lại : 5  </strong>

                                        </font></font></div>
                                    <div class="col-md-1 italic" style="padding-left:0px;padding-right:0px">
                                        <strong> 20 lượt truy cập</strong>
                                    </div>

                                </div>
                            </a>
                        </div>

                        <div class="list-group">

                            <a href="#" class="list-group-item no-decoration ">
                                <div class="row">
                                    <div class="col-md-1">
                                        01/06/2022</div>
                                    <div class="col-md-6">
                                        <strong>Kỹ Sư An Toàn Thông Tin mạng  </strong>
                                    </div>
                                    <div class="col-md-4 italic">

                                        <strong> Số lượng còn lại : 12  </strong>

                                        </font></font></div>
                                    <div class="col-md-1 italic" style="padding-left:0px;padding-right:0px">
                                        <strong> 10 lượt truy cập</strong>
                                    </div>

                                </div>
                            </a>
                        </div>

                        <div class="list-group">

                            <a href="#" class="list-group-item no-decoration ">
                                <div class="row">
                                    <div class="col-md-1">
                                        11/10/2022</div>
                                    <div class="col-md-6">
                                        <strong>Nhân Viên Android Developer </strong>
                                    </div>
                                    <div class="col-md-4 italic">

                                        <strong> Số lượng còn lại : 10  </strong>

                                        </font></font></div>
                                    <div class="col-md-1 italic" style="padding-left:0px;padding-right:0px">
                                        <strong> 30 lượt truy cập</strong>
                                    </div>

                                </div>
                            </a>
                        </div>

                        <div class="list-group">
                            <a href="#" class="list-group-item no-decoration ">
                                <div class="row">
                                    <div class="col-md-1">
                                        05/11/2022</div>
                                    <div class="col-md-6">
                                        <strong>
                                            Lập Trình Viên PHP Developer</strong>
                                    </div>
                                    <div class="col-md-4 italic">
                                        <strong> Số lượng còn lại : 8  </strong>
                                        </font></font></div>
                                    <div class="col-md-1 italic" style="padding-left:0px;padding-right:0px">
                                        <strong>20 lượt truy cập</strong>
                                    </div>

                                </div>
                            </a>
                        </div>

                        <div class="list-group">

                            <a href="#" class="list-group-item no-decoration ">
                                <div class="row">
                                    <div class="col-md-1">
                                        10/11/2022</div>
                                    <div class="col-md-6">
                                        <strong>Kiểm Thử Phần Mềm (Tester) </strong>
                                    </div>
                                    <div class="col-md-4 italic">

                                        <strong> Số lượng còn lại : 15  </strong>

                                        </font></font></div>
                                    <div class="col-md-1 italic" style="padding-left:0px;padding-right:0px">
                                        <strong> 25 lượt truy cập</strong>
                                    </div>

                                </div>
                            </a>
                        </div>

                        <div class="media stream load-more">
                            <a href="#">
                                <i class="icon-refresh shaded"></i>
                                Xem nhiều hơn...
                            </a>
                        </div>
                    </div><!--/.stream-list-->
                </div><!--/.module-body-->
                <!--/.content-->
            </div><!--/.span9-->
        </div>
    </div><!--/.container-->
</div><!--/.wrapper-->
</body>
<script src="scripts/jquery-1.9.1.min.js"></script>
<script src="scripts/jquery-ui-1.10.1.custom.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="scripts/datatables/jquery.dataTables.js"></script>
<script>
    $(document).ready(function() {
        $('.datatable-1').dataTable();
        $('.dataTables_paginate').addClass("btn-group datatable-pagination");
        $('.dataTables_paginate > a').wrapInner('<span />');
        $('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
        $('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
    } );
</script>
</html>
