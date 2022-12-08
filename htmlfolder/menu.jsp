<!--<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="t8200067@aueb.gr">
        <link rel="icon" href="../images/logo.png" type="image/png">
        <title>Menu</title>
        <link rel="stylesheet" href="../cssfolder/menu.css">
    </head>
    <body>
        <img  src="../images/BackgroundImage.png" id="backgroundImage">
        <h1 id="HeadTitle">BookAlly</h1>
        <main id="menu-bar">
            <div id="divi">
                <a href="bookbrowsing.html" id="abtn" data-toggle="tooltip" title="Book Recommendations">
                    <button class="btn btn-primary btn-square-md btn1"><img src="../images/plus-icon.png"></button>
                </a>
                <a href="wishlist.html" id="abtn" data-toggle="tooltip" title="Visit Your Library">
                    <button class="btn btn-primary btn-square-md btn2"><img src="../images/library-icon.png"></button>
                </a>
                <button class="btn btn-primary btn-square-md btn3"><img src="../images/search-icon.png"></button>
            </div>
        </main>
    </body>
</html>--> 

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
     #menu_page {
    width: 7%;
    height: 5%;
    position: absolute;
    left: 2%;
    top: 3%;
    display: grid;
    align-items: center;
    justify-items: center;
    background-color: #F5E9DB;
    border-radius: 40px;

    
    overflow: hidden;
    
    /*transition*/
    -webkit-transition: height 1s;
    -moz-transition: height 1s;
    transition: height 1s;

    -webkit-transition: width 0.7s;
    -moz-transition: width 0.7s;
    transition:width 0.7s;
     }

    #menu_page.open{
    height: 70%;
    width: 13%;
    
    

    -webkit-transition: height 0.8s;
    -moz-transition: height 0.8s;
    transition:height 0.8s;

    -webkit-transition: width 1.2s;
    -moz-transition: width 1.2s;
    transition:width 1.2s;
  }
  
  #menu_button{
    position: absolute;
    left: 2%;
    top: 3%;

    width: 7%;
    height: 5%;

    align-items: center;
  }
</style>


<main id="menu_page">
    
        
</main>
<a id="menu_button">
    <div style=" float:left;  margin-right: 10%; margin-left: 15%; margin-top: 5% ;">
        <img src="../images/menu_icon.png" alt="">
    </div>
    <p style="font-size: x-large;  float:left;  margin-top: 10%;">Menu</p>
</a>




<script>
var menu_page = document.getElementById("menu_page");
var button = document.getElementById("menu_button");
var link1 = document.getElementById("link1");
var link2 = document.getElementById("link2");
var link3 = document.getElementById("link3")



button.onclick = function(){

      
      if(menu_page.className == "open"){
        
        menu_page.className = "";
       

      } else{
        
        menu_page.className = "open";
        
      }
}

</script>