<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/23
  Time: 17:47
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/semantic.css">
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


    <!-- Breadcrumb area Start 面包屑区域-->
    <section class="page-title-area bg-color" data-bg-color="#f4f4f4">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <h1 class="page-title">查看商品</h1>
                    <ul class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}/">首页</a></li>
                        <li class="current"><span>查看商品</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb area End -->

    <!-- Main Content Wrapper Start 主要内容包装器-->
    <div  class="main-content-wrapper">
        <div class="shop-page-wrapper ptb--80">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 col-lg-8 order-lg-2 mb-md--50">
                        <div class="shop-toolbar mb--50">
                            <div class="row align-items-center">
                                <div class="col-md-5 mb-sm--30 mb-xs--10">
                                    <div class="shop-toolbar__left">
                                        <div class="product-ordering">
                                            <select class="product-ordering__select nice-select">
                                                <option value="0">默认排序</option>
                                                <option value="1">按销量从大到小</option>
                                                <option value="2">按销量从小到打</option>
                                                <option value="3">按价格从大到小</option>
                                                <option value="4">按价格从小到大</option>
                                                <!-- <option value="5">Price, high to low</option> -->
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7">
                                    <div class="shop-toolbar__right">
                                        <p class="product-pages">Among  「${products.totalCount}」 </p>
                                        <div class="product-view-mode ml--50 ml-xs--0">
                                            <a class="active" href="#" data-target="grid">
                                                <img src="${pageContext.request.contextPath}/resources/img/icons/grid.png" alt="Grid">
                                            </a>
                                            <a href="#" data-target="list">
                                                <img src="${pageContext.request.contextPath}/resources/img/icons/list.png" alt="Grid">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="shop-products">
                            <div class="row">

                                <c:forEach items="${products.list}" var="product" varStatus="tag">
                                    <%-- 单个商品--%>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="payne-product">
                                            <div class="product__inner">
                                                <div class="product__image">
                                                    <figure class="product__image--holder">
                                                        <img src="${pageContext.request.contextPath}/${product.img_t1}" alt="Product">
                                                    </figure>
                                                    <a href="product-details.html" class="product__overlay"></a>
                                                    <div class="product__action">
                                                        <a data-toggle="modal" data-target="#productModal${tag.index}" class="action-btn">
                                                            <i class="fa fa-eye"></i>
                                                            <span class="sr-only">Quick View</span>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="fa fa-heart-o"></i>
                                                            <span class="sr-only">Add to wishlist</span>
                                                        </a>
                                                        <a href="javascript:void(0)" onclick="addOneToCart(${product.pid})"  class="action-btn" >
                                                            <i class="fa fa-shopping-cart"></i>
                                                            <span class="sr-only">Add To Cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product__info">
                                                    <div class="product__info--left">
                                                        <h3 class="product__title">
                                                            <a href="${pageContext.request.contextPath}/product/findProduct?pid=${product.pid}">${product.pname}</a>
                                                        </h3>
                                                        <div class="product__price">
                                                            <span class="money">${product.new_price}</span>
                                                            <span class="sign">$</span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <!-- 列表方式显示 -->
                                        <div class="payne-product-list">
                                            <div class="product__inner">
                                                <figure class="product__image">
                                                    <a href="product-details.html" class="d-block">
                                                        <img src="${pageContext.request.contextPath}/${product.img_t1}" alt="Products">
                                                    </a>
                                                    <div class="product__thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal${tag.index}" class="action-btn quick-view">
                                                            <i class="fa fa-eye"></i>
                                                            <span class="sr-only">Quick View</span>
                                                        </a>
                                                    </div>
                                                </figure>
                                                <div class="product__info">
                                                    <h3 class="product__title">
                                                        <a href="product-details.html">${product.pname}</a>
                                                    </h3>
                                                    <div class="product__price">
                                                        <span class="money">${product.new_price}</span>
                                                        <span class="sign">$</span>
                                                    </div>

                                                    <span class="product__rating">
                                                        &nbsp;
                                                    </span>

                                                    <p class="product__short-description">
                                                            ${product.pinfo}
                                                    </p>
                                                    <div class="d-flex product__list-action">
                                                        <a href="javascript:void(0)" onclick="addOneToCart(${product.pid})" class="btn btn-size-sm">Add To Cart</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Qicuk View Modal Start -->
                                    <div class="modal fade product-modal" id="productModal${tag.index}" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-body">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true"><i class="flaticon-cross"></i></span>
                                                    </button>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="element-carousel slick-vertical-center" data-slick-options='{
                                    "slidesToShow": 1,
                                    "slidesToScroll": 1,
                                    "arrows": true,
                                    "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-double-left" },
                                    "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-double-right" }
                                }'>
                                                                <div class="item">
                                                                    <figure class="product-gallery__image">
                                                                        <img src="${pageContext.request.contextPath}/${product.img_t1}" alt="Product">
                                                                        <span class="product-badge sale">Sale</span>
                                                                    </figure>
                                                                </div>
                                                                <div class="item">
                                                                    <figure class="product-gallery__image">
                                                                        <img src="${pageContext.request.contextPath}/${product.img_t1}" alt="Product">
                                                                        <span class="product-badge sale">Sale</span>
                                                                    </figure>
                                                                </div>
                                                                <div class="item">
                                                                    <figure class="product-gallery__image">
                                                                        <img src="${pageContext.request.contextPath}/${product.img_t1}" alt="Product">
                                                                        <span class="product-badge sale">Sale</span>
                                                                    </figure>
                                                                </div>
                                                                <div class="item">
                                                                    <figure class="product-gallery__image">
                                                                        <img src="${pageContext.request.contextPath}/${product.img_t1}" alt="Product">
                                                                        <span class="product-badge sale">Sale</span>
                                                                    </figure>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="modal-box product-summary">
                                                                <!-- 这个div留空白-->
                                                                <div class="product-rating d-flex mb--20">
                                                                    <div>
                                                                        <span>&nbsp;</span>
                                                                    </div>
                                                                </div>
                                                                <h3 class="product-title mb--20">${product.pname}</h3>
                                                                <p class="product-short-description mb--20">${product.pinfo}</p>
                                                                <!-- 这个div留空白-->
                                                                <div class="product-rating d-flex mb--20">
                                                                    <div>
                                                                        <span>&nbsp;</span>
                                                                    </div>
                                                                </div>
                                                                <div class="product-price-wrapper mb--25">
                                                                    <span class="money" style="text-decoration: line-through;color: lightgray;font-size: small"><em>${product.old_price}$  </em></span>
                                                                    <!-- 价格区间中间线-->
<%--                                                                    <span class="price-separator">-</span>--%>
                                                                    <span class="money"> ${product.new_price}$</span>
                                                                </div>
                                                                <form action="#" class="variation-form mb--20">
                                                                    <div class="product-size-variations d-flex align-items-center mb--15">
                                                                        <p class="variation-label">Size:</p>
                                                                            <%--size--%>
                                                                        <div class="product-size-variation variation-wrapper">
                                                                            <c:forTokens items="${product.psize}" delims="-" var="size">
                                                                                <div class="variation">
                                                                                    <a class="product-size-variation-btn selected" data-toggle="tooltip"
                                                                                       data-placement="top" title="${product.psize}">
                                                                                        <span class="product-size-variation-label">${size}</span>
                                                                                    </a>
                                                                                </div>
                                                                            </c:forTokens>
                                                                        </div>
                                                                    </div>


<%--                                                                    <a href="" class="reset_variations">Clear</a>--%>
                                                                </form>
                                                                <div class="product-action d-flex flex-sm-row align-items-sm-center flex-column align-items-start mb--30">
                                                                    <div class="quantity-wrapper d-flex align-items-center mr--30 mr-xs--0 mb-xs--30">
                                                                        <label class="quantity-label" for="qty">Quantity:</label>
                                                                        <div class="quantity">
                                                                            <input type="number" class="quantity-input" name="qty" id="qty" value="1"
                                                                                   min="1">
                                                                        </div>
                                                                    </div>
                                                                    <button type="button" class="btn btn-shape-square btn-size-sm"
                                                                            onclick="window.location.href='cart.html'">
                                                                        Add To Cart
                                                                    </button>
                                                                </div>
                                                                <!-- 留为空白 -->
                                                                <div class="product-footer-meta">
                                                                    <p><span>&nbsp;</span></p>
                                                                </div>
                                                                <!-- 留为空白 -->
                                                                <div class="product-footer-meta">
                                                                    <p><span>&nbsp;</span></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Qicuk View Modal End -->
                                </c:forEach>

                            </div>
                        </div>
                        <!--   分页-->
                        <nav class="pagination-wrap">
                            <ul class="pagination">
                                <!--  判断页数-->
                                <c:if test="${products.totalPage == 1}">
                                    <li><span class="page-number current">1</span></li>
                                </c:if>
                                <c:if test="${products.totalPage != 1}">
                                    <!--   循环输出-->
                                    <c:forEach begin="1" end="${products.totalPage}" var="page"  varStatus="status">
                                        <c:if test="${page eq products.currentPage}">
                                            <li><span class="page-number current">${page}</span></li>
                                        </c:if>
                                        <c:if test="${!(page eq products.currentPage)}">
                                            <li><a href="${pageContext.request.contextPath}/product/${empty findType?"findAllProduct":"findAllProductBytid"}?currentPage=${page}" class="page-number">${page}</a></li>
                                        </c:if>
                                    </c:forEach>
                                </c:if>

<%--                                <li><span class="page-number current">1</span></li>--%>
<%--                                <li><a href="#" class="page-number">2</a></li>--%>
<%--                                <li><span class="dot"></span></li>--%>
<%--                                <li><span class="dot"></span></li>--%>
<%--                                <li><span class="dot"></span></li>--%>
<%--                                <li><a href="#" class="page-number">16</a></li>--%>
                            </ul>
                        </nav>
                    </div>

                    <!--   左侧导航栏-->
                    <div class="col-xl-3 col-lg-4 order-lg-1">
                        <aside class="shop-sidebar">
                            <!-- 商品分类 -->
                            <div class="shop-widget mb--40">
                                <h3 class="widget-title mb--25">类别</h3>
                                <ul class="widget-list category-list">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/product/findAllProductBytid?tid=1001&currentPage=1">
                                            <span class="category-title">鼠标</span>
                                            <i class="fa fa-angle-double-right"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/product/findAllProductBytid?tid=1002&currentPage=1">
                                            <span class="category-title">键盘</span>
                                            <i class="fa fa-angle-double-right"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/product/findAllProductBytid?tid=1003&currentPage=1">
                                            <span class="category-title">耳机</span>
                                            <i class="fa fa-angle-double-right"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/product/findAllProductBytid?tid=1004&currentPage=1">
                                            <span class="category-title">音响</span>
                                            <i class="fa fa-angle-double-right"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/product/findAllProductBytid?tid=1005&currentPage=1">
                                            <span class="category-title">键帽</span>
                                            <i class="fa fa-angle-double-right"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/product/findAllProductBytid?tid=1006&currentPage=1">
                                            <span class="category-title">鼠标垫</span>
                                            <i class="fa fa-angle-double-right"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/product/findAllProductBytid?tid=1007&currentPage=1">
                                            <span class="category-title">其他配件</span>
                                            <i class="fa fa-angle-double-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- 价格区间 -->
                            <div class="shop-widget mb--40">
                                <h3 class="widget-title mb--25">Price</h3>
                                <ul class="widget-list price-list">
                                    <li>
                                        <a href="shop.html">
                                            <span>Low - Medium</span>
                                            <strong class="font-weight-medium">$10.00 - $45.00</strong>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="shop.html">
                                            <span>Medium - High</span>
                                            <strong class="font-weight-medium">$45.00 - $60.00</strong>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="shop.html">
                                            <span>High - Avobe</span>
                                            <strong class="font-weight-medium">$60.00 - $200</strong>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- 品牌 brand-->
                            <div class="shop-widget">
                                <h3 class="widget-title mb--25">品牌</h3>
                                <div class="tagcloud">
                                    <a href="shop.html">Cloth</a>
                                    <a href="shop.html">Blazer</a>
                                    <a href="shop.html">Jacket</a>
                                    <a href="shop.html">Polo Shirt</a>
                                    <a href="shop.html">T-Shirt</a>
                                    <a href="shop.html">Shoes</a>
                                    <a href="shop.html">Pant</a>
                                    <a href="shop.html">Party Dress</a>
                                    <a href="shop.html">Coktail Dress</a>
                                    <a href="shop.html">Sweater</a>
                                    <a href="shop.html">Jeans</a>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Main Content Wrapper Start -->

    



    <%@ include file="foot1.jsp"%>
</div>>

<div class="ui page dimmer">
    <div class="content">
        <img src="${pageContext.request.contextPath}/resources/img/tips/addSuccess2.png" alt="添加成功" >
    </div>
</div>
<!-- ************************* JS Files ************************* -->

<!-- jQuery JS -->
<script src="${pageContext.request.contextPath}/resources/js/vendor.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/semantic.js"></script>
<!-- Main JS -->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
<script>
    function addOneToCart(pid) {
        $.ajax({
            type: "get",
            url:"${pageContext.request.contextPath}/carts/addToCart?pid="+pid+"&buyNum="+1,
            success: function (data) {
                if (data.success) {
                    $('.page.dimmer:first')
                        .dimmer('toggle')
                    ;
                }
            },
            dataType:"json"
        })
    }
</script>
</html>
