<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/25
  Time: 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<!--left sidebar-->
<div class="ui sidebar vertical left menu overlay  borderless visible sidemenu inverted  black" style="-webkit-transition-duration: 0.1s; transition-duration: 0.1s;" data-color="grey">
    <a class="item logo" href="${pageContext.request.contextPath}/admin/index.jsp">
        <img src="${pageContext.request.contextPath}/admin/img/logo.png" alt="stagblogo"  />
        <img src="${pageContext.request.contextPath}/admin/img/logo.ico" alt="stagblogo" class="displaynone" />
    </a>

    <a class="item" href="${pageContext.request.contextPath}/admin/index.jsp" style="margin-top: 5px;">
        <i class="home icon"></i><span class="colhidden">首页</span>
    </a>
    <!-- 分割线 -->
    <div class="ui divider"></div>

    <div class="ui accordion inverted">
        <a class="title item">
            <i class="archive titleIcon icon"></i> 商品管理<i class="dropdown icon"></i>
        </a>
        <div class="content">
            <a class="item" href="${pageContext.request.contextPath}/product/findAllProductForAdmin">
                商品管理
            </a>
            <a class="item" href="${pageContext.request.contextPath}/product/findAllType">
                类别管理
            </a>
        </div>

        <div class="title item">
            <i class="book titleIcon icon"></i>

            <i class="dropdown icon"></i> 订单管理
        </div>
        <div class="content">
            <a class="item" href="${pageContext.request.contextPath}/admin/orderManager.jsp">
                订单管理
            </a>

            <a class="item" href="chat.html">
                追踪订单
            </a>
        </div>

        <div class="title item">
            <i class="users titleIcon icon"></i>

            <i class="dropdown icon"></i> 用户管理
        </div>
        <div class="content">
            <a class="item" href="${pageContext.request.contextPath}/admins/findAllUser">
                用户管理
            </a>

            <a class="item" href="${pageContext.request.contextPath}/admin/uservipManager.jsp">
                会员管理
            </a>
        </div>

    </div>

    <div class="ui dropdown item displaynone scrolling">
        <span>商品管理</span>
        <i class="archive icon"></i>

        <div class="menu">
            <div class="header">
                商品管理
            </div>
            <div class="ui divider"></div>
            <a class="item" href="${pageContext.request.contextPath}/admin/productManager.jsp"> 商品管理 </a>
            <a class="item" href="${pageContext.request.contextPath}/admin/typeManager.jsp"> 类别管理 </a>
        </div>
    </div>

    <div class="ui dropdown item displaynone scrolling">
        <span>订单管理</span>
        <i class="book icon"></i>
        <div class="menu">
            <div class="header">
                订单管理
            </div>
            <div class="ui divider"></div>
            <a class="item" href="${pageContext.request.contextPath}/admin/orderManager.jsp">订单管理</a>
            <a class="item" href="filter.html">追踪订单</a>
        </div>
    </div>

    <div class="ui dropdown item displaynone scrolling">
        <span>用户管理</span>
        <i class="users icon"></i>
        <div class="menu">
            <div class="header">
                用户管理
            </div>
            <div class="ui divider"></div>
            <a class="item" href="${pageContext.request.contextPath}/admin/userInfoManager.jsp">用户管理</a>
            <a class="item" href="${pageContext.request.contextPath}/admin/uservipManager.jsp">会员管理</a>
        </div>
    </div>
</div>

</body>
</html>
