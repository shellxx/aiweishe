<%--
  Created by IntelliJ IDEA.
  User: 96919
  Date: 2020/5/8
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>更新用户</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/rooter/updateUser" method="post" >
    <input type="hidden" name="id" readonly><br>
    <input class="username" type="text" name="username" ><br>
    <input class="password" type="password" name="password"><br>
    <input class="name" type="name" name="name"><br>
    <input class="phone" type="text" name="phone"><br>
    <input class="email" type="email" name="email"><br>
    <input class="address" type="text" name="address"><br>
    <input type="submit" value="确认修改">
</form>
</body>
<script src="${pageContext.request.contextPath}/admin/js/jquery-2.1.4.min.js" charset="utf-8"></script>
<script>
        $.ajax({
        type:"GET",
        url:"${pageContext.request.contextPath}/rooter/selectUserById?id="+${param.id},
       success:function (data) {
       alert(data.uid);
      //json数据设置到对应的input中
        $("input.username").val(data.u_username);
        $("input.password").val(data.u_password);
        $("input.email").val(data.u_email);
        $("input.name").val(data.u_name);
        $("input.phone").val(data.u_phone);
        $("input.address").val(data.u_address) ;
         $("input:hidden").val(data.uid)
    },
        dataType:"json"
    })
</script>
</html>
