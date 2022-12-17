<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookally.*" %>

<%
String newusername = request.getParameter("newusername");
String newpassword = request.getParameter("newpassword");
String Confirm = request.getParameter("cpassword");
String checkbox1 = request.getParameter("c1");
String checkbox2 = request.getParameter("c2");
String checkbox3 = request.getParameter("c3");
String checkbox4 = request.getParameter("c4");
String checkbox5 = request.getParameter("c5");
String checkbox6 = request.getParameter("c6");
String checkbox7 = request.getParameter("c7");
String checkbox8 = request.getParameter("c8");
String checkbox9 = request.getParameter("c9");
String checkbox10 = request.getParameter("c10");
String checkbox11 = request.getParameter("c11");
String checkbox12 = request.getParameter("c12");


UserDAO userDAO = new UserDAO();
boolean errors = false;  

if(!errors) { 
				
    
    try {
        
        User user =  new User(newusername, newpassword, 0, "1", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1" );
        userDAO.createAccount(user);  
    %>

    <jsp:forward page="bookbrowsing.jsp" />
    <%
    }catch (Exception e) {
        request.setAttribute("message", e.getMessage());
    
     } %>
     <jsp:forward page="login.jsp" />

<% }else{ %>
   

<% } %>

