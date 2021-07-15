<%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.15
  Time: 0:10
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="doselectStudent.jsp">
<table width="100%" border="1">
    <tr>
        <td>学生编号</td>
        <td>学生姓名</td>
        <td>班级编号</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${sessionScope.studentPageModel.list}" var="stu">
        <tr>
            <td>1${stu.id}</td>
            <td>${stu.name}</td>
            <td>${stu.classId}</td>
        </tr>
    </c:forEach>
</table>
</form>
<table border="1" width="100%">
    <tr>
        <td align="center">
            <a href="doselectStudent.jsp?currentPage=${requestScope.studentPageModel.firstPage}">首页</a>
            <a href="doselectStudent.jsp?currentPage=${requestScope.studentPageModel.pageDown}>">上一页</a>
            <a href="doselectStudent.jsp?currentPage=${requestScope.studentPageModel.pageUp}">下一页</a>
            <a href="doselectStudent.jsp?currentPage=${requestScope.studentPageModel.lastPage}">尾页</a>
        </td>
    </tr>
</table>
</body>
</html>
