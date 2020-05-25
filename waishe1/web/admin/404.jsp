<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/25
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Standard Meta -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link rel="image_src" type="${pageContext.request.contextPath}/admin/image/jpeg" href="logo" />
    <link rel="icon" href="${pageContext.request.contextPath}/admin/img/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/admin/img/favicon.ico" type="image/x-icon" />
    <!-- Site Properities -->
    <meta name="generator" content="Visual Studio 2015" />
    <title>404 | Stagb Admin</title>
    <meta name="description" content="Stagb Admin Template" />
    <meta name="keywords" content="html5, ,semantic,ui, library, framework, javascript,jquery,admin,template" />
    <link href="semantic/dist/semantic.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/admin/css/main.css" rel="stylesheet" />
</head>
<body class="error404">
<div class="ui container" style="padding-top:5%">
    <div class="ui grid center aligned">
        <div class="row">
            <div class="sixteen wide tablet ten wide computer column">

                <div class="ui container center aligned errorcontainer">
                    <h1 class="ui header inverted">
                        Oooops! Sorry The Page Not Found :(
                    </h1>
                    <a class="ui button" href="index.html">
                        Return the Homepage
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
