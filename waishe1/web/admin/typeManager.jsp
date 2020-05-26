<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/25
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script src="${pageContext.request.contextPath}/admin/js/jquery-2.1.4.min.js" charset="utf-8"></script>

<head>
    <meta charset="utf-8">
    <title>后台管理界面</title>
    <link rel="icon" href="${pageContext.request.contextPath}/admin/img/logo.ico" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/admin/img/logo.ico" />
    <!-- semantic ui css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/semantic/dist/semantic.css"/>
    <!-- 一些图标 -->
    <link href="${pageContext.request.contextPath}/admin/plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
    <!-- Sidebar -->
    <link href="${pageContext.request.contextPath}/admin/css/main.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/admin/plugins/datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/admin/plugins/chartist/chartist.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/admin/css/chat-page.css" rel="stylesheet" />
</head>
<script>
    $(function(){
        //为删除按钮添加点击事件
        $("button.del").click(function(){
            //点击按钮谈一个确认弹框 删除+xxx的姓名
            //tong过当前按纽获取username的值,this代表当前对象,dom对象
            var name = $(this).parent().siblings("td.username").text();
            if (confirm("确定要删除类别"+name+"的信息吗?")){
                //1.删除表中数据
                $.ajax({
                    type:"GET",
                    url:"${pageContext.request.contextPath}/rooter/deleteByTId?id="+$(this).parent().siblings("td.id").text(),
                    success:function(data){
                        alert(data.success);
                        if(data.success){
                            //2.删除一行
                            $(this).parent().parent().remove();
                        }else{
                            alert("删除失败")
                        }
                    },
                    dataType:"json"
                });
            }
        });
    })
</script>

<body>
<div id="contextWrap">
    <%@ include file="leftbar.jsp"%>


    <!-- 中间主体部分 -->
    <div class="pusher">
        <%@ include file="navbar.jsp"%>

        <%--主体内容--%>
        <!--maincontent-->
        <div class="mainWrap navslide">
            <div class="ui equal width left aligned padded grid stackable">

                <table class="ui violet selectable celled table">
                    <thead>
                    <tr>
                        <th>类别编号</th>
                        <th>类别名称</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:if test="${!empty userList}">
                        <c:forEach var="type" items="${userList}" varStatus="index">
                            <%--      每循环 一次都要写一行         --%>
                            <tr>
                                <td class="id">${type.t_id}</td>
                                <td class="username">${type.t_name}</td>
                                <td><a href="${pageContext.request.contextPath}/admin/updateProduct.jsp?id=${product.pid}">修改</a></td>
                                <td><button class="del" style='text-decoration:underline'>删除</button></td>
                            </tr>
                        </c:forEach>
                    </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<c:if test="${empty userList}">
    没有查找到任何数据！
</c:if>
</body>
<!-- script -->
<!-- jquery -->
<!-- semantic -->
<script src="${pageContext.request.contextPath}/admin/semantic/dist/semantic.js" charset="utf-8"></script>
<!-- <script src="js/semantic.min.js"></script> -->
<!--counter number-->
<script src="${pageContext.request.contextPath}/admin/plugins/counterup/jquery.counterup.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/counterup/waypoints.min.js"></script>


<!--flot chart弗洛特图-->
<script src="${pageContext.request.contextPath}/admin/plugins/flot/jquery.flot.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/flot/curvedLines.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/cookie/js.cookie.js"></script>
<!--flot chart-->
<!--chartjs chart图表-->
<script src="${pageContext.request.contextPath}/admin/plugins/chartjs/chart.min.js"></script>

<script src="${pageContext.request.contextPath}/admin/plugins/nicescrool/jquery.nicescroll.min.js"></script>
<script data-pace-options='{ "ajax": false }' src="${pageContext.request.contextPath}/admin/plugins/pacejs/pace.js"></script>



<script src="${pageContext.request.contextPath}/admin/plugins/chartist/chartist.min.js"></script>

<script src="${pageContext.request.contextPath}/admin/js/dashboard2.js"></script>
<!-- main.js -->
<script src="${pageContext.request.contextPath}/admin/js/main.js"></script>
</html>
