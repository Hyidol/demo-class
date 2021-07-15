<%@ page import="domain.User" %>
<%@ page import="service.UserService" %>
<%@ page import="service.impl.UserServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: Yuhua
  Date: 21.7.14
  Time: 11:40
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 1
    String userName = request.getParameter("username");
    String userPsd = request.getParameter("password");
    User user = new User(userName,userPsd);
    // 2
    UserService userService = new UserServiceImpl();
    User user1 = userService.login(user);
    String path = "login.jsp";
    if(user1!=null){
        path = "welcome.jsp";
    }
    session.setAttribute("nowUser",user1);
    // 3
    response.sendRedirect(path);
%>