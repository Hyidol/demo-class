<%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 16:06
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改班级</title>
</head>
<body>
<form action="doUpdateClass.jsp" method="post">
    <table align="center" border="1">
        <tr>
            <td colspan="2" align="center">更新班级</td>
        </tr>
        <tr>
            <td>班级编号</td>
            <td>
                <input type="text" name="classid" value="${requestScope.nowClass.id}" readonly>
            </td>
        </tr>
        <tr>
            <td>班级名</td>
            <td>
                <input type="text" name="classname" value="${requestScope.nowClass.name}">
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
