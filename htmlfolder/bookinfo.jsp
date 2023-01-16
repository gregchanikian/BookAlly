<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookally.*" %>

<html lang="en">
    <head>
      <meta charset="UTF-8">
      <%@ include file="header.jsp" %>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BookInfo</title>
        <link rel="stylesheet" href="../cssfolder/book_info.css">
      </head>

      <body>
    
        <img  src="../images/book_info.png" id="backgroundinfo">
       
        <h1 id="title">BookAlly</h1>


        <%@ include file="menu.jsp" %>
        <%
		    User userObj = (User)session.getAttribute("authenticated_user");
    
        if (userObj == null) {

            request.setAttribute("message", " You can not view the book informations.  Please login.");

        %>
        <jsp:forward page="login.jsp" />
        <% 
        } %>


<% Book asked_book = (Book)request.getAttribute ("search_book");
  if (asked_book == null) {
    BookService bService = new BookService();
    String id_string = request.getParameter("id");
    
    int id = Integer.parseInt(id_string);
    asked_book = (Book)bService.findBook(id);
  }
  
%>
        <img src="../images/<%=asked_book.getBookId() %>.jpg " id="book" >
        <main id="main-holder">
          
            <form id="info-form">
              
                <h2 style=" color: #531604; font-size: 180%; margin: auto; font-weight: bold;  margin-top: 2%; margin-bottom: 2%;  position:relative; width: fit-content;" ><%= asked_book.getTitle() %></h2>
                <div> 
                    <h3  style=" font-size: larger; font-weight: lighter; height: fit-content;"><b>Κατηγορία:</b>  <%= asked_book.getCategory() %> </h3>
                  </div>
                  <div> 
                    <h4 style=" font-size: larger; font-weight: lighter; margin-top: 1%; margin-bottom: 1%;height: fit-content;"><b>Συγγραφέας:  </b> <%=asked_book.getAuthor() %> </h4>
                  </div>
                  <div> 
                    <h5 style=" font-size: larger; font-weight: lighter;margin-top: 1%; margin-bottom: 1%;height: fit-content;"><b>Εκδότης:  </b> <%= asked_book.getEdition() %> </h5>
                  </div>
                  <div> 
                    <h6 style=" font-size: larger; font-weight: lighter;margin-top: 1%; margin-bottom: 1%;height: fit-content;"> <b>Σελίδες:  </b>  <%= asked_book.getPages() %> </h6>
                  </div>
                  <div> 
                    <h7  style=" font-size: larger; font-weight: lighter;margin-top: 1%; margin-bottom: 1%; height: fit-content;"><b> Χρονολογία:  </b>  <%= asked_book.getYear() %>  </h7>
                  </div>
                  <div> 
                    <h8 style=" font-size: larger; font-weight: lighter; margin-top: 1%; margin-bottom: 1% ;height: fit-content;">  <b>Περιγραφή:</b>   </h8>
                  </div>
                  <div > 
                    <h9 style=" font-size: smaller; font-weight: lighter; ">
                        <%= asked_book.getDescription() %> 
                    </h9>
                  </div>
            </form>
           
          </main>
          
          <% BookService existsB = new BookService();
          
      if( existsB.BookInWishlist(asked_book.getBookId(),userObj.getUsername())== false){ 
        %>
        

        
  <a href="addtowishlist.jsp?id=<%=asked_book.getBookId()%>" id="add_book" > + Add this book to your wishlist
    
  </a>

        <%
      } %>
    </body>
    
    </html>