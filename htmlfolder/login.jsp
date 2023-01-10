<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>BookAlly-Login</title>
  <link rel="stylesheet" href="../cssfolder/index.css">
  <link rel="icon" href="../images/logo.png" type="image/png">
</head>

<body>
    
    <img  src="../images/background_login.png" id="backgroundloginimage">
    
  <main id="mainHolder" method="post">

    
  



    <form id="login_form"  action="loginController.jsp" >
      <h2 id="title"  style="text-align: center; color:#825e41 ; font-size: x-large;" >Login Form</h2>
      <hr>
      <div >
        <h5 style=" font-size: x-large; font-weight: lighter; margin-top: 5%; margin-bottom: 5%; "  >Username</h5>
        <input type="text" name="username" id="username-field" class="loginformfield" placeholder="Enter your username" style="font-size: medium;">
      </div>

      <div style="margin-top: 5%; margin-bottom: 5%;">
        <h5 style=" font-size: x-large; font-weight: lighter; margin-top: 5%; margin-bottom: 5%;  ">Password</h5>
        <input type="Password" name="password" id="password-field" class="loginformfield" placeholder="Enter your password" style="font-size: medium;" > 
      </div> 
      
      <button  id="loginformsubmit" >Login </button>
    </form>
      




    <form id="register_form" action="registerController.jsp" >

      <h2 id="title"  style="text-align: center; color:#825e41 ; font-size: x-large;" >Register Form</h2>

      <hr>


      <div>
        <h5 style=" font-size: x-large; font-weight: lighter; margin-top: 5%; margin-bottom: 5%; "  >Username</h5>
        <input type="text" name="newusername" class="loginformfield" placeholder="Enter your username" style="font-size: medium;">
      </div>


      <div style="margin-top: 5%; margin-bottom: 5%;">
        <h5 style=" font-size: x-large; font-weight: lighter; margin-top: 5%; margin-bottom: 5%;  ">Password</h5>
        <input type="Password" name="newpassword" class="loginformfield" placeholder="Enter your password" style="font-size: medium;" > 
      </div> 


      <div id="cpassword-field">
        <h5 style=" font-size: x-large; font-weight: lighter; margin-top: 5%; margin-bottom: 5%; ">Confirm Password</h5>
        <input type="Password" name="cpassword" class="loginformfield" placeholder="Confirm your password" style="font-size: medium;"  >
      </div>


      <div id="checkbox_title" style="margin-top: 10% ;">
        <p style="margin: 0%;">Book Categories</p>
        <hr style="width: 100%;height: 2px; margin-bottom: 5%;" >
      </div>
      

      <div id="checkbox">
          <div style=" float:left;  margin-right: 10%;">
          <input type="checkbox" name="c1" value="1 " >
          <label for="βιογραφίες-αυτοβιογραφίες "> βιογραφίες-αυτοβιογραφίες <br>

          </label><br>
          <input type="checkbox" name="c2" value="1"> 
          <label for=" τέχνη"> τέχνη <br>

          </label><br>
          <input type="checkbox" name="c3" value="1">
          <label for=" Αστυνομικά-Θρίλερ "> Αστυνομικά-Θρίλερ <br>
             </label><br>
          <input type="checkbox" name="c4" value="1">
          <label for=" Αυτοβελτίωση-Ψυχολογία"> Αυτοβελτίωση-Ψυχολογία <br>

          </label><br>
          <input type="checkbox" name="c5" value="1" > 
          <label for=" Ιστορία"> Ιστορία <br>
            
          </label><br>
          <input type="checkbox" name="c6" value="1" >
          <label for="Ρομαντικά "> Ρομαντικά <br>
          </label><br>
          </div>


          <div style=" float:left;">
          
          <input type="checkbox" name="c7" value="1" >
          <label for="  Οικονομικά "> Οικονομικά <br>

          </label><br>
          <input type="checkbox" name="c8" value="1" > 
          <label for=" Φιλοσοφία "> Φιλοσοφία  <br>

          </label><br>
          <input type="checkbox" name="c9" value="1" > 
          <label for="Ποίηση "> Ποίηση<br>

          </label><br>
          <input type="checkbox" name="c10" value="1" > 
          <label for="Περιπέτεια "> Περιπέτεια <br>

          </label><br>
          <input type="checkbox" name="c11" value="1" > 
          <label for="  Μαγειρική"> Μαγειρική<br>

          </label><br>
          <input type="checkbox" name="c12" value="1" > 
          <label for="Επιστημονικής Φαντασίας"> Επιστημονικής Φαντασίας <br>

          </label><br>
          </div>
      </div>
      <button id="register">Register</button>
    </form>
    <button  id="create_account" >Create Account</button>
      
    <script src="index.js"></script>


  </main>
</body>

</html>