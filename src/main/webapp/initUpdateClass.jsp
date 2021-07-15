<%@ page import="service.ClassService" %>
<%@ page import="service.impl.ClassServiceImpl" %>
<%@ page import="domain.Class" %><%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 16:10
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 1
    String classId = request.getParameter("classId");
    // 2
    ClassService classService = new ClassServiceImpl();
    Class nowClass = null;
    nowClass =  classService.queryById(Integer.parseInt(classId));
    request.setAttribute("nowClass",nowClass);
    // 3
    request.getRequestDispatcher("updateClass.jsp").forward(request,response);
%>
