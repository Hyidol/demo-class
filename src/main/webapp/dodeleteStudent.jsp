<%@ page import="service.ClassService" %>
<%@ page import="service.impl.ClassServiceImpl" %>
<%@ page import="service.StudentService" %>
<%@ page import="service.impl.StudentServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 17:50
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 1
    String studentId = request.getParameter("studentId");
    // 2
    StudentService classService = new StudentServiceImpl();
    classService.removeStudent(Integer.parseInt(studentId));
    // 3
    request.getRequestDispatcher("dostudent.jsp").forward(request,response);
%>
