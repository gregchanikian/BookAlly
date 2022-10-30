 
var mainHolder = document.getElementById("mainHolder");
var button = document.getElementById("create_account");
var loginformsubmit = document.getElementById("loginformsubmit");
var loginformfield = document.getElementById("loginformfield");

button.onclick = function(){

      
      if(mainHolder.className == "open"){
        loginformsubmit = "";
        mainHolder.className = ""; 
        button.innerHTML = "Create Account";
        location.href = 'wishlist.html';

      } else{
        mainHolder.className = "open";
        button.innerHTML = "Login";
        button.style.fontSize = "140%";

        loginformsubmit.style.display = "none";
        
      }
}