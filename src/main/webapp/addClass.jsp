<%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 18:12
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加班级</title>
</head>
<body>
<form action="doaddClass.jsp" method="post">
    <table align="center" border="1">
        <tr>
            <td colspan="2" align="center">增加班级</td>
        </tr>
        <tr>
            <td>班级名</td>
            <td>
                <input type="text" name="classname" placeholder="请输入新增班级名">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
</body>
</html>