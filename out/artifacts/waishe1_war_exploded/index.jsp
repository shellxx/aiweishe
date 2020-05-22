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

<jsp:include page="header.jsp"></jsp:include>


    <!-- Main Content Wrapper Start -->
    <main class="main-content-wrapper">
    <!-- Slider area Start -->
    <section class="homepage-slider mb--11pt5">
      <div class="element-carousel slick-right-bottom" data-slick-options='{
                    "slidesToShow": 1,
                    "dots": true
                }'>
        <div class="item">
          <div class="single-slide d-flex align-items-center bg-image"
               data-bg-image="resources/img/slider/slider-bg-01.jpg">
            <div class="container">
              <div class="row align-items-center no-gutters w-100">
                <div class="col-lg-6 col-md-8">
                  <div class="slider-content">
                    <div class="slider-content__text mb--95 md-lg--80 mb-md--40 mb-sm--15">
                      <h3 class="text-uppercase font-weight-light" data-animation="fadeInUp"
                          data-duration=".3s" data-delay=".3s">ROG STRIX FUSION WIRELESS</h3>
                      <h1 class="heading__primary mb--40 mb-md--20" data-animation="fadeInUp"
                          data-duration=".3s" data-delay=".3s">无线游戏耳机</h1>
                      <p class="font-weight-light" data-animation="fadeInUp"
                         data-duration=".3s" data-delay=".3s">ROG STRIX FUSION WIRELESS是
                        FUSION家族里面唯一一款采用2.4G无线方案的游戏耳机，凭借稳定、出色的无线连接，
                        可以让你放心地使用无线模式进行游戏体验，真正抛开线材束缚。</p>
                    </div>
                    <div class="slider-content__btn">
                      <a href="shop.html" class="btn-link" data-animation="fadeInUp"
                         data-duration=".3s" data-delay=".6s">Shop Now</a>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4 offset-lg-2 col-md-4">
                  <figure class="slider-image d-none d-md-block">
                    <div class="bg-cover"><img src="resources/img/slider/FUSION.png" alt="Slider Image"></div>
                  </figure>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="single-slide d-flex align-items-center bg-image"
               data-bg-image="resources/img/slider/slider-bg-01.jpg">
            <div class="container">
              <div class="row align-items-center no-gutters w-100">
                <div class="col-lg-6 col-md-8">
                  <div class="slider-content py-0">
                    <div class="slider-content__text mb--95 md-lg--80 mb-md--40 mb-sm--15">
                      <h3 class="text-uppercase font-weight-light" data-animation="fadeInUp"
                          data-duration=".3s" data-delay=".3s">  ZOMO PLUS</h3>
                      <h1 class="heading__primary mb--40 mb-md--20" data-animation="fadeInUp"
                          data-duration=".3s" data-delay=".3s">「猫爪」键帽</h1>
                      <p class="font-weight-light" data-animation="fadeInUp"
                         data-duration=".3s" data-delay=".3s">价格更亲民的「猫爪」键帽现已登场。
                        键帽猫掌形底座设计，ABS材质打造，虽然质感比不上金属版，但其整体观感基本与之相当。
                        最重要的是肉垫部分材质完全相同，手感一致。这也就是「猫爪」键帽精髓所在。
                        底座与肉垫部分结合采用了超声波粘合技术将三层复合材料组合而成，使得肉垫更为稳固。</p>
                    </div>
                    <div class="slider-content__btn">
                      <a href="shop.html" class="btn-link" data-animation="fadeInUp"
                         data-duration=".3s" data-delay=".6s">Shop Now</a>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4 offset-lg-2 col-md-4">
                  <figure class="slider-image d-none d-md-block">
                    <div class="bg-cover"><img src="resources/img/slider/ZOMO.png" alt="Slider Image"></div>
                  </figure>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Slider area End -->


      <!-- Featured Product Area Start -->
      <section class="featured-product-area mb--10pt8">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <h2 class="sr-only">Featured Product</h2>
            </div>
          </div>
          <div class="row align-items-center">
            <div class="col-md-6 mb-sm--50">
              <div class="featured-product">
                <div class="featured-product__inner info-center">
                  <figure class="featured-product__image">
                    <img src="resources/img/products/product-01-500x466.jpg" alt="Featured Product">
                  </figure>
                  <div class="featured-product__info wow pbounceInLeft" data-wow-delay=".3s" data-wow-duration="1s">
                    <div class="featured-product__info-inner">
                      <h4 class="featured-product__text">Amazing Product!</h4>
                      <h2 class="featured-product__name">Bisco Bag</h2>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="featured-product">
                <div class="featured-product__inner info-left-bottom">
                  <figure class="featured-product__image">
                    <img src="resources/img/products/product-02-500x575.jpg" alt="Featured Product">
                  </figure>
                  <div class="featured-product__info wow pbounceInDown" data-wow-duration="1s">
                    <div class="featured-product__info-inner rotated-info">
                      <h4 class="featured-product__text">Special Offer <strong>39%</strong> Off</h4>
                      <h2 class="featured-product__name">Feedo Bag</h2>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Featured Product Area End -->

      <!-- Product Area Start -->
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
            <!-- 商品框 -->
            <div class="col-lg-3 col-md-4 col-sm-6 mb--65 mb-md--50">
              <div class="payne-product">
                <div class="product__inner">
                  <div class="product__image">
                    <figure class="product__image--holder">
                      <img src="resources/img/products/product-03-270x300.jpg" alt="Product">
                    </figure>
                    <a href="product-details.html" class="product-overlay"></a>
                    <div class="product__action">
                      <a data-toggle="modal" data-target="#productModal" class="action-btn">
                        <i class="fa fa-eye"></i>
                        <span class="sr-only">Quick View</span>
                      </a>
                      <a href="wishlist.html" class="action-btn">
                        <i class="fa fa-heart-o"></i>
                        <span class="sr-only">Add to wishlist</span>
                      </a>
                      <a href="wishlist.html" class="action-btn">
                        <i class="fa fa-repeat"></i>
                        <span class="sr-only">Add To Compare</span>
                      </a>
                      <a href="cart.html" class="action-btn">
                        <i class="fa fa-shopping-cart"></i>
                        <span class="sr-only">Add To Cart</span>
                      </a>
                    </div>
                  </div>
                  <div class="product__info">
                    <div class="product__info--left">
                      <h3 class="product__title">
                        <a href="product-details.html">Lexbaro Begadi</a>
                      </h3>
                      <div class="product__price">
                        <span class="money">132.00</span>
                        <span class="sign">$</span>
                      </div>
                    </div>
                    <div class="product__info--right">
                                            <span class="product__rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- <div class="col-lg-3 col-md-4 col-sm-6 mb--65 mb-md--50">
                <div class="payne-product">
                    <div class="product__inner">
                        <div class="product__image">
                            <figure class="product__image--holder">
                                <img src="resources/img/products/product-04-270x300.jpg" alt="Product">
                            </figure>
                            <a href="product-details.html" class="product-overlay"></a>
                            <div class="product__action">
                                <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                    <i class="fa fa-eye"></i>
                                    <span class="sr-only">Quick View</span>
                                </a>
                                <a href="wishlist.html" class="action-btn">
                                    <i class="fa fa-heart-o"></i>
                                    <span class="sr-only">Add to wishlist</span>
                                </a>
                                <a href="wishlist.html" class="action-btn">
                                    <i class="fa fa-repeat"></i>
                                    <span class="sr-only">Add To Compare</span>
                                </a>
                                <a href="cart.html" class="action-btn">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span class="sr-only">Add To Cart</span>
                                </a>
                            </div>
                        </div>
                        <div class="product__info">
                            <div class="product__info--left">
                                <h3 class="product__title">
                                    <a href="product-details.html">Lexbaro Begadi</a>
                                </h3>
                                <div class="product__price">
                                    <span class="money">132.00</span>
                                    <span class="sign">$</span>
                                </div>
                            </div>
                            <div class="product__info--right">
                                <span class="product__rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->



          </div>
        </div>
      </section>
      <!-- Product Area End -->

      <!-- Countdown Product Area Start -->
      <div class="limited-product-area mb--11pt5">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 mb-md--40 mb-sm--45">
              <div class="limited-product__image">
                <div class="limited-product__title">
                  <h2>商品类型</h2>
                </div>
                <div class="limited-product__large-image">
                  <div class="element-carousel main-slider" data-slick-options='{"slidesToShow": 1,"asNavFor": ".nav-slider"
                                    }'>
                    <div class="item">
                      <figure>
                        <img src="resources/img/products/product-11-321x450.png"
                             alt="Countdown Product">
                      </figure>
                    </div>
                    <div class="item">
                      <figure>
                        <img src="resources/img/products/product-12-321x450.png"
                             alt="Countdown Product">
                      </figure>
                    </div>
                    <div class="item">
                      <figure>
                        <img src="resources/img/products/product-13-321x450.png"
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
                  <a href="product-details.html">商品名称</a>
                </h2>
                <p class="limited-product__desc">商品描述</p>
                <div class="d-flex align-items-center">
                  <div class="limited-product__price">
                    <span class="money">价格</span>
                    <span class="sign">$</span>
                  </div>
                  <span class="limited-product__rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </span>
                </div>
                <h3 class="limited-product__subtitle">限时特惠！！！</h3>
                <div class="limited-product__countdown">
                  <div class="countdown-wrap">
                    <div class="countdown" data-countdown="2020/10/01" data-format="short">
                      <div class="countdown__item">
                        <span class="countdown__time daysLeft"></span>
                        <span class="countdown__text daysText"></span>
                      </div>
                      <div class="countdown__item">
                        <span class="countdown__time hoursLeft"></span>
                        <span class="countdown__text hoursText"></span>
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
                <a href="shop.html" class="btn-link">立即购买</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Countdown Product Area End -->

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
            <div class="col-lg-3 col-md-4 col-sm-6 mb--65 mb-md--50">
              <div class="payne-product">
                <div class="product__inner">
                  <div class="product__image">
                    <figure class="product__image--holder">
                      <img src="assets/img/products/product-03-270x300.jpg" alt="Product">
                    </figure>
                    <a href="product-details.html" class="product-overlay"></a>
                    <div class="product__action">
                      <a data-toggle="modal" data-target="#productModal" class="action-btn">
                        <i class="fa fa-eye"></i>
                        <span class="sr-only">Quick View</span>
                      </a>
                      <a href="wishlist.html" class="action-btn">
                        <i class="fa fa-heart-o"></i>
                        <span class="sr-only">Add to wishlist</span>
                      </a>
                      <a href="wishlist.html" class="action-btn">
                        <i class="fa fa-repeat"></i>
                        <span class="sr-only">Add To Compare</span>
                      </a>
                      <a href="cart.html" class="action-btn">
                        <i class="fa fa-shopping-cart"></i>
                        <span class="sr-only">Add To Cart</span>
                      </a>
                    </div>
                  </div>
                  <div class="product__info">
                    <div class="product__info--left">
                      <h3 class="product__title">
                        <a href="product-details.html">Lexbaro Begadi</a>
                      </h3>
                      <div class="product__price">
                        <span class="money">132.00</span>
                        <span class="sign">$</span>
                      </div>
                    </div>
                    <div class="product__info--right">
                                            <span class="product__rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- <div class="col-lg-3 col-md-4 col-sm-6 mb--65 mb-md--50">
                <div class="payne-product">
                    <div class="product__inner">
                        <div class="product__image">
                            <figure class="product__image--holder">
                                <img src="assets/img/products/product-04-270x300.jpg" alt="Product">
                            </figure>
                            <a href="product-details.html" class="product-overlay"></a>
                            <div class="product__action">
                                <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                    <i class="fa fa-eye"></i>
                                    <span class="sr-only">Quick View</span>
                                </a>
                                <a href="wishlist.html" class="action-btn">
                                    <i class="fa fa-heart-o"></i>
                                    <span class="sr-only">Add to wishlist</span>
                                </a>
                                <a href="wishlist.html" class="action-btn">
                                    <i class="fa fa-repeat"></i>
                                    <span class="sr-only">Add To Compare</span>
                                </a>
                                <a href="cart.html" class="action-btn">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span class="sr-only">Add To Cart</span>
                                </a>
                            </div>
                        </div>
                        <div class="product__info">
                            <div class="product__info--left">
                                <h3 class="product__title">
                                    <a href="product-details.html">Lexbaro Begadi</a>
                                </h3>
                                <div class="product__price">
                                    <span class="money">132.00</span>
                                    <span class="sign">$</span>
                                </div>
                            </div>
                            <div class="product__info--right">
                                <span class="product__rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->



          </div>
        </div>
      </section>
      <!-- Product Area End -->

      <!-- Banner Area Start -->
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
                  <div class="banner__info bg-image"
                       data-bg-image="resources/img/banner/banner-bg-01.jpg">
                    <div class="banner__info-inner">
                      <h2 class="banner__title">LUXURY BACKPACK</h2>
                      <a href="shop.html" class="banner__btn">Shop Now</a>
                      <p class="banner__text">GET EXTRA DISCOUNT 26% OFF</p>
                    </div>
                  </div>
                  <figure class="banner__image">
                    <img src="resources/img/banner/banner-01.jpg" alt="Banner" class="w-100">
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
                      <h2 class="banner__title">SUPERIOR BACKPACK</h2>
                      <a href="shop.html" class="banner__btn">Shop Now</a>
                      <p class="banner__text">GET EXTRA DISCOUNT 26% OFF</p>
                    </div>
                  </div>
                  <figure class="banner__image">
                    <img src="resources/img/banner/banner-02.jpg" alt="Banner" class="w-100">
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
  <!-- ************************* JS Files ************************* -->

  <!-- jQuery JS -->
  <script src="resources/js/vendor.js"></script>

  <!-- Main JS -->
  <script src="resources/js/main.js"></script>
  </body>
</html>
