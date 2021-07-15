<%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 11:37
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
<form action="">
    <c:if test="${sessionScope.nowUser==null}">
        <table border="1" width="100%" height="98%">
            <tr>
                <td align="center" colspan="2" bgcolor="#87cefa" height="100px">主页面</td>
            </tr>
            <tr>
                <td align="center" width="200px">
                    <a href="login.jsp" target="iframe">班级管理</a><br><br><br>
                    <a href="login.jsp" target="iframe">学生管理</a>
                </td>
                <td>
                    <iframe src="login.jsp" frameborder="0" name="iframe" width="100%" height="100%">欢迎</iframe>
                </td>
            </tr>
            <tr>
                <td colspan="2" height="30px" align="center">请先登录哦~</td>
            </tr>
        </table>
    </c:if>
    <c:if test="${sessionScope.nowUser!=null}">
        <table border="1" width="100%" height="98%">
            <tr>
                <td align="center" colspan="2" bgcolor="#87cefa" height="100px">主页面</td>
            </tr>
            <tr>
                <td align="center" width="200px">
                    <a href="doclass.jsp" target="iframe">班级管理</a><br><br><br>
                    <a href="dostudent.jsp" target="iframe">学生管理</a>
                </td>
                <td>
                    <iframe src="" frameborder="0" name="iframe" width="100%" height="100%">欢迎</iframe>
                </td>
            </tr>
            <tr>
                <td colspan="2" height="20px" align="center">您好，尊贵的${sessionScope.nowUser.name}~</td>
            </tr>
        </table>
    </c:if>
</form>
</body>
</html>
