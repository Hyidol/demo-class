<%@ page import="service.ClassService" %>
<%@ page import="service.impl.ClassServiceImpl" %>
<%@ page import="domain.Class" %>
<%@ page import="domain.Student" %>
<%@ page import="service.StudentService" %>
<%@ page import="service.impl.StudentServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 16:10
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 1
    int studentId = Integer.parseInt(request.getParameter("studentId"));
    // 2
    StudentService studentService = new StudentServiceImpl();
    Student nowStudent = null;
    nowStudent = studentService.queryById(studentId);
    request.setAttribute("nowStudent",nowStudent);
    // 3
    request.getRequestDispatcher("updateStudent.jsp").forward(request,response);
%>
