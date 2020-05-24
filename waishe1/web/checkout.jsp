<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/24
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Payne - Backpack eCommerce HTML Template</title>
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
                    <h1 class="page-title">Checkout</h1>
                    <ul class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li class="current"><span>Checkout</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb area End -->

    <!-- Main Content Wrapper Start -->
    <div class="main-content-wrapper">
        <div class="page-content-inner pt--80 pt-md--60 pb--72 pb-md--60">
            <div class="container">
                <div class="row">
                    <!-- Checkout Area Start -->
                    <div class="col-lg-6">
                        <div class="checkout-title mt--10">
                            <h2>结算明细</h2>
                        </div>
                        <div class="checkout-form">
                            <form action="#" class="form form--checkout">
                                <div class="form-row mb--20">
                                    <div class="form__group col-md-6 mb-sm--30">
                                        <label for="billing_fname" class="form__label">姓名  <span class="required">*</span></label>
                                        <input type="text" name="billing_fname" id="billing_fname" class="form__input">
                                    </div>

                                </div>


                                <div class="form-row mb--20">
                                    <div class="form__group col-12">
                                        <label for="billing_streetAddress" class="form__label">Street Address <span class="required">*</span></label>

                                        <input type="text" name="billing_streetAddress" id="billing_streetAddress" class="form__input mb--30" placeholder="House number and street name">

                                    </div>
                                </div>
                                <!-- 电话号码 -->
                                <div class="form-row mb--20">
                                    <div class="form__group col-12">
                                        <label for="billing_phone" class="form__label">电话号码 <span class="required">*</span></label>
                                        <input type="text" name="billing_phone" id="billing_phone" class="form__input">
                                    </div>
                                </div>


                                <div class="form-row">
                                    <div class="form__group col-12">
                                        <label for="orderNotes" class="form__label">Order Notes</label>
                                        <textarea class="form__input form__input--textarea" id="orderNotes" name="orderNotes" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- 订单详情 -->
                    <div class="col-xl-5 offset-xl-1 col-lg-6 mt-md--40">
                        <div class="order-details">
                            <div class="checkout-title mt--10">
                                <h2>订单详情</h2>
                            </div>
                            <div class="table-content table-responsive mb--30">
                                <table class="table order-table order-table-2">
                                    <thead>
                                    <tr>
                                        <th>商品名称</th>
                                        <th class="text-right">小计</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>Aliquam lobortis est
                                            <strong><span>&#10005;</span>1</strong>
                                        </th>
                                        <td class="text-right">$80.00</td>
                                    </tr>
                                    <tr>
                                        <th>Auctor gravida enim
                                            <strong><span>&#10005;</span>1</strong>
                                        </th>
                                        <td class="text-right">$60.00</td>
                                    </tr>
                                    </tbody>
                                    <tfoot>
                                    <tr class="cart-subtotal">
                                        <th>商品总额</th>
                                        <td class="text-right">$56.00</td>
                                    </tr>
                                    <tr class="shipping">
                                        <th>运费</th>
                                        <td class="text-right">
                                            <span>Flat Rate; $20.00</span>
                                        </td>
                                    </tr>
                                    <tr class="order-total">
                                        <th>订单总计</th>
                                        <td class="text-right"><span class="order-total-ammount">$56.00</span></td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <div class="checkout-payment">
                                <form action="#" class="payment-form">
                                    <div class="payment-group mt--20">
                                        <p class="mb--15">Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our privacy policy.</p>
                                        <button type="submit" class="btn btn-size-md btn-fullwidth">Place Order</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Checkout Area End -->
                </div>
            </div>
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
