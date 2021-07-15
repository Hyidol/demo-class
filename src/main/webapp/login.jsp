<%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 11:38
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>登录页</title>
</head>
<body>
<form action="dologin.jsp">
<table align="center" border="1" width="400px">
    <tr>
        <td colspan="2" align="center">用户登录</td>
    </tr>
    <tr>
        <td>用户名</td>
        <td><input type="text" id="username" name="username" placeholder="请输入6位的用户名"></td>
    </tr>
    <tr>
        <td>密码</td>
        <td><input type="password" id="password" name="password" placeholder="请输入6-9位的密码"></td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <input type="submit" value="提交" onclick="check()">
            <input type="reset" value="重置">
        </td>
    </tr>
</table>
</form>
<script type="text/javascript">
    function check(){
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        if(username.length!=6){
            alert("您的用户名不为6位！");
        }
        if(password.length<6 || password.length>9){
            alert("您的密码不为6-9位！");
        }
    }
</script>
</body>
</html>
