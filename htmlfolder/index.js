 
var mainHolder = document.getElementById("mainHolder");
var button = document.getElementById("create_account");
var login_form = document.getElementById("login_form");
var register_form = document.getElementById("register_form");



button.onclick = function(){

      
      if(mainHolder.className == "open"){
        
        login_form.className = "";
        register_form.className = "";
        mainHolder.className = "";
        button.innerHTML = "Create Account";
        location.href = 'registerController.jsp';

      } else{
        login_form.className = "open";
        register_form.className = "open";
        mainHolder.className = "open";
        button.style.display = "none";
        button.style.fontSize = "140%";
        
      }
}