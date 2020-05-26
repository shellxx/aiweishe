<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/25
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>后台管理界面</title>
    <link rel="icon" href="${pageContext.request.contextPath}/admin/img/logo.ico" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/admin/img/logo.ico" />
    <!-- semantic ui css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/semantic/dist/semantic.css"/>
    <!-- 一些图标 -->
    <link href="${pageContext.request.contextPath}/admin/plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
    <!-- Sidebar -->
    <link href="${pageContext.request.contextPath}/admin/css/main.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/admin/plugins/datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/admin/plugins/chartist/chartist.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/admin/css/chat-page.css" rel="stylesheet" />
</head>
<body>
    <div id="contextWrap">
        <%@ include file="leftbar.jsp"%>


            <!-- 中间主体部分 -->
            <div class="pusher">
                <%@ include file="navbar.jsp"%>

                <%--主体内容--%>
                    <!--maincontent-->
                    <div class="mainWrap navslide">
                        <div class="ui equal width left aligned padded grid stackable">
                            <c:if test="${empty products}">
                                <span>没有找到商品</span>
                            </c:if>
                            <c:if test="${!empty products}">
                                <table class="ui violet selectable celled table">
                                    <thead>
                                    <tr>
                                        <th>序号</th>
                                        <th>商品名称</th>
                                        <th>所属类别</th>
                                        <th>品牌</th>
                                        <th>上架日期</th>
                                        <th>原价</th>
                                        <th>现价</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${products.list}" var="product" varStatus="tag">
                                        <tr>
                                            <td>${tag.count}</td>
                                            <td>${product.pname}</td>
                                            <td>${product.t_name}</td>
                                            <td>${product.brand}</td>
                                            <td>${product.pdate}</td>
                                            <td>${product.old_price}</td>
                                            <td>${product.new_price}</td>
                                            <td><input type="button" class="ui primary button"  name="" value="修改" />
                                                <input type="button" class="ui primary button"  name="delete" value="下架" /></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <div class="row">
                                    <div class="ui right floated pagination menu">
                                        <a class="icon item one-pan-link-mark ${products.currentPage==1 ? "disabled":""}"
                                           href="${pageContext.request.contextPath}/product/findAllProductForAdmin?currentPage=${page.currentPage-1}">
                                            <i class="left chevron icon"></i>
                                        </a>

                                        <c:forEach begin="1" end="${products.totalPage}" var="page"  varStatus="status">
                                            <c:if test="${page eq products.currentPage}">
                                                <a class="item one-pan-link-mark active">${page}</a>
                                            </c:if>
                                            <c:if test="${!(page eq products.currentPage)}">
                                                <a href="${pageContext.request.contextPath}/product/findAllProductForAdmin?currentPage=${page}" class="item one-pan-link-mark">${page}</a>
                                            </c:if>
                                        </c:forEach>

                                        <a class="icon item one-pan-link-mark ${products.currentPage==products.totalPage ? "disabled":""}"
                                        href="${pageContext.request.contextPath}/product/findAllProductForAdmin?currentPage=${page.currentPage+1}">
                                            <i class="right chevron icon"></i>
                                        </a>
                                    </div>
                                </div>

                            </c:if>

                        </div>
                    </div>
            </div>

    </div>
</body>
<!-- script -->
<!-- jquery -->
<script src="${pageContext.request.contextPath}/admin/js/jquery-2.1.4.min.js" charset="utf-8"></script>
<!-- semantic -->
<script src="${pageContext.request.contextPath}/admin/semantic/dist/semantic.js" charset="utf-8"></script>
<!-- <script src="js/semantic.min.js"></script> -->
<!--counter number-->
<script src="${pageContext.request.contextPath}/admin/plugins/counterup/jquery.counterup.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/counterup/waypoints.min.js"></script>


<!--flot chart弗洛特图-->
<script src="${pageContext.request.contextPath}/admin/plugins/flot/jquery.flot.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/flot/curvedLines.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/cookie/js.cookie.js"></script>
<!--flot chart-->
<!--chartjs chart图表-->
<script src="${pageContext.request.contextPath}/admin/plugins/chartjs/chart.min.js"></script>

<script src="${pageContext.request.contextPath}/admin/plugins/nicescrool/jquery.nicescroll.min.js"></script>
<script data-pace-options='{ "ajax": false }' src="${pageContext.request.contextPath}/admin/plugins/pacejs/pace.js"></script>



<script src="${pageContext.request.contextPath}/admin/plugins/chartist/chartist.min.js"></script>

<script src="${pageContext.request.contextPath}/admin/js/dashboard2.js"></script>
<!-- main.js -->
<script src="${pageContext.request.contextPath}/admin/js/main.js"></script>
</html>
