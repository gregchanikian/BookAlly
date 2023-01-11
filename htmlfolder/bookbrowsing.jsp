<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookally.*" %>


<%
    int id;
    UserDAO UserDao  = new UserDAO();
		User userObj = (User)session.getAttribute("authenticated_user");
    
    
Recommendation recommendation = new Recommendation();
id = recommendation.randomRecommendation(userObj.getUsername());

%>  

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BookAlly</title>
  <link rel="stylesheet" href="../cssfolder/bookbrowsing.css">
  <link rel="stylesheet" href="../cssfolder/menu.css">
</head>



<body>
  
  <img  src="../images/background_bookbrowsing.png" id="background_bookbrowsing_image">
  
  <%@ include file="menu.jsp" %>

  
  <h1 id="title">BookAlly</h1>
  


  <img  id="book" src="../images/<%=id%>.jpg">
  
  <a href="" id="discard">
    <img src="../images/discardArrow.png" alt="discardArrow" />
  </a>


  <a href="" id="save">
    <img src="../images/saveArrow.png" alt="saveArrow"  />
  </a>
</body>

</html>