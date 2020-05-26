<%--
  Created by IntelliJ IDEA.
  User: 96919
  Date: 2020/5/26
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>更新用户</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/rooter/updateProduct" method="post" >
    <input type="hidden" name="id" readonly><br>
    商品名称 :<input class="username" type="text" name="username" ><br>
    商品规格 :<input class="password" type="text" name="password"><br>
    <input type="submit" value="确认修改">
</form>
</body>
<script src="${pageContext.request.contextPath}/admin/js/jquery-2.1.4.min.js" charset="utf-8"></script>
<script>
    $.ajax({
        type:"GET",
        url:"${pageContext.request.contextPath}/rooter/selectProductById?id="+${param.id},
        success:function (data) {
            alert(1111);
            alert(data.pid);
            //json数据设置到对应的input中
            $("input.username").val(data.pname);
            $("input.password").val(data.t_id);
            $("input:hidden").val(data.pid)
        },
        dataType:"json"
    })
</script>
</html>

