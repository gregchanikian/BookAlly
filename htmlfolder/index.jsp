<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>BookAlly-Login</title>
  <link rel="stylesheet" href="../cssfolder/index.css">
</head>

<body>
    
    <img  src="../images/background_login.png" id="backgroundloginimage">
    
  <main id="mainHolder">
    <form id="login-form">

      <div >
        <h5 style=" font-size: larger; font-weight: lighter; margin-top: 5%; margin-bottom: 4%; "  >Username</h5>
        <input type="text" name="username" id="username-field" class="loginformfield" >
      </div>

      <div style="margin-top: 15%; ">
        <h5 style=" font-size: larger; font-weight: lighter;margin-top: 5%; margin-bottom: 4%;">Password</h5>
        <input type="Password" name="password" id="password-field" class="loginformfield" >
      </div> 
      <br>
      <br>
      <button formaction="wishlist.html" id="loginformsubmit">Login </button>

      <div id="checkbox_title">
        <p >Book Categories</p>
        <hr style="width: 100%;height: 2px;" >
      </div>
      
      <div id="checkbox">
        
        
        <form >  
          <div id="column_1">
          <input type="checkbox" name="category" value="1 " >
          <label for="βιογραφίες-αυτοβιογραφίες ">βιογραφίες-αυτοβιογραφίες </label>
          <input type="checkbox" name="category" value="2"> 
          <label for=" τέχνη">τέχνη </label>
          <input type="checkbox" name="category" value="3">
          <label for=" Αστυνομικά-Θρίλερ ">Αστυνομικά-Θρίλερ  </label>
          <input type="checkbox" name="category" value="4">
          <label for=" Αυτοβελτίωση-Ψυχολογία"> Αυτοβελτίωση-Ψυχολογία</label>
          <input type="checkbox" name="category" value="5" > 
          <label for=" Ιστορία">Ιστορία </label>
          <input type="checkbox" name="category" value="6" >
          <label for="Ρομαντικά ">Ρομαντικά </label>
          </div>
          <div id="column_2">
          <input type="checkbox" name="category" value="7" >
          <label for="  Οικονομικά ">Οικονομικά </label>
          <input type="checkbox" name="category" value="8" > 
          <label for=" Φιλοσοφία ">Φιλοσοφία  </label>
          <input type="checkbox" name="category" value="9" > 
          <label for="Ποίηση "> Ποίηση</label>
          <input type="checkbox" name="category" value="10" > 
          <label for="Περιπέτεια ">Περιπέτεια </label>
          <input type="checkbox" name="category" value="11" > 
          <label for="  Μαγειρική"> Μαγειρική</label>
          <input type="checkbox" name="category" value="12" > 
          <label for="Επιστημονικής Φαντασίας">Επιστημονικής Φαντασίας </label>
          </div> 
        </form>
      </div>

      <a id="create_account" >Create Account</a> 
      <script src="index.js"></script>
     
    </form>

  
  </main>
</body>

</html>