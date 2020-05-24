<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/24
  Time: 1:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>购物车</title>
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
                    <h1 class="page-title">购物车</h1>
                    <ul class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}/">首页</a></li>
                        <li class="current"><span>购物车</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb area End -->

    <!-- Main Content Wrapper Start -->
    <div class="main-content-wrapper">
        <div class="page-content-inner ptb--80 pt-md--40 pb-md--60">
            <!-- 购物车空的 -->
            <c:if test="${empty cart.cartItems.size()}">
                <div class="container" style="text-align: center">
                    <img src="${pageContext.request.contextPath}/resources/img/tips/cartno.png" alt="购物车空空如也" >
                </div>
            </c:if>
            <!-- 购物车里有商品 -->
            <c:if test="${!empty cart.cartItems.size()}">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mb-md--50">
                            <form class="cart-form" action="#">
                                <div class="row no-gutters">
                                    <div class="col-12">
                                        <div class="table-content table-responsive">
                                            <!-- 左侧购物车列表 -->
                                            <table class="table text-center">
                                                <thead>
                                                <tr>
                                                    <th>&nbsp;</th>
                                                    <th>&nbsp;</th>
                                                    <th class="text-left">商品</th>
                                                    <th>价钱</th>
                                                    <th>数量</th>
                                                    <th>总价</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${cart.cartItems}" var="cartSub">
                                                    <tr>
                                                        <td class="product-remove text-left"><a href="${pageContext.request.contextPath}/carts/deleteCartItem?pid=${cartSub.value.product.pid}"><i class="flaticon-cross"></i></a></td>
                                                        <td class="product-thumbnail text-left">
                                                            <img src="${pageContext.request.contextPath}/${cartSub.value.product.img_t1}" alt="Product Thumnail">
                                                        </td>
                                                        <td class="product-name text-left wide-column">
                                                            <h3>
                                                                <a href="product-details.html">${cartSub.value.product.pname}</a>
                                                            </h3>
                                                        </td>
                                                        <td class="product-price">
                                                            <span class="product-price-wrapper">
                                                                <span class="money">$${cartSub.value.product.new_price}</span>
                                                            </span>
                                                        </td>
                                                        <td class="product-quantity">
                                                            <div class="quantity">
                                                                <input type="number" class="quantity-input" name="qty" id="qty-1" value="${cartSub.value.buyNum}" min="1">
                                                            </div>
                                                        </td>
                                                        <td class="product-total-price">
                                                            <span class="product-price-wrapper">
                                                                <span class="money">$${cartSub.value.buyNum*cartSub.value.product.new_price}</span>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="row no-gutters border-top pt--20 mt--20">
                                    <div class="col-sm-6">
                                        <!--                  <div class="coupon">
                                                              <input type="text" id="coupon" name="coupon" class="cart-form__input" placeholder="Coupon Code">
                                                              <button type="submit" class="cart-form__btn">Apply Coupon</button>
                                                          </div> -->
                                    </div>
                                    <div class="col-sm-6 text-sm-right">
                                        <button type="submit" class="cart-form__btn">清空购物车</button>
                                        <!-- <button type="submit" class="cart-form__btn">更新购物车</button> -->
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-lg-4">
                            <div class="cart-collaterals">
                                <!-- 购物车总计 -->
                                <div class="cart-totals">
                                    <h5 class="font-size-14 font-bold mb--15">购物车总计</h5>
                                    <div class="cart-calculator">
                                        <div class="cart-calculator__item">
                                            <div class="cart-calculator__item--head">
                                                <span>小计</span>
                                            </div>
                                            <div class="cart-calculator__item--value">
                                                <span>$${cart.total}</span>
                                            </div>
                                        </div>
                                        <div class="cart-calculator__item">
                                            <div class="cart-calculator__item--head">
                                                <span>运费</span>
                                            </div>
                                            <div class="cart-calculator__item--value">
                                                <span>Flat rate: $10.00</span>

                                            </div>
                                        </div>
                                        <div class="cart-calculator__item order-total">
                                            <div class="cart-calculator__item--head">
                                                <span>总计</span>
                                            </div>
                                            <div class="cart-calculator__item--value">
                                                <span class="product-price-wrapper">
                                                    <span class="money">$${cart.total+10}</span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <a href="checkout.html" class="btn btn-size-md btn-shape-square btn-fullwidth">
                                    进行结算
                                </a>
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
