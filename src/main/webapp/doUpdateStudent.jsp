<%@ page import="service.ClassService" %>
<%@ page import="service.impl.ClassServiceImpl" %>
<%@ page import="domain.Class" %>
<%@ page import="domain.Student" %>
<%@ page import="service.StudentService" %>
<%@ page import="service.impl.StudentServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 22:59
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 1
    int studentId = Integer.parseInt(request.getParameter("studentid"));
    int classId = Integer.parseInt(request.getParameter("classid"));
    String studentName = request.getParameter("studentname");
    Student stu = new Student(studentName,classId);
    stu.setId(studentId);
    // 2
    StudentService studentService = new StudentServiceImpl();
    Boolean isUpdateStudentOk = null;
    isUpdateStudentOk = studentService.modifyStudent(stu);
    session.setAttribute("isUpdateStudentOk",isUpdateStudentOk);
    // 3
    response.sendRedirect("dostudent.jsp");
%>
