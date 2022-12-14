<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex3_8200067.jsp"%>

<%
session.invalidate();
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="header.jsp" %>
	
	<meta http-equiv="refresh" content="4;url=login.jsp" />
		
	<meta name="description" content=" log out page">
	<meta name="author" content="t8200067@aueb.gr">
	
	<title>Logout</title>
    <link rel="stylesheet" href="../cssfolder/wishlist.css">
	
	
</head>
<body>	
    <img  src="../images/BackgroundImage.png" id="backgroundImage">
    <h1 id="HeadTitle">BookAlly</h1>
    <form id="alert-form"> 
        <h2>Πραγματοποιήθηκε έξοδος από τον λογαριασμό σας!</h2>
    </form>
</body>
</html>