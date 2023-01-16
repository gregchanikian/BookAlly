<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookally.*" %>

    <%
    String idS = request.getParameter("id");
    int id = Integer.parseInt(idS);


    UserDAO UserDao  = new UserDAO();
    User userObj = (User)session.getAttribute("authenticated_user");
    Recommendation recommendation = new Recommendation();

    recommendation.addToWishlist(id, userObj.getUsername());

    String types = request.getParameter("type");

    if( types.equals("search")){
    %>  
    <jsp:forward page="book_info.jsp" />
    <% }%>

    <jsp:forward page="bookbrowsing.jsp" />
   