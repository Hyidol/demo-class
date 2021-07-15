<%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 18:12
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加学生</title>
</head>
<body>
<form action="doaddStudent.jsp" method="post">
    <table align="center" border="1" width="400px">
        <tr>
            <td colspan="2" align="center">增加学生</td>
        </tr>
        <tr>
            <td>学生名</td>
            <td>
                <input type="text" name="studentname" placeholder="请输入新增学生名">
            </td>
        </tr>
        <tr>
            <td>班级编号</td>
            <td>
                <input type="text" name="classid" placeholder="请输入该学生的班级编号">
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