 
var mainHolder = document.getElementById("mainHolder");
var button = document.getElementById("create_account");
var loginformsubmit = document.getElementById("loginformsubmit");
var loginformfield = document.getElementById("loginformfield");
var checkbox = document.getElementById("checkbox")
var checkbox_title = document.getElementById("checkbox_title")
var form_title = document.getElementById("title")
var confirm_password = document.getElementById("cpassword-field")

button.onclick = function(){

      
      if(mainHolder.className == "open"){
        loginformsubmit = "";
        mainHolder.className = "";
        checkbox.className = "";
        checkbox_title.className = "";
        confirm_password.className = "";
        button.innerHTML = "Create Account";
        location.href = 'wishlist.jsp';

      } else{
        checkbox.className = "open";
        mainHolder.className = "open";
        checkbox_title.className = "open";
        confirm_password.className = "open";
        button.innerHTML = "Login";
        button.style.fontSize = "140%";

        loginformsubmit.style.display = "none";
        form_title.innerHTML = "Create Account"
        
      }
}