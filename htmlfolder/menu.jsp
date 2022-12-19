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
    font-size: large;
    font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}

#menu-link:link {
  color: #503524;
}


#menu-link:visited {
  color: #503524;
}


#menu-link:hover {
  color: rgb(27, 15, 0);
}

#menu-link:active {
  color: #503524;
}

#option1{
    position: absolute;
    left: 2%;
    top: 15%;
}

#option2{
    position: absolute;
    left: 0%;
    top: 30%;
    width:100%;
    height: 20%;
    background-color: #F5E9DB;
}
#option2:hover {
  background-color: #e2c8a98e;
}

#option3{
    position: absolute;
    left: 0%;
    top: 45%;
    height: 15%;
    width:100%;
    background-color: #F5E9DB;
}

#option3:hover {
  background-color: #e2c8a98e;
}

#logout-div{
    position: absolute;
    top: 80%;
    left: 38%;
}


#option1 input {
  border-radius: 12px;
  background: #e2c8a98e;
  border: transparent;
  height: 35px;
  width: 100%;
  position: relative;
  font-size: medium;
}
#option1:hover {
  border: transparent;
}
/*#option1 button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

#option1 button:hover {
  background: #ccc;
} */

</style>


<main id="menu_page">

       
  <div id="menu_catalog"> 
    <div id="option1" class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("search.jsp") ? "active" : ""  %>" >
<<<<<<< Updated upstream
=======
<<<<<<< HEAD
      <form action="bookinfo.jsp">
        <input type="text" placeholder="Search a book..." name="search">
=======
>>>>>>> Stashed changes
      <form action="search.jsp">
        <input type="text" placeholder="Search a book.." name="search">
>>>>>>> 126f60674adfb8b0e607d41f9b6521a436b32f51
      </form>
      </li>
    </div>
    <br>
    <div id="option2" class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("bookbrowsing.jsp") ? "active" : ""  %>" >
        <br>
        <a id="menu-link" href="bookbrowsing.jsp"> Explore new books</a>
    </div>
    <br>
    <div id="option3" class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("wishlist.jsp?count=0&time=1") ? "active" : ""  %>" >   
        <br>
        <a id="menu-link" href="wishlist.jsp?count=0&time=1"> Visit your wishlist</a>
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
        <img src="../images/menuIcon.png" alt="">
        <p style="font-size: x-large; color:81420e; font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif; float:right; margin-left: 42%; margin-top: -34%;">  Menu</p>
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

