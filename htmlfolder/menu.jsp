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
    -webkit-transition: height 0.8s;
    -moz-transition: height 0.8s;
    transition:height 0.8s;

    -webkit-transition: width 1.2s;
    -moz-transition: width 1.2s;
    transition:width 1.2s;
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

    width: 10%;
    height: 5%;

    align-items: center;
  }

  #menu_catalog{
    display: none;
  }

  #menu_catalog.open{
    display: unset;
  }

</style>


<main id="menu_page">

  <div id="menu_catalog"> 
    <a href="bookbrowsing.jsp">hjfgdfg</a>
    <br>
    <a href="bookbrowsing.jsp">hjfgdfg</a>
    <br>
    <a href="bookbrowsing.jsp">hjfgdfg</a>

  </div>
        
</main>
<a id="menu_button">
    <div style=" float:left;  margin-right: 10%; margin-left: 10%; margin-top: 5% ;">
        <img src="../images/menu_icon2.png" alt="">
        <p style="font-size: x-large;  float:right; margin-left: 42%; margin-top: -30%;">Menu</p>
    </div>

    
</a>




<script>
var menu_page = document.getElementById("menu_page");
var button = document.getElementById("menu_button");
var Menu = document.getElementById("menu_catalog");




button.onclick = function(){

      
      if(menu_page.className == "open"){
        
        menu_page.className = "";
        Menu.className = "";
       

      } else{
        
        menu_page.className = "open";
        Menu.className = "open";
        
      }
}


</script>

