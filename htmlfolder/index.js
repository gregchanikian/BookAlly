 
var mainHolder = document.getElementById("mainHolder");
var button = document.getElementById("create_account");
var loginformsubmit = document.getElementById("login-form-submit");
var rememberMe = document.getElementById("rememberMe");
var loginformfield = document.getElementById("loginformfield");

button.onclick = function(){

      
      if(mainHolder.className == "open"){
        loginformsubmit = "";
        mainHolder.className = ""; 
        button.innerHTML = "Create Account";

      } else{
        mainHolder.className = "open";
        button.innerHTML = "Login";
        loginformfield.className = "open";

        loginformsubmit.style.display = "none";
        rememberMe.style.display = "none";


        const preference = document.createElement("input");
        
      }
}