<%@ page import="service.ClassService" %>
<%@ page import="service.impl.ClassServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 17:50
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 1
    String classId = request.getParameter("classId");
    // 2
    ClassService classService = new ClassServiceImpl();
    classService.removeClass(Integer.parseInt(classId));
    // 3
    response.sendRedirect("doclass.jsp");
%>
