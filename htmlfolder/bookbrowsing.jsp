<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
  
  <img  id="book" src="../images/Book.jpg">
  
  <button id="discard">
    <img src="../images/discardArrow.png" alt="discardArrow" />
  </button>


  <button id="save">
    <img src="../images/saveArrow.png" alt="saveArrow"  />
  </button>
</body>

</html>