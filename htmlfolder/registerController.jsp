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
int checkboxCount = 0;


if (!(checkbox1 == null)) {
    checkboxCount++;
}
if (!(checkbox2 == null)) {
    checkboxCount++;
}
if (!(checkbox3 == null)) {
    checkboxCount++;
}
if (!(checkbox4 == null)) {
    checkboxCount++;
}
if (!(checkbox5 == null)) {
    checkboxCount++;
}
if (!(checkbox6 == null)) {
    checkboxCount++;
}
if (!(checkbox7 == null)) {
    checkboxCount++;
}
if (!(checkbox8 == null)) {
    checkboxCount++;
}
if (!(checkbox9 == null)) {
    checkboxCount++;
}
if (!(checkbox10 == null)) {
    checkboxCount++;
}
if (!(checkbox11 == null)) {
    checkboxCount++;
}
if (!(checkbox12 == null)) {
    checkboxCount++;
}



boolean errors = true;  
if ( newpassword.equals(Confirm) && newusername.length() > 3 && checkboxCount > 3) {
    errors = false;
}

if(!errors) { 
				
    
    try {
        
        User user =  new User(newusername, newpassword, 0, checkbox1, checkbox2 , checkbox3, checkbox4, checkbox5, checkbox6, checkbox7, checkbox8, checkbox9, checkbox10, checkbox11, checkbox12 );
        userDAO.createAccount(user);  
    %>

    <jsp:forward page="bookbrowsing.jsp" />
    <%
    }catch (Exception e) {
        request.setAttribute("message", e.getMessage());
    
     } %>
     <jsp:forward page="login.jsp" />

<% }else{ 
   
    if (!( newpassword.equals(Confirm))){
        request.setAttribute("message", "Password and Confirm DO NOT match!");
    }
    if ( newusername.length() <= 3 ){
        request.setAttribute("message", "Username must contain more than 3 characters!");
    }
    if ( checkboxCount < 4 ){
        request.setAttribute("message", "You must choose more than 3 Book Categories!");
    }%>

    <jsp:forward page="login.jsp" />
<% } %>

