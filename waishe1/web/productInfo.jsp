<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/24
  Time: 11:39
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
                    <h1 class="page-title">商品详情</h1>
                    <ul class="breadcrumb">
                        <li><a href="index.html">首页</a></li>
                        <li class="current"><span>商品详情</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb area End -->

    <!-- Main Content Wrapper Start -->
    <div class="main-content-wrapper">
        <div class="page-content-inner pt--80 pt-md--60">
            <div class="container">
                <div class="row no-gutters mb--80 mb-md--57">
                    <div class="col-lg-7 product-main-image">
                        <div class="product-image">
                            <div class="product-gallery vertical-slide-nav">
                                <div class="product-gallery__large-image mb-sm--30">
                                    <div class="product-gallery__wrapper">
                                        <div class="element-carousel main-slider image-popup" data-slick-options='{
                                                "slidesToShow": 1,
                                                "slidesToScroll": 1,
                                                "infinite": true,
                                                "arrows": false,
                                                "asNavFor": ".nav-slider"
                                            }'>
                                            <!-- 商品图片  大图 -->
                                            <div class="item">
                                                <figure class="product-gallery__image zoom">
                                                    <img src="${pageContext.request.contextPath}/${product.img_t1}"
                                                         alt="Product">
                                                    <span class="product-badge sale">Sale</span>
                                                    <!-- 查看大图 播放视频 -->
<%--                                                    <div class="product-gallery__actions">--%>
<%--                                                        <button class="action-btn btn-zoom-popup"><i--%>
<%--                                                                class="fa fa-eye"></i></button>--%>
<%--                                                        <a href="https://www.youtube.com/watch?v=Rp19QD2XIGM"--%>
<%--                                                           class="action-btn video-popup"><i--%>
<%--                                                                class="fa fa-play"></i></a>--%>
<%--                                                    </div>--%>
                                                </figure>
                                            </div>
                                            <div class="item">
                                                <figure class="product-gallery__image zoom">
                                                    <img src="${pageContext.request.contextPath}/${product.img_t2}"
                                                         alt="Product">
                                                    <span class="product-badge sale">Sale</span>
                                                </figure>
                                            </div>
                                            <div class="item">
                                                <figure class="product-gallery__image zoom">
                                                    <img src="${pageContext.request.contextPath}/${product.img_t3}"
                                                         alt="Product">
                                                    <span class="product-badge sale">Sale</span>
                                                </figure>
                                            </div>
                                            <div class="item">
                                                <figure class="product-gallery__image zoom">
                                                    <img src="${pageContext.request.contextPath}/${product.img_t4}"
                                                         alt="Product">
                                                    <span class="product-badge sale">Sale</span>
                                                </figure>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-gallery__nav-image">
                                    <div class="element-carousel nav-slider product-slide-nav slick-center-bottom"
                                         data-slick-options='{
                                            "spaceBetween": 10,
                                            "slidesToShow": 3,
                                            "slidesToScroll": 1,
                                            "vertical": true,
                                            "swipe": true,
                                            "verticalSwiping": true,
                                            "infinite": true,
                                            "focusOnSelect": true,
                                            "asNavFor": ".main-slider",
                                            "arrows": true,
                                            "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-up" },
                                            "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-down" }
                                        }' data-slick-responsive='[
                                            {
                                                "breakpoint":1200,
                                                "settings": {
                                                    "slidesToShow": 2
                                                }
                                            },
                                            {
                                                "breakpoint":992,
                                                "settings": {
                                                    "slidesToShow": 3
                                                }
                                            },
                                            {
                                                "breakpoint":767,
                                                "settings": {
                                                    "slidesToShow": 4,
                                                    "vertical": false
                                                }
                                            },
                                            {
                                                "breakpoint":575,
                                                "settings": {
                                                    "slidesToShow": 3,
                                                    "vertical": false
                                                }
                                            },
                                            {
                                                "breakpoint":480,
                                                "settings": {
                                                    "slidesToShow": 2,
                                                    "vertical": false
                                                }
                                            }
                                        ]'>
                                        <!-- 商品图片 小图 -->
                                        <div class="item">
                                            <figure class="product-gallery__nav-image--single">
                                                <img src="${pageContext.request.contextPath}/${product.img_t1}"
                                                     alt="Products">
                                            </figure>
                                        </div>
                                        <div class="item">
                                            <figure class="product-gallery__nav-image--single">
                                                <img src="${pageContext.request.contextPath}/${product.img_t2}"
                                                     alt="Products">
                                            </figure>
                                        </div>
                                        <div class="item">
                                            <figure class="product-gallery__nav-image--single">
                                                <img src="${pageContext.request.contextPath}/${product.img_t3}"
                                                     alt="Products">
                                            </figure>
                                        </div>
                                        <div class="item">
                                            <figure class="product-gallery__nav-image--single">
                                                <img src="${pageContext.request.contextPath}/${product.img_t4}"
                                                     alt="Products">
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 offset-xl-1 col-lg-5 product-main-details mt-md--50">
                        <div class="product-summary pl-lg--30 pl-md--0">
                            <!-- 上一个下一个 -->
                            <!-- <div class="product-navigation text-right mb--20">
                                <a href="#" class="prev"><i class="fa fa-angle-double-left"></i></a>
                                <a href="#" class="next"><i class="fa fa-angle-double-right"></i></a>
                            </div> -->
                            <div class="product-rating d-flex mb--20">
                                <!-- 评分 -->
                                <!-- <div class="star-rating star-four">
                                     <span>Rated <strong class="rating">5.00</strong> out of 5</span>
                                 </div> -->
                            </div>
                            <h3 class="product-title mb--20">${product.pname}</h3>
                            <p class="product-short-description mb--20">${product.pinfo}</p>
                            <!-- 价格 -->
                            <div class="product-price-wrapper mb--25">
                                <c:if test="${product.new_price != product.old_price }">
                                    <span class="money" style="text-decoration: line-through;color: lightgray;font-size: small"><em>${product.old_price}$</em></span>
                                </c:if>
                                <span class="money">&nbsp;$${product.new_price}</span>
                            </div>

                            <form action="#" class="variation-form mb--20">
                                <div class="product-size-variations d-flex align-items-center mb--15">
                                    <p class="variation-label">Size:</p>
                                    <div class="product-size-variation variation-wrapper">
                                        <!-- 商品选择规格 -->
                                        <c:forTokens items="${product.psize}" delims="-" var="size">
                                            <div class="variation">
                                                <a class="product-size-variation-btn selected" data-toggle="tooltip"
                                                   data-placement="top" title="${size}">
                                                    <span class="product-size-variation-label">${size}</span>
                                                </a>
                                            </div>
                                        </c:forTokens>

                                    </div>
                                </div>
                                <!-- <a href="" class="reset_variations">Clear</a> -->
                            </form>
                            <div
                                    class="product-action d-flex flex-sm-row align-items-sm-center flex-column align-items-start mb--30">
                                <div class="quantity-wrapper d-flex align-items-center mr--30 mr-xs--0 mb-xs--30">
                                    <label class="quantity-label" for="pro-qty">Quantity:</label>
                                    <div class="quantity">
                                        <input type="number" class="quantity-input" name="pro-qty" id="pro-qty"
                                               value="1" min="1">
                                    </div>
                                </div>
                                <button type="button" class="btn btn-shape-square btn-size-sm"
                                        onclick="addMultToCart(${product.pid})">
                                    Add To Cart
                                </button>
                            </div>
                            <!-- 商品标签 -->
                            <!--             <div class="product-footer-meta">
                                             <p><span>Category:</span>
                                                 <a href="shop.html">Full Sweater</a>,
                                                 <a href="shop.html">SweatShirt</a>,
                                                 <a href="shop.html">Jacket</a>,
                                                 <a href="shop.html">Blazer</a>
                                             </p>
                                         </div> -->
                        </div>
                    </div>
                </div>
                <!-- 底部分栏 -->
                <div class="row justify-content-center mb--77 mb-md--57">
                    <div class="col-12">
                        <div class="tab-style-1">
                            <div class="nav nav-tabs mb--35 mb-sm--25" id="product-tab" role="tablist">
                                <a class="nav-link active" id="nav-description-tab" data-toggle="tab"
                                   href="#nav-description" role="tab" aria-selected="true">
                                    <span>Description</span>
                                </a>
                                <a class="nav-link" id="nav-info-tab" data-toggle="tab" href="#nav-info" role="tab"
                                   aria-selected="true">
                                    <span>Additional Information</span>
                                </a>
                                <a class="nav-link" id="nav-reviews-tab" data-toggle="tab" href="#nav-reviews"
                                   role="tab" aria-selected="true">
                                    <span>Reviews(1)</span>
                                </a>
                            </div>
                            <!-- 商品描述 -->
                            <div class="tab-content" id="product-tabContent">
                                <div class="tab-pane fade show active" id="nav-description" role="tabpanel"
                                     aria-labelledby="nav-description-tab">
                                    <div class="product-description">
                                        <p>${product.info1}</p>
                                        <p>${product.info2}</p>
                                        <p>${product.pinfo}</p>
                                    </div>
                                </div>
                                <!-- 其他信息 -->
                                <div class="tab-pane fade" id="nav-info" role="tabpanel"
                                     aria-labelledby="nav-info-tab">
                                    <div class="table-content table-responsive">
                                        <table class="table shop_attributes">
                                            <tbody>
                                            <tr>
                                                <th>Weight</th>
                                                <td>57 kg</td>
                                            </tr>
                                            <tr>
                                                <th>Dimensions</th>
                                                <td>160 × 152 × 110 cm</td>
                                            </tr>
                                            <tr>
                                                <th>Color</th>
                                                <td>
                                                    <a href="shop.html">Black</a>,
                                                    <a href="shop.html">Gray</a>,
                                                    <a href="shop.html">Red</a>,
                                                    <a href="shop.html">Violet</a>,
                                                    <a href="shop.html">Yellow</a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- 评论 -->
                                <div class="tab-pane fade" id="nav-reviews" role="tabpanel"
                                     aria-labelledby="nav-reviews-tab">
                                    <div class="product-reviews">
                                        <h3 class="review__title">1 review for Black Blazer</h3>
                                        <ul class="review__list">
                                            <!-- 其他人的评论 -->
                                            <li class="review__item">
                                                <div class="review__container">
                                                    <img src="assets/img/others/comment-1.jpg" alt="Review Avatar"
                                                         class="review__avatar">
                                                    <div class="review__text">
                                                        <div
                                                                class="d-flex flex-sm-row flex-column justify-content-between">
                                                            <div class="review__meta">
                                                                <strong class="review__author">John Snow </strong>
                                                                <span class="review__dash">-</span>
                                                                <span class="review__published-date">November 20,
                                                                        2018</span>
                                                            </div>
                                                            <div class="product-rating">
                                                                <div class="star-rating star-five">
                                                                        <span>Rated <strong class="rating">5.00</strong>
                                                                            out of 5</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <p class="review__description">Aliquam egestas libero ac
                                                            turpis pharetra, in vehicula lacus scelerisque.
                                                            Vestibulum ut sem laoreet, feugiat tellus at, hendrerit
                                                            arcu.</p>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <!-- 添加评论 -->
                                        <div class="review-form-wrapper">
                                            <div class="row">
                                                <div class="col-lg-8">
                                                    <span class="reply-title">Add a review</span>
                                                    <form action="#" class="form pr--30">
                                                        <div class="form-notes mb--20">
                                                            <p>Your email address will not be published. Required
                                                                fields are marked <span class="required">*</span>
                                                            </p>
                                                        </div>
                                                        <div class="form__group mb--10">
                                                            <label class="form__label d-block mb--10">Your Ratings</label>
                                                            <div class="rating">
                                                                <span><i class="fa fa-star"></i></span>
                                                                <span><i class="fa fa-star"></i></span>
                                                                <span><i class="fa fa-star"></i></span>
                                                                <span><i class="fa fa-star"></i></span>
                                                                <span><i class="fa fa-star"></i></span>
                                                            </div>
                                                        </div>
                                                        <div class="form__group mb--10">
                                                            <label class="form__label d-block mb--10" for="review">Your
                                                                Review<span class="required">*</span></label>
                                                            <textarea name="review" id="review"
                                                                      class="form__input form__input--textarea"></textarea>
                                                        </div>

                                                        <div class="form__group">
                                                            <div class="form-row">
                                                                <div class="col-12">
                                                                    <input type="submit" value="Submit Now"
                                                                           class="btn btn-size-md">
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
                </div>
                <div class="row mb--77 mb-md--57">
                    <div class="col-12">
                        <div class="element-carousel slick-vertical-center" data-slick-options='{
                                "spaceBetween": 30,
                                "slidesToShow": 4,
                                "slidesToScroll": 1,
                                "arrows": true,
                                "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "la la-angle-double-left" },
                                "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "la la-angle-double-right" }
                            }' data-slick-responsive='[
                                {"breakpoint":1199, "settings": {
                                    "slidesToShow": 3
                                }},
                                {"breakpoint":991, "settings": {
                                    "slidesToShow": 2
                                }},
                                {"breakpoint":575, "settings": {
                                    "slidesToShow": 1
                                }}
                            ]'>

                            <br><br><br><br><br><br><br><br><br>
                            <!-- 商品框 -->
                            <c:forEach items="${hotProduct}" var="product2" varStatus="tag2">
                                <div class="col-lg-3 col-md-4 col-sm-6 mb--65 mb-md--50">
                                    <div class="payne-product">
                                        <div class="product__inner">
                                            <div class="product__image">
                                                <figure class="product__image--holder">
                                                    <img src="${pageContext.request.contextPath}/${product2.img_t1}" alt="Product">
                                                </figure>
                                                <a href="${pageContext.request.contextPath}/product/findProduct?pid=${product2.pid}" class="product-overlay"></a>
                                            </div>
                                                <%--                    商品信息--%>
                                            <div class="product__info">
                                                <div class="product__info--left">
                                                    <h3 class="product__title">
                                                        <a href="${pageContext.request.contextPath}/product/findProduct?pid=${product2.pid}">${product2.pname}</a>
                                                    </h3>
                                                    <div class="product__price">
                                                        <c:if test="${product2.new_price != product2.old_price }">
                                                            <span class="money" style="text-decoration: line-through;color: lightgray;font-size: small"><em>${product2.old_price}</em><span class="sign">$</span></span>
                                                        </c:if>
                                                        <span class="money">${product2.new_price}</span>
                                                        <span class="sign">$</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </c:forEach>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Main Content Wrapper End -->




    <%@ include file="foot1.jsp"%>
</div>>
<!-- ************************* JS Files ************************* -->

<!-- jQuery JS -->
<script src="${pageContext.request.contextPath}/resources/js/vendor.js"></script>

<!-- Main JS -->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
<script>
    function addMultToCart(pid) {
        var buyNum = $("#pro-qty").val();
        $.ajax({
            type:"get",
            url:"${pageContext.request.contextPath}/carts/addToCart?pid="+pid+"&buyNum="+buyNum,
            success:function (data) {
                if(data.success){
                    // $('.page.dimmer:first').dimmer('toggle')
                    // ;
                    alert("添加成功")
                }

            },
            dataType: "json"
        })
    }
</script>
</html>
