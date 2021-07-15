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
    <title>班级管理</title>
</head>
<body>
<a href="addClass.jsp">增加班级</a>

<table border="1" width="100%">
    <tr>
        <td>班级编号</td>
        <td>班级名</td>
        <td>操作</td>
    </tr>

    <c:forEach items="${requestScope.classPageModel.list}" var="cla">
        <tr>
            <td>${cla.id}</td>
            <td>${cla.name}</td>
            <td>
                <a href="doselectStudent.jsp?classId=${cla.id}">查看</a> /
                <a href="initUpdateClass.jsp?classId=${cla.id}">修改</a> /
                <a href="dodeleteClass.jsp?classId=${cla.id}">删除</a>
            </td>
        </tr>
    </c:forEach>

</table>
<table border="1" width="100%">
    <tr>
        <td align="center">
            <a href="doclass.jsp?currentPage=${requestScope.classPageModel.firstPage}">首页</a>
            <a href="doclass.jsp?currentPage=${requestScope.classPageModel.pageDown}>">上一页</a>
            <a href="doclass.jsp?currentPage=${requestScope.classPageModel.pageUp}">下一页</a>
            <a href="doclass.jsp?currentPage=${requestScope.classPageModel.lastPage}">尾页</a>
        </td>
    </tr>
</table>
</body>
</html>
