<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/25
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--navbar-->
<div class="navslide navwrap">
    <div class="ui menu icon borderless grid" data-color="inverted white">
        <a class="item labeled openbtn">
            <i class="ion-navicon-round big icon"></i>
        </a>
        <a class="item labeled expandit" onclick="toggleFullScreen(document.body)">
            <i class="ion-arrow-expand big icon"></i>
        </a>

        <div class="right menu colhidden">

            <div class="ui dropdown item labeled icon">
                <i class="bell icon"></i>
                <div class="ui red label mini circular">6</div>
            </div>
            <div class="ui dropdown item">
                <img class="ui mini circular image" src="${pageContext.request.contextPath}/resources/img/others/avatar-large-2.png" alt="label-image" />
                <div class="menu">
                    <a class="item" href="mail.html">Inbox</a>
                    <a class="item" href="profile.html">Profile</a>
                    <a class="item" href="settings.html">Settings</a>
                    <div class="ui divider"></div>
                    <a class="item">Need Help?</a>
                    <a class="item" href="login.html">Sign Out</a>
                </div>
            </div>


        </div>
    </div>
</div>
<!--navbar-->
</body>
</html>
