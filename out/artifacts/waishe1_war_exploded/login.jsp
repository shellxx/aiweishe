<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/20
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Title</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- ************************* CSS Files ************************* -->

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/semantic.css"/>
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
                    <h1 class="page-title">登陆</h1>
                    <ul class="breadcrumb">
                        <li><a href="index.html">首页</a></li>
                        <li class="current"><span>登录</span></li>
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
                            <div class="user-dashboard-tab__head nav flex-md-column" role="tablist" aria-orientation="vertical" style="background-color: white;">
                                <a class="nav-link" data-toggle="pill" role="tab" href="#logindetail" aria-controls="logindetail" aria-selected="true">登陆</a>
                                <a class="nav-link" data-toggle="pill" role="tab" href="#register" aria-controls="register" aria-selected="true">注册</a>
                            </div>
                            <div class="user-dashboard-tab__head nav flex-md-column" role="tablist" aria-orientation="vertical" style="background-color: white;">
                            </div>
                            <div class="user-dashboard-tab__content tab-content">

                                <div class="tab-pane fade active show" id="logindetail">
                                    <span class="form__notes"><em>还没有账号？点击左侧按钮立即注册</em></span>
                                    <form action="#" class="form form--account" id="login_form">

                                        <div class="row mb--20">
                                            <div class="col-12">
                                                <div class="form__group">
                                                    <label class="form__label" for="login_username">用户名 <span class="required">*</span></label>
                                                    <input type="text" name="username" id="login_username" class="form__input">
                                                    <span class="form__notes"><em></em></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mb--20">
                                            <div class="col-12">
                                                <div class="form__group">
                                                    <label class="form__label" for="login_password">密码 <span class="required">*</span></label>
                                                    <input type="password" name="password" id="login_password" class="form__input">
                                                </div>
                                            </div>
                                        </div>
                                        <!--                                            <div class="row mb--20">
                                                                                        <div class="col-12">
                                                                                            <div class="form__group">
                                                                                                <label class="form__label" for="email">验证码 <span class="required">*</span></label>
                                                                                                <input type="email" name="email" id="email" class="form__input">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div> -->

                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form__group" style="text-align: center;">
                                                    <input type="button" id="login_submit" value="登陆" class="btn">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
<%--                                注册模块--%>
                                <div class="tab-pane fade" id="register">
                                    <form action="${pageContext.request.contextPath }/user/register" method="post" class="form form--account" id="register_form">

                                        <div class="row mb--20">
                                            <div class="col-12">
                                                <div class="form__group r_username">
                                                    <label class="form__label" for="username">用户名 <span class="required">*</span></label>
                                                    <input type="text" name="username" id="username" class="form__input">
                                                    <span class="form__notes"><em></em></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mb--20">
                                            <div class="col-12">
                                                <div class="form__group">
                                                    <label class="form__label" for="password">密码 <span class="required">*</span></label>
                                                    <input type="password" name="password" id="password" class="form__input"  data-toggle="tooltip"
                                                           data-placement="bottom" title="密码至少8位">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mb--20">
                                            <div class="col-12">
                                                <div class="form__group">
                                                    <label class="form__label" for="cofirm_password">确认密码 <span class="required">*</span></label>
                                                    <input type="password" id="cofirm_password" class="form__input">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mb--20">
                                            <div class="col-12">
                                                <div class="">
                                                    <label class="form__label" for="email">邮箱 <span class="required">*</span></label>
                                                    <div class="input-group">
                                                        <input type="email" name="email" id="email" class="form__input" style="width: 400px">
                                                        <span class="ui input-group-btn">
                                                        <button class="btn small button" type="button" id="sendCheckCode">发送验证码</button>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mb--20">
                                            <div class="col-12">
                                                <div class="form__group">
                                                    <label class="form__label" for="code">验证码 <span class="required">*</span></label>
                                                    <input type="text" name="code" id="code" class="form__input">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form__group" style="text-align: center;">
                                                    <input type="button" id="reg_submit" value="注册" class="btn">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="user-dashboard-tab__head nav flex-md-column" role="tablist" aria-orientation="vertical" style="background-color: white;">
                            </div>
                            <div class="user-dashboard-tab__head nav flex-md-column" role="tablist" aria-orientation="vertical" style="background-color: white;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Main Content Wrapper Start -->


<jsp:include page="foot1.jsp"></jsp:include>
<%--    <%@ include file="foot1.jsp"%>--%>

</div>


<!-- ************************* JS Files ************************* -->

<!-- jQuery JS -->
<script src="${pageContext.request.contextPath}/resources/js/vendor.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/semantic.js"></script>
<!-- Main JS -->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
<script>
    $(function () {
            $("#reg_submit").click(function () {
                $.ajax({
                    type: "post",
                    url: "${pageContext.request.contextPath}/user/register",
                    data:$("#register_form").serialize(),
                    success:function (data) {
                        if(data.success) {
                            alert("注册成功！");
                            //回到首页
                            location.href = location.href
                        }
                    },
                    dataType:"json"
                })
            });

        $("#login_submit").click(function () {
            $.ajax({
                type: "post",
                url:"${pageContext.request.contextPath}/user/login",
                data:$("#login_form").serialize(),
                success: function (data) {
                    if (data.success) {
                        alert("登陆成功！");
                        location.href = "index.jsp";
                    }else{
                        alert("用户名或密码错误！");
                    }

                },
                dataType: "json"
            })

        });
    })
</script>
</html>
