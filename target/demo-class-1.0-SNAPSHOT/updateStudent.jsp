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
    <title>修改学生</title>
</head>
<body>
<form action="doUpdateStudent.jsp" method="post">
    <table align="center" border="1">
        <tr>
            <td colspan="2" align="center">更新学生</td>
        </tr>
        <tr>
            <td>学生编号</td>
            <td>
                <input type="text" name="studentid" value="${requestScope.nowStudent.id}" readonly>
            </td>
        </tr>
        <tr>
            <td>学生姓名</td>
            <td>
                <input type="text" name="studentname" value="${requestScope.nowStudent.name}">
            </td>
        </tr>
        <tr>
            <td>班级编号</td>
            <td>
                <input type="text" name="classid" value="${requestScope.nowStudent.classId}">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
    <span id="check"></span>
</form>
<script type="text/javascript">
    function check(){
        document.getElementById("check").innerText(${sessionScope.isUpdateStudentOk})
    }
</script>
</body>
</html>
