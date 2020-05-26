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
                            <c:if test="${empty requestScope.users}">
                                用户信息还是空的
                            </c:if>
                            <c:if test="${!empty requestScope.users}">
                                <table class="ui violet selectable celled table">
                                    <thead>
                                    <tr>
                                        <th>序号</th>
                                        <th>用户名</th>
                                        <th>密码</th>
                                        <th>邮箱</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${requestScope.users}" var="us" varStatus="tag">
                                        <tr>
                                            <td>${tag.count}</td>
                                            <td>${us.u_username}</td>
                                            <td>${us.u_password}</td>
                                            <td>${us.u_email}</td>
                                            <td>
                                                <input type="button" class="ui primary button"  name="update" value="修改" />
                                                <input type="button" class="ui primary button"  name="delete" value="删除" />
                                            </td>
                                        </tr>
                                    </c:forEach>

                                    </tbody>
                                </table>
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
