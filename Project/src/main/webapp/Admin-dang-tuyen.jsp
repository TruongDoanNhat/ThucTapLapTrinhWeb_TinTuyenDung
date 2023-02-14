<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 9:01 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin | Đăng tuyển</title>
  <link type="text/css" href="admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link type="text/css" href="admin/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
  <link type="text/css" href="admin/css/theme.css" rel="stylesheet">
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
        <div class="content">

          <div class="module">
            <div class="module-head">
              <h3>Đăng tuyển</h3>
            </div>
            <div class="module-body">
              <br/>

              <form class="form-horizontal row-fluid">
                <div class="control-group">
                  <label class="control-label" for="basicinput">Chức vụ</label>
                  <div class="controls">
                    <input type="text" id="basicinput" placeholder="Nhập chức vụ."
                           class="span8">
                  </div>
                </div>

                <div class="control-group">
                  <label class="control-label" for="basicinput">Lĩnh vực</label>
                  <div class="controls">
                    <select tabindex="1" data-placeholder="Vui lòng chọn.." class="span8">
                      <option value="">Vui lòng chọn..</option>
                      <option value="Category 1">Trí tuệ nhân tạo</option>
                      <option value="Category 1">Công nghệ phần mềm</option>
                      <option value="Category 3">Mạng</option>
                      <option value="Category 4">Hệ thống thông tin</option>
                    </select>
                  </div>
                </div>

                <div class="control-group">
                  <label class="control-label" for="basicinput">Ngành nghề</label>
                  <div class="controls">
                    <select tabindex="1" data-placeholder="Vui lòng chọn.." class="span8">
                      <option value="">Vui lòng chọn..</option>
                      <option value="Category 1"> Lập trình</option>
                      <option value="Category 2"> Kiểm thử phần mềm</option>
                      <option value="Category 3"> Quản trị mạng</option>
                      <option value="Category 4"> Phân tích dữ liêệu</option>
                    </select>
                  </div>
                </div>

                <div class="control-group">
                  <label class="control-label" for="basicinput">Hình thức công việc</label>
                  <div class="controls">
                    <select tabindex="1" data-placeholder="Vui lòng chọn.." class="span8">
                      <option value="">Vui lòng chọn..</option>
                      <option value="Category 1">Toàn thời gian</option>
                      <option value="Category 2">Bán thời gian</option>
                      <option value="Category 3">Hợp đồng</option>
                      <option value="Category 4">Kỳ thực tập</option>
                    </select>
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="basicinput">Địa điểm làm việc</label>
                  <div class="controls">
                    <input type="text" placeholder=""
                           class="span8">
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="basicinput">Mức lương</label>
                  <div class="controls">
                    <div class="input-append">
                      <input type="text" placeholder="10.000.000" class="span8"><span
                            class="add-on">VND</span>
                    </div>
                    <span class="help-inline">(Thỏa thuận : 0 VND)</span>
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="basicinput">Số lượng tuyển</label>
                  <div class="controls">
                    <div class="input-prepend">
                      <input class="span8" type="text" placeholder="">
                      <span class="help-inline">

                                            <label class="checkbox inline">
                                                <input type="checkbox" value="">
                                                Nam
                                            </label>
                                            <label class="checkbox inline">
                                                <input type="checkbox" value="">
                                                Nữ
                                            </label>
                                            <label class="checkbox inline">
                                                <input type="checkbox" value="">
                                                Không yêu cầu
                                            </label>
                                                </span>
                    </div>
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="basicinput">Mô tả công việc</label>
                  <div class="controls">
                    <textarea class="span8" rows="5"></textarea>
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="basicinput">Yêu cầu</label>
                  <div class="controls">
                    <textarea class="span8" rows="5"></textarea>
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="basicinput">Thông tin công ty</label>
                  <div class="controls">
                    <textarea class="span8" rows="5"></textarea>
                  </div>
                </div>

                <div class="control-group">
                  <label class="control-label" for="basicinput">Hình ảnh</label>
                  <div class="controls">
                    <input class="input-file" type="file" name="file_cv" id="file">
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="basicinput">Hết hạn nộp hồ sơ</label>
                  <div class="controls">
                    <input type="date" id="" name="">

                  </div>
                </div>


                <div class="control-group">
                  <div class="controls">
                    <button type="submit" class="btn">Đăng</button>
                  </div>
                </div>
              </form>
            </div>
          </div>


        </div><!--/.content-->
      </div><!--/.span9-->
    </div>
  </div><!--/.container-->
</div><!--/.wrapper-->

</div>
</body>
<script src="admin/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="admin/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="admin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="admin/scripts/flot/jquery.flot.js" type="text/javascript"></script>

</html>
