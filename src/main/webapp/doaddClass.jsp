<%@ page import="service.ClassService" %>
<%@ page import="service.impl.ClassServiceImpl" %>
<%@ page import="domain.Class" %><%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 18:16
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 1
    String className = request.getParameter("classname");
    // 2
    ClassService classService = new ClassServiceImpl();
    Class cla = new Class(className);
    classService.addClass(cla);
    // 3
    response.sendRedirect("doclass.jsp");
%>
