<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    
        <div id="div2">
            <hr id="line">
            <img src="../images/6-to_vivlio_tou_hygge.jpg" id="book1">
            <img src="../images/1-i_siwpili_asthenis.jpeg" id="book2">
            <img src="../images/3-nemesis.jpeg" id="book3">
            <img src="../images/1-anemodarmena_ypsi.jpeg" id="book4">
            <img src="../images/4-mikri_istoria_tis_rwsias.png" id="book5">
            <img src="../images/3-20_vimata_mprosta.jpeg" id="book6">
            <img src="../images/9-ola_gia_sena.jpeg" id="book7">
            <img src="../images/6-emeis_i_istoria_mas.jpeg" id="book8">
        </div>

        <a id="a1" href="wishlist.jsp" data-toggle="tooltip" title="Προηγούμενο" >&#8249;</a>
        <a id="a2" href="wishlist.jsp" data-toggle="tooltip" title="Επόμενο">&#8250;</a> 

        <!--<div id="div3">
            <button class="btn btn-primary btn-square-md btn1">home</button>
            <button class="btn btn-primary btn-square-md btn2">library</button>
            <button class="btn btn-primary btn-square-md btn3">search</button>
        </div>!-->

    </body>
</html>
