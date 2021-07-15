<%@ page import="service.ClassService" %>
<%@ page import="service.impl.ClassServiceImpl" %>
<%@ page import="domain.Class" %><%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 17:57
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 1
    int classId = Integer.parseInt(request.getParameter("classid"));
    String className = request.getParameter("classname");
    Class cla = new Class(className);
    cla.setId(classId);
    // 2
    ClassService classService = new ClassServiceImpl();
    classService.modifyClass(cla);
    // 3
    response.sendRedirect("dostudent.jsp");
%>
