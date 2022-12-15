<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookally.*" %>


<script>
    if(mainHolder.className != "open"){
</script>
    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    UserDAO userDao = new UserDAO();


    try {

        User onlineUser = userDao.authenticate(username, password);

        session.setAttribute("authenticated_user", onlineUser);
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
<script>} else{</script>
    
    <%String newUsername = request.getParameter("username");
    String newPassword = request.getParameter("password");
    String Confirm = request.getParameter("cpassword");
    String checkbox1 = request.getParameter("1");
    String checkbox2 = request.getParameter("2");
    String checkbox3 = request.getParameter("3");
    String checkbox4 = request.getParameter("4");
    String checkbox5 = request.getParameter("5");
    String checkbox6 = request.getParameter("6");
    String checkbox7 = request.getParameter("7");
    String checkbox8 = request.getParameter("8");
    String checkbox9 = request.getParameter("9");
    String checkbox10 = request.getParameter("10");
    String checkbox11 = request.getParameter("11");
    String checkbox12 = request.getParameter("12");

   
    boolean errors = true;
    if ( newPassword.equals(Confirm) && username.length() > 3) {
    errors = false;
    }else{
        errors = true;
    }
    %>	
    
    <% if(!errors) { %>
				
				<%
				try {
					User user =  new User(newUsername, newPassword, 0, checkbox1, checkbox2, checkbox3, checkbox4, checkbox5, checkbox6, checkbox7, checkbox8, checkbox9, checkbox10, checkbox11, checkbox12 );
					UserDAO userDAO = new UserDAO();
					userDAO.createAccount  (user); 
					
				%>

            	<jsp:forward page="wishlist.jsp" />


				<%
				}catch (Exception e) {
					
				%>
				

				<jsp:forward page="wishlist.jsp" />
				
				
				<% } %>


			<% }else{ %>
				
				<jsp:forward page="wishlist.jsp" />
					
				
			<% } %>
	


    


<script>}</script>