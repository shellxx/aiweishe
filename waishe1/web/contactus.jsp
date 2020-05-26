<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/24
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>联系我们</title>
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
                    <h1 class="page-title">联系我们</h1>
                    <ul class="breadcrumb">
                        <li><a href="index.html">首页</a></li>
                        <li class="current"><span>联系我们</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb area End -->

    <!-- Main Content Wrapper Start -->
    <main class="main-content-wrapper">
        <div class="page-content-inner pt--75 pt-md--55">
            <!-- Contact Area Start -->
            <section class="contact-area mb--75 mb-md--55">
                <div class="container">
                    <div class="row">

                        <div class="col-md-7 offset-lg-1">
                            <div class="heading mb--40">
                                <h2>联系我们</h2>
                                <hr class="delimeter">
                            </div>
                            <form action="mail.php" class="form" id="contact-form">
                                <input type="email" name="con_email" id="con_email" class="form__input mb--30" placeholder="Email*">
                                <input type="text" name="con_name" id="con_name" class="form__input mb--30" placeholder="Name*">
                                <textarea class="form__input form__input--textarea mb--30" placeholder="Message" id="con_message" name="con_message"></textarea>
                                <button type="submit" class="btn btn-shape-round form__submit">发送</button>
                                <div class="form__output"></div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Contact Area End -->

        </div>
    </main>
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

</script>
</html>
