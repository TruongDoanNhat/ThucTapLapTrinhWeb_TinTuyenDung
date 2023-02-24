<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Post" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOPost" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 1/4/2023
  Time: 2:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Date date = new Date();
    DAOPost daoPost = new DAOPost();

%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> Việc làm đã ứng tuyển </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slicknav.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/price_rangs.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/nice-select.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/responsive.css">
</head>
<body>

<!--================Blog Area =================-->
<jsp:include page="header-candi.jsp"></jsp:include>

<div id="main">
    <div id="history-apply">
        <div class="container">
            <div id="chat-app" class="row">
                <div class="col-md-8">

                    <div class="box-group">
                        <div class="box-group-header">
                            <div class="box-group-title">
                                Công việc đã ứng tuyển
                            </div>
                        </div>
                        <div class="box-group-body">
                            <div class="empty-job">
                                <div class="image-empty">
                                    <img src="https://www.topcv.vn/v4/image/history-apply/empty.png" alt="empty apply">
                                </div>
                                <h3 class="title">Bạn chưa ứng tuyển công việc nào!</h3>
                                <div class="caption">
                                    <p>
                                        Bạn chưa ứng tuyển công việc nào!
                                    </p>
                                    <p>
                                        Bắt đầu sự nghiệp mơ ước với hàng nghìn việc làm chất lượng tại TopCV
                                    </p>
                                </div>
                                <div class="btn-action">
                                    <a href="/Post" target="_blank"
                                       class="btn btn-primary btn-primary-hover">Tìm việc ngay</a>
                                </div>
                            </div>
                            <div class="feed-jobs">
                            </div>
                        </div>
                        <div class="text-center">
                        </div>
                    </div>

                    <div class="box-group">
                        <div class="box-group-header">
                            <div class="box-group-title mb-12px">
                                Việc làm phù hợp với bạn
                            </div>
                            <p>Để nhận được gợi ý việc làm chính xác hơn, hãy <a href="#"
                                                                                 class="text-highlight config-suggest-btn">tùy
                                chỉnh cài đặt gợi ý việc làm</a>.</p>
                        </div>
                        <div class="box-group-body">
<%--                            <% ArrayList<Post> list = (ArrayList<Post>) request.getAttribute("list");--%>
<%--                                for (Post p : list) { %>--%>
<%--                            <div class="suggestion-jobs">--%>
<%--                                <div style="width: 100%" class="item-job job-ta  bg-highlight ">--%>
<%--                                    &lt;%&ndash;  logo &ndash;%&gt;--%>
<%--                                    <div class="company-logo ">--%>
<%--                                        <img src="" class="w-100" alt="" title="">--%>
<%--                                    </div>--%>
<%--                                    &lt;%&ndash;  thong tin job&ndash;%&gt;--%>
<%--                                    <div class="company-info">--%>
<%--                                        <h4 class="title">--%>
<%--                                            <a href="#" class="font-weight-bold">--%>
<%--                                                <%=p.getTitle() %>--%>
<%--                                            </a>--%>
<%--                                        </h4>--%>
<%--                                        <h5 class="company-title">--%>
<%--&lt;%&ndash;                                            <a href=""><%=p.getAddress() %>&ndash;%&gt;--%>
<%--                                            </a>--%>
<%--                                        </h5>--%>
<%--                                        <div class="box-label">--%>
<%--                                            <label class=""><%=p.getSalary()%>--%>
<%--                                            </label>--%>
<%--                                            </label>--%>
<%--                                            <label>--%>
<%--&lt;%&ndash;                                                <%= daoPost.getCompanyName(p.getCompanyID()) %>&ndash;%&gt;--%>
<%--                                            </label>--%>
<%--&lt;%&ndash;                                            <%= daoPost.dateToCreate(p.getDateCreate()) %> ngày trước&ndash;%&gt;--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    &lt;%&ndash;  action &ndash;%&gt;--%>
<%--                                    <div class="action-job">--%>
<%--                                        <p>--%>
<%--                                            Còn <strong> <%= daoPost.dateToCreate(p.getDeadline()) %> </strong> ngày để ứng tuyển--%>
<%--                                        </p>--%>
<%--                                        <div class="action">--%>
<%--                                            &lt;%&ndash; icon save &ndash;%&gt;--%>
<%--                                            <div class="save-job">--%>
<%--                                                <div class="box-save-job box-save-job-hover job-notsave "--%>
<%--                                                     style="width: 23px">--%>
<%--                                                    <a href="#" class="btn-save save">--%>
<%--                                                                                            <span style="display: none;">--%>
<%--                                                                                                <img src=""--%>
<%--                                                                                                     style="width: 20px">--%>
<%--                                                                                            </span>--%>
<%--                                                        <i class="fa-light fa-heartbeat"></i>--%>
<%--                                                    </a>--%>
<%--                                                    <a href="#"--%>
<%--                                                       class="btn-unsave unsave text-highlight"--%>
<%--                                                       data-original-title="Bỏ lưu">--%>
<%--                                                                                            <span style="display: none;">--%>
<%--                                                                                             <img src=""--%>
<%--                                                                                                  style="width: 20px">--%>
<%--                                                                                                </span>--%>
<%--                                                        <i class="fa-solid fa-heart"></i>--%>
<%--                                                    </a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            &lt;%&ndash; icon xóa &ndash;%&gt;--%>
<%--                                            <div class="to-trash">--%>
<%--                                                <button class="btn btn-trash btn-ignore-job-suggest">--%>
<%--                                                    <i class="fa-light fa-trash"></i>--%>
<%--                                                </button>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>


<%--                            &lt;%&ndash;                                <c:forEach var="p" items="${list}">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                <div class="suggestion-jobs">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                    <div style="width: 100%" class="item-job job-ta  bg-highlight ">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                        &lt;%&ndash;  logo &ndash;%&gt;&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                        <div class="company-logo ">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                            <img src="${p.getImg()}" class="w-100" alt="" title="">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                        </div>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                        &lt;%&ndash;  thong tin job&ndash;%&gt;&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                        <div class="company-info">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                            <h4 class="title">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                <a href="#" class=""&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                   data-original-title="${p.getTitle()}">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                    ${ p.getTitle()}&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                </a>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                            </h4>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                            <h5 class="company-title">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                <a href="">${p.getAddress()}&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                </a>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                            </h5>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                            <div class="box-label">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                <label class="salary">${ p.getSalary()}</label>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                <label class="address" title="">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                    <p style='text-align: left'>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                        ${daoPost.getCompanyName(p.getCompanyID())}&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                    </p>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                </label>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                20 ngày trước&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                </label>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                            </div>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                        </div>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                        &lt;%&ndash;  action &ndash;%&gt;&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                        <div class="action-job">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                            <p>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                Còn <strong> 3 </strong> ngày để ứng tuyển&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                            </p>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                            <div class="action">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                &lt;%&ndash; icon save &ndash;%&gt;&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                <div class="save-job">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                    <div class="box-save-job box-save-job-hover job-notsave "&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                         style="width: 23px">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                        <a href="#" class="btn-save save">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                            <span style="display: none;">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                                <img src="" style="width: 20px">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                            </span>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                            <i class="fa-light fa-heartbeat"></i>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                        </a>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                        <a href="#"&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                           class="btn-unsave unsave text-highlight"&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                           data-original-title="Bỏ lưu">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                            <span style="display: none;">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                             <img src=""&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                                  style="width: 20px">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                                </span>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                            <i class="fa-solid fa-heart"></i>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                        </a>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                    </div>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                </div>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                &lt;%&ndash; icon xóa &ndash;%&gt;&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                <div class="to-trash">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                    <button class="btn btn-trash btn-ignore-job-suggest">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                        <i class="fa-light fa-trash"></i>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                    </button>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                                </div>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                            </div>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                        </div>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                    </div>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                                                </div>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                                </c:forEach>&ndash;%&gt;--%>

<%--                            <% } %>--%>


                        </div>
                        <div class="text-center">
                            <a href="/Post" target="_blank" class="btn btn-suggestion-more btn-primary-hover">
                                Xem tất cả việc làm phù hợp
                            </a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</div>
<!--================Blog Area =================-->
<jsp:include page="footter-candi.jsp"></jsp:include>
</body>
<!-- JS here -->

<!-- All JS Custom Plugins Link Here here -->
<script src="../assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="../assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="../assets/js/popper.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="../assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="../assets/js/owl.carousel.min.js"></script>
<script src="../assets/js/slick.min.js"></script>
<script src="../assets/js/price_rangs.js"></script>

<!-- One Page, Animated-HeadLin -->
<script src="../assets/js/wow.min.js"></script>
<script src="../assets/js/animated.headline.js"></script>

<!-- Scrollup, nice-select, sticky -->
<script src="../assets/js/jquery.scrollUp.min.js"></script>
<script src="../assets/js/jquery.nice-select.min.js"></script>
<script src="../assets/js/jquery.sticky.js"></script>
<script src="../assets/js/jquery.magnific-popup.js"></script>

<!-- contact js -->
<script src="../assets/js/contact.js"></script>
<script src="../assets/js/jquery.form.js"></script>
<script src="../assets/js/jquery.validate.min.js"></script>
<script src="../assets/js/mail-script.js"></script>
<script src="../assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="../assets/js/plugins.js"></script>
<script src="../assets/js/main.js"></script>


</html>
