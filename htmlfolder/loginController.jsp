<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookally.*" %>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");

UserDAO userDao = new UserDAO();

try {

    User userObj2022 = userDao.authenticate(username, password);

    session.setAttribute("authenticated_user", userObj2022);
%>
    <jsp:forward page="wishlist.jsp" />
<%
} catch(Exception e) {

    request.setAttribute("message", e.getMessage());

%>
    <jsp:forward page="login.jsp" />

<%
}
%>