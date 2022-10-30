 
var mainHolder = document.getElementById("mainHolder");
var button = document.getElementById("create_account");
var loginformsubmit = document.getElementById("loginformsubmit");
var loginformfield = document.getElementById("loginformfield");
var checkbox = document.getElementById("checkbox")

button.onclick = function(){

      
      if(mainHolder.className == "open"){
        loginformsubmit = "";
        mainHolder.className = "";
        checkbox.className = "";
        button.innerHTML = "Create Account";
        location.href = 'wishlist.html';

      } else{
        checkbox.className = "open";
        mainHolder.className = "open";
        button.innerHTML = "Login";
        button.style.fontSize = "140%";

        loginformsubmit.style.display = "none";
        
      }
}