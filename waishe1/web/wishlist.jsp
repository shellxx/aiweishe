<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/24
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>心愿单</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- ************************* CSS Files ************************* -->

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor.css">

    <!-- style css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
<!-- Preloader Start -->
<div class="ft-preloader active">
    <div class="ft-preloader-inner h-100 d-flex align-items-center justify-content-center">
        <div class="ft-child ft-bounce1"></div>
        <div class="ft-child ft-bounce2"></div>
        <div class="ft-child ft-bounce3"></div>
    </div>
</div>
<!-- Preloader End -->

<!-- Main Wrapper Start -->
<div class="wrapper">
    <jsp:include page="header2.jsp"></jsp:include>


    <!-- Breadcrumb area Start -->
    <section class="page-title-area bg-color" data-bg-color="#f4f4f4">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <h1 class="page-title">心愿单</h1>
                    <ul class="breadcrumb">
                        <li><a href="index.html">首页</a></li>
                        <li class="current"><span>心愿单</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb area End -->

    <!-- Main Content Wrapper Start -->
    <div class="main-content-wrapper">
        <div class="page-content-inner ptb--80 ptb-md--60">
            <c:if test="${empty wishlists.size()|| wishlists.size() eq 0}">
                <div class="container" style="text-align: center">
                    <img src="${pageContext.request.contextPath}/resources/img/tips/wishno.png" alt="心愿单还是空的" >
                </div>
            </c:if>
            <c:if test="${!empty wishlists.size() && wishlists.size()>0}">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="table-content table-responsive">
                            <table class="table table-style-2 wishlist-table text-center">
                                <thead>
                                <tr>
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                    <th class="text-left">商品</th>
                                    <th>库存状况</th>
                                    <th>价钱</th>
                                    <th>&nbsp;</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${wishlists}" var="item">
                                        <tr>
                                            <td class="product-remove text-left">
                                                <a href="${pageContext.request.contextPath}/user/deleteWishlist?pid=${item.pid}"><i class="flaticon-cross"></i></a>
                                            </td>
                                            <td class="product-thumbnail text-left">
                                                <img src="${pageContext.request.contextPath}/${item.img_t1}"
                                                     alt="Product Thumnail" style="width: 100px;;">
                                            </td>
                                            <td class="product-name text-left wide-column">
                                                <h3>
                                                    <a href="${pageContext.request.contextPath}/product/findProduct?pid=${item.pid}">${item.pname}</a>
                                                </h3>
                                            </td>
                                            <td class="product-stock">
                                                    ${item.pnumber >50 ? "充足":item.pnumber>10?"紧缺":"不足"}
                                            </td>
                                            <td class="product-price">
                                                <span class="product-price-wrapper">
                                                    <span class="money">$${item.new_price}</span>
                                                </span>
                                            </td>
                                            <td class="product-action-btn">
                                                <a href="${pageContext.request.contextPath}/carts/addToCart?pid=${item.pid}&buyNum=1" class="btn">加到购物车</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            </c:if>
        </div>
    </div>
    <!-- Main Content Wrapper Start -->




    <%@ include file="foot1.jsp"%>
</div>>
<!-- ************************* JS Files ************************* -->

<!-- jQuery JS -->
<script src="${pageContext.request.contextPath}/resources/js/vendor.js"></script>

<!-- Main JS -->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
<script>
</script>
</html>
