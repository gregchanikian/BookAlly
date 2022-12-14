<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookally.*" %>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BookInfo</title>
        <link rel="stylesheet" href="../cssfolder/book_info.css">
        <link rel="icon" href="../images/logo.png" type="image/png">
        <link rel="stylesheet" href="../cssfolder/menu.css">
      </head>

      <body>
    
        <img  src="../images/book_info.png" id="backgroundinfo">
        <img src="../images/book.jpg" id="book" >

        <h1 id="title">BookAlly</h1>


<%@ include file="menu.jsp" %>

<%  BookService bService = new BookService();
    String id = request.getParameter("id");

    Book asked_book = (Book)bService.findBook(Integer.parseInt(id));
%>

        <main id="main-holder">
            <form id="info-form">
              
                <h2 style=" color: #531604; font-size: 180%; margin: auto; font-weight: bold;  margin-top: 2%; margin-bottom: 2%;  position:relative; width: fit-content;" ><%= asked_book.getTitle() %></h2>
                <div> 
                    <h3  style=" font-size: larger; font-weight: lighter; height: fit-content;">Κατηγορία: + <%= asked_book.getCategory() %> </h3>
                  </div>
                  <div> 
                    <h4 style=" font-size: larger; font-weight: lighter; margin-top: 1%; margin-bottom: 1%;height: fit-content;">Συγγραφέας: + <%=asked_book.getAuthor() %> </h4>
                  </div>
                  <div> 
                    <h5 style=" font-size: larger; font-weight: lighter;margin-top: 1%; margin-bottom: 1%;height: fit-content;">Εκδότης: + <%= asked_book.getEdition() %> </h5>
                  </div>
                  <div> 
                    <h6 style=" font-size: larger; font-weight: lighter;margin-top: 1%; margin-bottom: 1%;height: fit-content;"> Σελίδες: + <%= asked_book.getPages() %> </h6>
                  </div>
                  <div> 
                    <h7  style=" font-size: larger; font-weight: lighter;margin-top: 1%; margin-bottom: 1%; height: fit-content;"> Χρονολογία:  + <%= asked_book.getYear() %>  </h7>
                  </div>
                  <div> 
                    <h8 style=" font-size: larger; font-weight: lighter; margin-top: 1%; margin-bottom: 1% ;height: fit-content;">  Περιγραφή:   </h8>
                  </div>
                  <div > 
                    <h9 style=" font-size: smaller; font-weight: lighter; ">
                        <%= asked_book.getDescription() %> 
                    </h9>
                  </div>
            </form>
        </main>
        
      
    </body>
    
    </html>