<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/21
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- Header Start -->
<header class="header header-default site-header">
    <div class="header__outer">
        <div class="header__inner header--fixed">
            <div class="container">
                <div class="header__main">
                    <div class="header__col header__left">
                        <a href="index.html" class="logo">
                            <figure class="logo--normal">
                                <img src="${pageContext.request.contextPath}/resources/img/logo/logo.png" alt="Logo">
                            </figure>
                            <figure class="logo--transparency">
                                <img src="${pageContext.request.contextPath}/resources/img/logo/logo.png" alt="Logo">
                            </figure>
                        </a>
                    </div>
                    <div class="header__col header__center">
                        <nav class="main-navigation d-none d-lg-block">
                            <ul class="mainmenu">
                                <li class="mainmenu__item menu-item-has-children position-relative">
                                    <a href="index.html" class="mainmenu__link">Home</a>
                                </li>
                                <%--商品列--%>
                                <li class="mainmenu__item menu-item-has-children position-relative">
                                    <a href="#" class="mainmenu__link">Shops</a>
                                    <div class="inner-menu">
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="my-account.html">鼠标</a>
                                            </li>
                                            <li>
                                                <a href="checkout.html">键盘</a>
                                            </li>
                                            <li>
                                                <a href="cart.html">耳机</a>
                                            </li>
                                            <li>
                                                <a href="compare.html">耳机</a>
                                            </li>
                                            <li>
                                                <a href="order-tracking.html">键帽</a>
                                            </li>
                                            <li>
                                                <a href="wishlist.html">鼠标垫</a>
                                            </li>
                                            <li>
                                                <a href="wishlist.html">其他配件</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="mainmenu__item menu-item-has-children position-relative">
                                    <a href="#" class="mainmenu__link">Pages</a>
                                    <div class="inner-menu">
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="my-account.html">My Account</a>
                                            </li>
                                            <li>
                                                <a href="checkout.html">Checkout</a>
                                            </li>
                                            <li>
                                                <a href="cart.html">Cart</a>
                                            </li>
                                            <li>
                                                <a href="compare.html">Compare</a>
                                            </li>
                                            <li>
                                                <a href="order-tracking.html">Track Order</a>
                                            </li>
                                            <li>
                                                <a href="wishlist.html">Wishlist</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>

                                <li class="mainmenu__item">
                                    <a href="contact-us.html" class="mainmenu__link">Contact Us</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="header__col header__right">
                        <div class="toolbar-item d-none d-lg-block">
                            <a href="${pageContext.request.contextPath}/login.jsp" class="toolbar-btn">
                                <span>Login</span>
                            </a>
                        </div>
                        <div class="toolbar-item d-block d-lg-none">
                            <a href="#offcanvasnav" class="hamburger-icon js-toolbar menu-btn">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </a>
                        </div>
                        <div class="toolbar-item">
                            <a href="wishlist.html" class="toolbar-btn">
                                <i class="flaticon-heart"></i>
                            </a>
                        </div>
                        <div class="toolbar-item mini-cart-btn">
                            <a href="#miniCart" class="toolbar-btn js-toolbar">
                                        <span class="mini-cart-btn__icon">
                                            <i class="flaticon-bag"></i>
                                        </span>
                                <sup class="mini-cart-btn__count">
                                    02
                                </sup>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-sticky-height"></div>
    </div>
</header>
<!-- Header End -->
</body>
</html>
