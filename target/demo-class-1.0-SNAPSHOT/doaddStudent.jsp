<%@ page import="service.ClassService" %>
<%@ page import="service.impl.ClassServiceImpl" %>
<%@ page import="domain.Class" %>
<%@ page import="service.StudentService" %>
<%@ page import="service.impl.StudentServiceImpl" %>
<%@ page import="domain.Student" %><%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 18:16
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 1
    String studentName = request.getParameter("studentname");
    int classid = Integer.parseInt(request.getParameter("classid"));
    // 2
    StudentService studentService = new StudentServiceImpl();
    Student stu = new Student(studentName,classid);
    studentService.addStudent(stu);
    // 3
    response.sendRedirect("dostudent.jsp");
%>
