<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/24
  Time: 18:30
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vendor.css">

    <!-- style css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
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
                    <h1 class="page-title">个人中心</h1>
                    <ul class="breadcrumb">
                        <li><a href="index.html">首页</a></li>
                        <li class="current"><span>个人中心</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb area End -->

    <!-- Main Content Wrapper Start -->
    <div class="main-content-wrapper">
        <div class="page-content-inner ptb--80 ptb-md--60 pb-sm--55">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="user-dashboard-tab flex-column flex-md-row">
                            <div class="user-dashboard-tab__head nav flex-md-column" role="tablist" aria-orientation="vertical">
                                <a class="nav-link active" data-toggle="pill" role="tab" href="#dashboard" aria-controls="dashboard" aria-selected="true">个人信息</a>
                                <a class="nav-link" data-toggle="pill" role="tab" href="#orders" aria-controls="orders" aria-selected="true">我的订单</a>
                                <a class="nav-link" data-toggle="pill" role="tab" href="#addresses" aria-controls="addresses" aria-selected="true">我的地址</a>
                                <a class="nav-link" data-toggle="pill" role="tab" href="#accountdetails" aria-controls="accountdetails" aria-selected="true">更改密码</a>
                                <a class="nav-link" href="login-register.html">退出</a>
                            </div>

                            <div class="user-dashboard-tab__content tab-content">
                                <!-- 个人信息 -->
                                <div class="tab-pane fade show active" id="dashboard">
                                    <p>Hello <strong>John</strong> (not <strong>John</strong>? <a href="login-register.html">Log out</a>)</p>
                                    <p>From your account dashboard. you can easily check &amp; view your <a href="">recent orders</a>, manage your <a href="">shipping and billing addresses</a> and <a href="">edit your password and account details</a>.</p>
                                </div>
                                <!-- 我的订单 -->
                                <div class="tab-pane fade" id="orders">
                                    <div class="message-box mb--30 d-none">
                                        <p><i class="fa fa-check-circle"></i>No order has been made yet.</p>
                                        <a href="shop.html">Go Shop</a>
                                    </div>
                                    <div class="table-content table-responsive">
                                        <table class="table text-center">
                                            <thead>
                                            <tr>
                                                <th>Order</th>
                                                <th>Date</th>
                                                <th>Status</th>
                                                <th>Total</th>
                                                <th>Actions</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td class="wide-column">September 19, 2018</td>
                                                <td>Processing</td>
                                                <td class="wide-column">$49.00 for 1 item</td>
                                                <td><a href="product-details.html" class="btn">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td class="wide-column">September 19, 2018</td>
                                                <td>Processing</td>
                                                <td class="wide-column">$49.00 for 1 item</td>
                                                <td><a href="product-details.html" class="btn">View</a></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- 我的地址 -->
                                <div class="tab-pane fade" id="addresses">
                                    <p class="mb--20">The following addresses will be used on the checkout page by default.</p>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="text-block">
                                                <h4 class="mb--20">Shopping address</h4>
                                                <a href="">Edit</a>
                                                <p>You have not set up this type of address yet.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 更改密码 -->
                                <div class="tab-pane fade" id="accountdetails">
                                    <form action="#" class="form form--account">
                                        <div class="row mb--20">
                                            <div class="col-md-6 mb-sm--20">
                                                <div class="form__group">
                                                    <label class="form__label" for="f_name">First name <span class="required">*</span></label>
                                                    <input type="text" name="f_name" id="f_name" class="form__input">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form__group">
                                                    <label class="form__label" for="l_name">Last name <span class="required">*</span></label>
                                                    <input type="text" name="l_name" id="l_name" class="form__input">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mb--20">
                                            <div class="col-12">
                                                <div class="form__group">
                                                    <label class="form__label" for="d_name">Display name <span class="required">*</span></label>
                                                    <input type="text" name="d_name" id="d_name" class="form__input">
                                                    <span class="form__notes"><em>This will be how your name will be displayed in the account section and in reviews</em></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mb--20">
                                            <div class="col-12">
                                                <div class="form__group">
                                                    <label class="form__label" for="email">Email Address <span class="required">*</span></label>
                                                    <input type="email" name="email" id="email" class="form__input">
                                                </div>
                                            </div>
                                        </div>
                                        <fieldset class="form__fieldset mb--20">
                                            <legend class="form__legend">Password change</legend>
                                            <div class="row mb--20">
                                                <div class="col-12">
                                                    <div class="form__group">
                                                        <label class="form__label" for="cur_pass">Current password (leave blank to leave unchanged)</label>
                                                        <input type="password" name="cur_pass" id="cur_pass" class="form__input">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb--20">
                                                <div class="col-12">
                                                    <div class="form__group">
                                                        <label class="form__label" for="new_pass">New password (leave blank to leave unchanged)</label>
                                                        <input type="password" name="new_pass" id="new_pass" class="form__input">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="form__group">
                                                        <label class="form__label" for="conf_new_pass">Confirm new password</label>
                                                        <input type="password" name="conf_new_pass" id="conf_new_pass" class="form__input">
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form__group">
                                                    <input type="submit" value="Save Changes" class="btn">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Main Content Wrapper Start -->




    <%@ include file="foot1.jsp"%>
</div>>
<!-- ************************* JS Files ************************* -->

<!-- jQuery JS -->
<script src="${pageContext.request.contextPath}/js/vendor.js"></script>

<!-- Main JS -->
<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
<script>

</script>
</html>
