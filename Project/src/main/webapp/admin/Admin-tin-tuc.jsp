<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 11:23 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin | Tin tức</title>
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
            <h5 class="mb-0">Tin tức</h5>
          </div>
          <form class="navbar-search pull-left input-append" action="#">
            <input type="text" style="height: 30px" class="span3" placeholder="Tìm kiếm theo tên, chức vụ">
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
                  <th class="stt">STT</th>
                  <th class="ha" >Hình ảnh</th>
                  <th class="td">Tiêu đề</th>
                  <th class="nd">Nội dung</th>
                  <th>Chức năng</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>1</td>
                  <td><img src="images/img1.png" class="img"></td>
                  <td>Rộn ràng ngày hội việc làm công nghệ thông tin</td>
                  <td>Nhằm tạo cơ hội nghề nghiệp cho sinh viên sau khi tốt nghiệp, tăng khả năng tìm kiếm việc làm của sinh viên..</td>
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
                  <td><img src="images/img3.png" class="img"></td>
                  <td>Thị trường hoạt động kinh doanh</td>
                  <td>Thị trường là nơi chuyển giao quyền sở hữu sản phẩm, dịch vụ hoặc tiền tệ, nhằm thỏa mãn nhu cầu của hai bên cung và cầu về một loại sản phẩm..</td>
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
                  <td><img src="images/img4.png" class="img"></td>
                  <td>Đào tạo nguồn nhân lực ngành cơ khí chế tạo máy chất lượng cao </td>
                  <td>Nhân lực luôn là yếu tố quan trọng và là điều kiện tiên quyết nhằm phát triển bền vững nhất cho bất kỳ một ngành công nghiệp nào, ngành cơ khí chế tạo máy cũng vậy..

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
                  <td>4</td>
                  <td><img src="images/img2.png" class="img"></td>
                  <td>Đẩy mạnh quá trình xây dựng</td>
                  <td>Sở Xây dựng đẩy nhanh thời gian thực hiện các dự án nhà ở xã hội này xuống dưới 6 tháng để các chủ đầu tư triển khai thực hiện...</td>
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
                  <td><img src="images/img5.png" class="img"></td>
                  <td>Có thật công nghệ thông tin là vua của mọi loại nghề</td>
                  <td>Ngành IT Việt Nam hiện nay ở đầu của sự phát triển. Có thể nói IT là vua của các nghề. Vừa có tiền, có quyền..</td>
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
