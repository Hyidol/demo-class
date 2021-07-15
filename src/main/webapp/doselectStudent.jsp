<%@ page import="service.ClassService" %>
<%@ page import="service.impl.ClassServiceImpl" %>
<%@ page import="domain.Class" %>
<%@ page import="domain.Student" %>
<%@ page import="service.StudentService" %>
<%@ page import="service.impl.StudentServiceImpl" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="util.PageModel" %><%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.15
  Time: 0:13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 1
    int classId = Integer.parseInt(request.getParameter("classId"));
    String currentPage = request.getParameter("currentPage");
    if(currentPage==null || currentPage.equals("")){
        currentPage = "1";
    }
    // 2
    StudentService studentService = new StudentServiceImpl();
    PageModel studentPageModel = studentService.queryPageByClassId(classId,Integer.parseInt(currentPage),PageModel.PAGE_SIZE);
    request.setAttribute("studentPageModel",studentPageModel);
    session.setAttribute("studentPageModel",studentPageModel);
    // 3
    response.sendRedirect("selectStudent.jsp");
%>
