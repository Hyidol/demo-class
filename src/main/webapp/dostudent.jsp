<%@ page import="domain.User" %>
<%@ page import="service.UserService" %>
<%@ page import="service.impl.UserServiceImpl" %>
<%@ page import="service.ClassService" %>
<%@ page import="service.impl.ClassServiceImpl" %>
<%@ page import="util.PageModel" %>
<%@ page import="service.StudentService" %>
<%@ page import="service.impl.StudentServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 11:40
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 1
    String currentPage = request.getParameter("currentPage");
    if(currentPage==null || currentPage.equals("")){
        currentPage = "1";
    }
    // 2
    StudentService studentService = new StudentServiceImpl();
    PageModel studentPageModel = studentService.queryPageAll(Integer.parseInt(currentPage),PageModel.PAGE_SIZE);
    request.setAttribute("studentPageModel",studentPageModel);
    // 3
    request.getRequestDispatcher("student.jsp").forward(request,response);
%>