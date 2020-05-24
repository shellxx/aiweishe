<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/20
  Time: 12:30
  To change this template use File | Settings | File Templates.
--%>
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
  <style>
    .homeImage:hover {
      border-bottom: 1px solid #5c5958;
      border-width: 2px;
      text-decoration: none;
    }
    .homeImage:focus{
      text-decoration:underline;
      border-color:transparent;
    }
    .homeImage{
      border-bottom: 1px solid #222;
      border-width: 2px;
    }
  </style>
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

<jsp:include page="header.jsp"></jsp:include>


    <!-- Main Content Wrapper Start -->
    <main class="main-content-wrapper">
    <!-- Slider area Start -->
    <section class="homepage-slider mb--11pt5">
      <div class="element-carousel slick-right-bottom" data-slick-options='{
                    "slidesToShow": 1,
                    "dots": true
                }'>
<%--        轮播推荐--%>
        <c:forEach items="${recommedProduct}" var="product">
          <c:if test="${product.recommend == 1}">
            <div class="item">
              <div class="single-slide d-flex align-items-center bg-image"
                   data-bg-image="resources/img/slider/slider-bg-01.jpg">
                <div class="container">
                  <div class="row align-items-center no-gutters w-100">
                    <div class="col-lg-6 col-md-8">
                      <div class="slider-content">
                        <div class="slider-content__text mb--95 md-lg--80 mb-md--40 mb-sm--15">
                          <h3 class="text-uppercase font-weight-light" data-animation="fadeInUp"
                              data-duration=".3s" data-delay=".3s">${product.brand}</h3>
                          <h1 class="heading__primary mb--40 mb-md--20" data-animation="fadeInUp"
                              data-duration=".3s" data-delay=".3s">${product.pname}</h1>
                          <p class="font-weight-light" data-animation="fadeInUp"
                             data-duration=".3s" data-delay=".3s">${product.recommendInfo}</p>
                        </div>
                        <div class="slider-content__btn">
                            <a href="${pageContext.request.contextPath}/product/findProduct?pid=${product.pid}" class="homeImage"
                               data-animation="fadeInUp" data-duration=".3s" data-delay=".6s"
                            style="font-size: 24px">Shop Now</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-4 offset-lg-2 col-md-4">
                      <figure class="slider-image d-none d-md-block">
                        <div class="bg-cover"><img src="${product.img_recommed}" alt="Slider Image"></div>
                      </figure>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </c:if>
        </c:forEach>

      </div>
    </section>
    <!-- Slider area End -->


      <!-- Featured Product Area Start 特色产品推荐区-->
      <section class="featured-product-area mb--10pt8">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <h2 class="sr-only">Featured Product</h2>
            </div>
          </div>
          <div class="row align-items-center">
            <c:forEach items="${recommedProduct}" var="product">
              <c:if test="${product.recommend == 2}">
                <div class="col-md-6 ">
                  <div class="featured-product">
                    <div class="featured-product__inner info-center">
                      <figure class="featured-product__image">
                        <img src="${product.img_recommed}" alt="Featured Product">
                      </figure>
                      <div class="featured-product__info wow pbounceInLeft" data-wow-delay=".3s" data-wow-duration="1s">
                        <div class="featured-product__info-inner">
                          <h4 class="featured-product__text"><STRONG>${product.recommendInfo}</STRONG></h4>
                          <h3 class="featured-product__name">${product.pname}</h3>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </c:if>
            </c:forEach>

          </div>
        </div>
      </section>
      <!-- Featured Product Area End -->

      <!-- Product Area Start 新品上市-->
      <section class="product-area mb--50 mb-xl--40 mb-lg--25 mb-md--30 mb-sm--20 mb-xs--15">
        <div class="container">
          <div class="row mb--42">
            <div class="col-lg-5 col-sm-10">
              <h2 class="heading__secondary">新品上市</h2>
              <!-- 描述 -->
              <p></p>
            </div>
          </div>
          <div class="row">
            <c:forEach items="${newProduct}" var="product" varStatus="tag">
              <!-- 商品框 -->
              <div class="col-lg-3 col-md-4 col-sm-6 mb--65 mb-md--50">
                <div class="payne-product">
                  <div class="product__inner">
<%--                    产品图片--%>
                    <div class="product__image">
                      <figure class="product__image--holder">
                        <img src="${product.img_t1}" alt="Product">
                      </figure>
                      <a href="${pageContext.request.contextPath}/product/findProduct?pid=${product.pid}" class="product-overlay"></a>
                      <div class="product__action">
                        <a data-toggle="modal" data-target="#productModal${tag.index}" class="action-btn">
                          <i class="fa fa-eye"></i>
                          <span class="sr-only">Quick View</span>
                        </a>
                        <a href="javascript:void(0)" onclick="addToWishlist(${product.pid})" class="action-btn">
                          <i class="fa fa-heart-o"></i>
                          <span class="sr-only">Add to wishlist</span>
                        </a>
                        <a href="javascript:void(0)" onclick="addOneToCart(${product.pid})"  class="action-btn">
                          <i class="fa fa-shopping-cart"></i>
                          <span class="sr-only">Add To Cart</span>
                        </a>
                      </div>
                    </div>
<%--                    产品信息--%>
                    <div class="product__info">
                      <div class="product__info--left" style="width: 275px">
                        <h3 class="product__title">
                          <a href="${pageContext.request.contextPath}/product/findProduct?pid=${product.pid}">${product.pname}</a>
                        </h3>
                        <div class="product__price">
                          <c:if test="${product.new_price != product.old_price }">
                            <span class="money" style="text-decoration: line-through;color: lightgray;font-size: small"><em>${product.old_price}</em><span class="sign">$</span></span>
                          </c:if>
                          <span class="money">${product.new_price}</span>
                          <span class="sign">$</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Qicuk View Modal Start 模态框 -->
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
                                      onclick="addMultToCart(${product.pid});">
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
      </section>
      <!-- Product Area End -->

<%--限时特惠--%>
      <c:forEach items="${recommedProduct}" var="product">
        <c:if test="${product.recommend == 3}">
          <!-- Countdown Product Area Start -->
          <div class="limited-product-area mb--11pt5">
            <div class="container">
              <div class="row">
                <div class="col-lg-6 mb-md--40 mb-sm--45">
                  <div class="limited-product__image">
                    <div class="limited-product__title">
<%--                      侧方隐式水印--%>
                      <h2></h2>
                    </div>
                    <div class="limited-product__large-image">
                      <div class="element-carousel main-slider" data-slick-options='{"slidesToShow": 1,"asNavFor": ".nav-slider"
                                    }'>
                        <div class="item">
                          <figure>
                            <img src="${pageContext.request.contextPath}/${product.img_t1}"
                                 alt="Countdown Product">
                          </figure>
                        </div>
                        <div class="item">
                          <figure>
                            <img src="${pageContext.request.contextPath}/${product.img_t1}"
                                 alt="Countdown Product">
                          </figure>
                        </div>
                        <div class="item">
                          <figure>
                            <img src="${pageContext.request.contextPath}/${product.img_t1}"
                                 alt="Countdown Product">
                          </figure>
                        </div>
                      </div>
                    </div>
                    <div class="limited-product__nav-image">
                      <div class="element-carousel nav-slider" data-slick-options='{
                                        "spaceBetween": 25,
                                        "slidesToShow": 3,
                                        "vertical": true,
                                        "focusOnSelect": true,
                                        "asNavFor": ".main-slider"
                                    }'
                           data-slick-responsive='[
                                        {"breakpoint": 576, "settings": { "vertical": false }}
                                    ]'
                      >


                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-5 offset-xl-1 col-lg-6">
                  <div class="limited-product__info">
                    <h2 class="limited-product__name">
                      <a href="${pageContext.request.contextPath}/product/findProduct?pid=${product.pid}">${product.pname}</a>
                    </h2>
                    <p class="limited-product__desc">${product.pinfo}</p>
                    <div class="d-flex align-items-center">
                      <div class="limited-product__price">
                        <span class="money">${product.new_price}</span>
                        <span class="sign">$</span>
                      </div>
                    </div>
                    <h3 class="limited-product__subtitle">限时特惠！！！</h3>
                    <div class="limited-product__countdown">
                      <div class="countdown-wrap">
                        <div class="countdown" data-countdown="${product.recomm_date3}" data-format="short">
                          <div class="countdown__item">
                            <span class="countdown__time daysLeft">11</span>
                            <span class="countdown__text daysText">22</span>
                          </div>
                          <div class="countdown__item">
                            <span class="countdown__time hoursLeft">33</span>
                            <span class="countdown__text hoursText">44</span>
                          </div>
                          <div class="countdown__item">
                            <span class="countdown__time minsLeft"></span>
                            <span class="countdown__text minsText"></span>
                          </div>
                          <div class="countdown__item">
                            <span class="countdown__time secsLeft"></span>
                            <span class="countdown__text secsText"></span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <a href="${pageContext.request.contextPath}/product/findProduct?pid=${product.pid}" class="homeImage" style="font-size: 24px">立即购买</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Countdown Product Area End -->
        </c:if>
      </c:forEach>



      <!-- Product Area Start  热门商品-->
      <section class="product-area mb--50 mb-xl--40 mb-lg--25 mb-md--30 mb-sm--20 mb-xs--15">
        <div class="container">
          <div class="row mb--42">
            <div class="col-lg-5 col-sm-10">
              <h2 class="heading__secondary">热门商品</h2>
              <!-- 描述 -->
              <p></p>
            </div>
          </div>
          <div class="row">
            <!-- 商品框 -->
            <c:forEach items="${hotProduct}" var="product2" varStatus="tag2">
              <div class="col-lg-3 col-md-4 col-sm-6 mb--65 mb-md--50">
                <div class="payne-product">
                  <div class="product__inner">
                    <div class="product__image">
                      <figure class="product__image--holder">
                        <img src="${product2.img_t1}" alt="Product">
                      </figure>
                      <a href="${pageContext.request.contextPath}/product/findProduct?pid=${product.pid}" class="product-overlay"></a>
                      <div class="product__action">
                        <a data-toggle="modal" data-target="#productModal2${tag2.index}" class="action-btn">
                          <i class="fa fa-eye"></i>
                          <span class="sr-only">Quick View</span>
                        </a>
                        <a href="javascript:void(0)" onclick="addToWishlist(${product2.pid})" class="action-btn">
                          <i class="fa fa-heart-o"></i>
                          <span class="sr-only">Add to wishlist</span>
                        </a>
                        <a href="javascript:void(0)" onclick="addOneToCart(${product2.pid})" class="action-btn">
                          <i class="fa fa-shopping-cart"></i>
                          <span class="sr-only">Add To Cart</span>
                        </a>
                      </div>
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
              <!-- Qicuk View Modal Start 模态框 -->
              <div class="modal fade product-modal" id="productModal2${tag2.index}" tabindex="-1" role="dialog" aria-hidden="true">
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
                                <img src="${pageContext.request.contextPath}/${product2.img_t1}" alt="Product">
                                <span class="product-badge sale">Sale</span>
                              </figure>
                            </div>
                            <div class="item">
                              <figure class="product-gallery__image">
                                <img src="${pageContext.request.contextPath}/${product2.img_t1}" alt="Product">
                                <span class="product-badge sale">Sale</span>
                              </figure>
                            </div>
                            <div class="item">
                              <figure class="product-gallery__image">
                                <img src="${pageContext.request.contextPath}/${product2.img_t1}" alt="Product">
                                <span class="product-badge sale">Sale</span>
                              </figure>
                            </div>
                            <div class="item">
                              <figure class="product-gallery__image">
                                <img src="${pageContext.request.contextPath}/${product2.img_t1}" alt="Product">
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
                            <h3 class="product-title mb--20">${product2.pname}</h3>
                            <p class="product-short-description mb--20">${product2.pinfo}</p>
                            <!-- 这个div留空白-->
                            <div class="product-rating d-flex mb--20">
                              <div>
                                <span>&nbsp;</span>
                              </div>
                            </div>
                            <div class="product-price-wrapper mb--25">
                              <span class="money" style="text-decoration: line-through;color: lightgray;font-size: small"><em>${product2.old_price}$  </em></span>
                              <!-- 价格区间中间线-->
                                <%--                                                                    <span class="price-separator">-</span>--%>
                              <span class="money"> ${product2.new_price}$</span>
                            </div>
                            <form action="#" class="variation-form mb--20">
                              <div class="product-size-variations d-flex align-items-center mb--15">
                                <p class="variation-label">Size:</p>
                                  <%--size--%>
                                <div class="product-size-variation variation-wrapper">
                                  <c:forTokens items="${product2.psize}" delims="-" var="size">
                                    <div class="variation">
                                      <a class="product-size-variation-btn selected" data-toggle="tooltip"
                                         data-placement="top" title="${product2.psize}">
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
                                  <input type="number" class="quantity-input" name="qty" id="qty2" value="1"
                                         min="1">
                                </div>
                              </div>
                              <button type="button" class="btn btn-shape-square btn-size-sm"
                                      onclick="addMultToCart2(${product2.pid});">
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
      </section>
      <!-- Product Area End -->

      <!-- Banner Area Start 底部横幅区，折扣推荐-->
      <section class="banner-area mb--11pt5">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <h2 class="sr-only">Banner Section</h2>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6 mb-lg--50">
              <div class="banner">
                <div class="banner__inner">
<%--                  背景图片白板--%>
                  <div class="banner__info bg-image"
                       data-bg-image="resources/img/banner/banner-bg-01.jpg">
                    <div class="banner__info-inner">
                      <h2 class="banner__title">${discountProduct[0].pname}</h2>
                      <a href="${pageContext.request.contextPath}/product/findProduct?pid=${discountProduct[0].pid}" class="banner__btn">Shop Now</a>
                      <p class="banner__text">现在购买享受<em>  ${discountProduct[0].discount*100}%  </em>的折扣</p>
                    </div>
                  </div>
                  <figure class="banner__image">
                    <img src="${discountProduct[0].img_t1}" alt="${discountProduct[0].pname}" class="w-100">
                  </figure>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="banner">
                <div class="banner__inner">
                  <div class="banner__info bg-image"
                       data-bg-image="resources/img/banner/banner-bg-01.jpg">
                    <div class="banner__info-inner">
                      <h2 class="banner__title">${discountProduct[1].pname}</h2>
                      <a href="${pageContext.request.contextPath}/product/findProduct?pid=${discountProduct[1].pid}" class="banner__btn">Shop Now</a>
                      <p class="banner__text">现在购买享受<em>  ${discountProduct[1].discount*100}%  </em>的折扣</p>
                    </div>
                  </div>
                  <figure class="banner__image">
                    <img src="${discountProduct[1].img_t1}" alt="${discountProduct[0].pname}" class="w-100">
                  </figure>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Banner Area End -->

      <!-- Featured Product Area Start -->
      <section class="featured-product-area mb--11pt5">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <h2 class="sr-only">Featured Product</h2>
            </div>
          </div>

        </div>
      </section>
      <!-- Featured Product Area End -->

      <section class="method-area mb--11pt5">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <h2 class="sr-only">Methods</h2>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 mb-sm--50">
              <div class="method-box shipment-method">
                <i class="flaticon-truck"></i>
                <h3>Free Home Delivery</h3>
              </div>
            </div>
            <div class="col-md-4 mb-sm--50">
              <div class="method-box money-back-method">
                <i class="flaticon-money"></i>
                <h3>MONEY BACK GUARANTEE</h3>
              </div>
            </div>
            <div class="col-md-4">
              <div class="method-box support-method">
                <i class="flaticon-support"></i>
                <h3>SUPORT 24/7</h3>
              </div>
            </div>
          </div>
        </div>
      </section>


    </main>>







  <%@ include file="foot1.jsp"%>
  </div>>
  <%--添加成功提示--%>
  <div class="ui page dimmer">
    <div class="content">
      <img src="${pageContext.request.contextPath}/resources/img/tips/addSuccess2.png" alt="添加成功" >
    </div>
  </div>

  <div class="ui page dimmer wishlist">
    <div class="content">
      <img src="${pageContext.request.contextPath}/resources/img/tips/addwishlist.png" style="width: 250px;" alt="添加成功" >
    </div>
  </div>

  <!-- ************************* JS Files ************************* -->

  <!-- jQuery JS -->
  <script src="resources/js/vendor.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/semantic.js"></script>
  <!-- Main JS -->
  <script src="resources/js/main.js"></script>
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
  function addMultToCart(pid) {
    var buyNum = $("#qty").val();
    $.ajax({
      type:"get",
      url:"${pageContext.request.contextPath}/carts/addToCart?pid="+pid+"&buyNum="+buyNum,
      success:function (data) {
        if(data.success){
          alert("添加成功")
        }
      },
      dataType: "json"
    })
  }
  function addMultToCart2(pid) {
    var buyNum = $("#qty").val();
    $.ajax({
      type:"get",
      url:"${pageContext.request.contextPath}/carts/addToCart?pid="+pid+"&buyNum="+buyNum,
      success:function (data) {
        if(data.success){
          alert("添加成功")
        }
      },
      dataType: "json"
    })
  }
  function addToWishlist(pid) {
    $.ajax({
      type: "get",
      url:"${pageContext.request.contextPath}/user/addWishlist?pid="+pid,
      success: function (data) {
        if(data.success==1){
          alert("收藏成功~")
        }
        if(data.success==2){
          alert("这个商品已经存在心愿单了哟~")
        }
        if(data.success==0){
          alert("您还没有登陆哟，请先登陆后在收藏吧~")
        }

      },
      dataType: "json"
    })
  }

</script>
</html>
