<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookally.*,java.util.List" %>

<%BookService bookSer  = new BookService();
List <Book> books = bookSer.getBooks();
UserDAO UserDao  = new UserDAO();
List<User> users = UserDao.getUsers();

%>

<html>
    <head>
        <%@ include file="header.jsp" %>
        <title>Wishlist</title>
        <link rel="stylesheet" href="../cssfolder/wishlist.css">
    </head>
    <body>

        <img  src="../images/BackgroundImage.png" id="backgroundImage">
        <%@ include file="menu.jsp" %>
        <h1 id="HeadTitle">BookAlly</h1>

        <%
		User userObj = (User)session.getAttribute("authenticated_user");
		%>


		<%
        if (userObj == null) {

            request.setAttribute("message", " You can not have a wishlist without an account.  Please login.");

        %>
        <jsp:forward page="login.jsp" />
        <% 
        }
        
        books = bookSer.searchBook(userObj.getUsername());
        %>


        
        <div id="div2">
            <hr id="line">
            <a href="bookinfo.jsp"><img src="../images/3-2_lekseis_mono.jpg" id="book1"></a>
            <a href="bookinfo.jsp"><img src="../images/10-ta-taboy-ths-istorias.jpg" id="book2"></a>
            <a href="bookinfo.jsp"><img src="../images/1-anamesa_se_ilithious.jpg" id="book3"></a>
            <a href="bookinfo.jsp"><img src="../images/8-oi_treis_apotychies.jpeg" id="book4"></a>
            <a href="bookinfo.jsp"><img src="../images/8-helones_sto_apeiro.jpeg" id="book5"></a>
            <a href="bookinfo.jsp"><img src="../images/4-aoratos_martyras.jpg" id="book6"></a>
            <a href="bookinfo.jsp"><img src="../images/8-enas_apo_emas_leei_psemata.jpg" id="book7"></a>
            <a href="bookinfo.jsp"><img src="../images/8-pagkosmia_politiki_istoria.jpg" id="book8"></a>
        </div>
        
        <%if (books.size() > 8){
        %>
            <a id="a2" href="wishlist2.jsp" data-toggle="tooltip" title="Επόμενο">&#8250;</a>
        <%}
        %>    
    </body>  
</html>