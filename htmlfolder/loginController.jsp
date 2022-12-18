<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookally.*" %>


    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    UserDAO userDao = new UserDAO();


    try {

        User onlineUser = userDao.authenticate(username, password);

        session.setAttribute("authenticated_user", onlineUser);
    %>
        <jsp:forward page="wishlist.jsp?count=0&time=1" />
    <%
    } catch(Exception e) {
      request.setAttribute("message", e.getMessage());
    %>
        <jsp:forward page="login.jsp" />

    <%
    }
    %>



