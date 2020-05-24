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
                                    <a href="${pageContext.request.contextPath}/" class="mainmenu__link">Home</a>
                                </li>
                                <%--商品列--%>
                                <li class="mainmenu__item menu-item-has-children position-relative">
                                    <a href="${pageContext.request.contextPath}/product/findAllProduct" class="mainmenu__link">Shops</a>
                                    <div class="inner-menu">
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/product/findAllProductBytid?tid=1001&currentPage=1">鼠标</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/product/findAllProductBytid?tid=1002&currentPage=1">键盘</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/product/findAllProductBytid?tid=1003&currentPage=1">耳机</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/product/findAllProductBytid?tid=1004&currentPage=1">耳机</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/product/findAllProductBytid?tid=1005&currentPage=1">键帽</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/product/findAllProductBytid?tid=1006&currentPage=1">鼠标垫</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/product/findAllProductBytid?tid=1007&currentPage=1">其他配件</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="mainmenu__item menu-item-has-children position-relative">
                                    <a href="#" class="mainmenu__link">Pages</a>
                                    <div class="inner-menu">
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/cart.jsp">Cart</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/cart.jsp">Track Order</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/cart.jsp">Wishlist</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/cart.jsp">My Account</a>
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
                                    ${empty cart.cartItems.size()?0:cart.cartItems.size()}
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
