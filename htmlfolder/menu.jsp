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
    height: 58%;
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

a { 
    color: black; 
    text-decoration:none;
    font-size: medium;
    font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}

#menu-link:link {
  color: red;
}


#menu-link:visited {
  color: 81420e;
}


#menu-link:hover {
  color: rgb(27, 15, 0);
}

#menu-link:active {
  color: 81420e;
}

#option1{
    position: absolute;
    left: 2%;
    top: 15%;
}

#option2{
    position: absolute;
    left: 2%;
    top: 30%;
}

#option3{
    position: absolute;
    left: 2%;
    top: 45%;
}
#logout-div{
    position: absolute;
    top: 80%;
    left: 38%
}
</style>


<main id="menu_page">

       
  <div id="menu_catalog"> 
    <div id="option1" class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("search.jsp") ? "active" : ""  %>" >
        <a id="menu-link" href="search.jsp">Search</a>
      </li>
    </div>
    <br>
    <div id="option2" class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("bookbrowsing.jsp") ? "active" : ""  %>" >
        <a id="menu-link" href="bookbrowsing.jsp">Explore new books</a>
    </div>
    <br>
    <div id="option3" class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("wishlist.jsp?count=0&time=1") ? "active" : ""  %>" >   
        <a id="menu-link" href="wishlist.jsp?count=0&time=1">Visit your wishlist</a>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div id="logout-div" >
        <a id="menu-link" href="logout.jsp">Logout</a>
    </div>

  </div>
   
</main>
<a id="menu_button">
    <div style=" float:left;  margin-right: 10%; margin-left: 10%; margin-top: 5% ;">
        <img src="../images/menu_icon2.png" alt="">
        <p style="font-size: x-large;  float:right; margin-left: 42%; margin-top: -36%;">  Menu</p>
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

