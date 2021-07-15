<%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 14:30
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生管理</title>
</head>
<body>
<a href="addStudent.jsp">增加学生</a>

<table border="1" width="100%">
    <tr>
        <td>学生编号</td>
        <td>学生姓名</td>
        <td>学生班级</td>
        <td>操作</td>
    </tr>

    <c:forEach items="${requestScope.studentPageModel.list}" var="stu">
        <tr>
            <td>${stu.id}</td>
            <td>${stu.name}</td>
            <td>${stu.classId}</td>
            <td>
                <a href="initUpdateStudent.jsp?studentId=${stu.id}">修改</a> /
                <a href="dodeleteStudent.jsp?studentId=${stu.id}">删除</a>
            </td>
        </tr>
    </c:forEach>

</table>
<table border="1" width="100%">
    <tr>
        <td align="center">
            <a href="doclass.jsp?currentPage=${requestScope.studentPageModel.firstPage}">首页</a>
            <a href="doclass.jsp?currentPage=${requestScope.studentPageModel.pageDown}>">上一页</a>
            <a href="doclass.jsp?currentPage=${requestScope.studentPageModel.pageUp}">下一页</a>
            <a href="doclass.jsp?currentPage=${requestScope.studentPageModel.lastPage}">尾页</a>
        </td>
    </tr>
</table>
</body>
</html>
