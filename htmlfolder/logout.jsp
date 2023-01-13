<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
	<head>
	<%@ include file="header.jsp" %>
	
	<meta http-equiv="refresh" content="5;url=login.jsp" />
		
	<meta name="description" content="log out page">
	<meta name="author" content="t8200067@aueb.gr">
	<link rel="stylesheet" href="../cssfolder/wishlist.css">
	<title>Logout</title>
	
	</head>
<body>	
	<img  src="../images/BackgroundImage.png" id="backgroundImage">
	<h1 id="HeadTitle">BookAlly</h1>
	<form id="alert-form">
		<center><h2><font color="#825e41">Πραγματοποιήθηκε έξοδος με επιτυχία.  </font><a href="login.jsp"><img style="height:25%; width:5%;" src="../images/LogIn.png"></a></h2></center>
	</form>
	
</body>
</html>


<script>
	function preventBack(){
		window.history.forward();
	}
	setTimeout("preventBack()", 0);
	window.onunload=function(){null};
</script>
