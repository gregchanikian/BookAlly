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
            <%if(books != null){
            %>
            <hr id="line">
            <%
            int countBooks = 0;
            int counter = 0;
            for (Book book: books){
                countBooks += 1;
                counter += 1;
            %>   
                <a href="bookinfo.jsp?id=<%=book.getBookId() %>"><img src="../images/<%=book.getBookId() %>.jpg" id="book<%=countBooks%>"></a>
                <% if(countBooks == 8){
                    countBooks = 0;
                    if((books.size() - counter) > 0){
                %>
                        <a id="a2" href="wishlist.jsp" data-toggle="tooltip" title="Επόμενο">&#8250;</a>
                <%  }
                  }
                if(counter > 8){
                %>
                    <a id="a1" href="wishlist.jsp" data-toggle="tooltip" title="Προηγούμενο" >&#8249;</a>
                <%}
            }
            }else{
            %>
            <form id="alert-form">
                <h2><font color="#81420e">Η wishlist σου είναι άδεια.Explore new books!</font></h2>
            </form>
            <%
            }
            %>
        </div>
            
    </body>  
</html>