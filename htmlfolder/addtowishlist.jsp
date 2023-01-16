<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookally.*" %>

    <%
    String idS = request.getParameter("id");
    int id = Integer.parseInt(idS);

    String typeString = request.getParameter("type");
    int type = Integer.parseInt(typeString);

    UserDAO UserDao  = new UserDAO();
    User userObj = (User)session.getAttribute("authenticated_user");
    Recommendation recommendation = new Recommendation();

    recommendation.addToWishlist(id, userObj.getUsername());

    
    
    %>  

    <jsp:forward page="bookbrowsing.jsp" />