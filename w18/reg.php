
<?php
require 'connection.php';
if(isset($_POST['submit_btn'])){
    
    
   $username = mysqli_real_escape_string($con, $_POST['username']);
   $password = mysqli_real_escape_string($con, $_POST['password']);
   $cpassword = mysqli_real_escape_string($con, $_POST['cpassword']);
    
    $pattern = "/^[0-9][A-Za-z]){6,}/"
       if(preg_match($pattern, $password)){
           echo '<script type = "text/javascript">alert("Password is ok)';
       }
        else {
          echo '<script type = "text/javascript">alert("Please Login Password requires Upper and Lower case letters and numbers and a minimum of 6 characters)'; 
        }
}
    if($password == $cpassword)
    {
       $encrypted_password = md5($password);
       $query= "select * from w18 WHERE username = '$username'";
        $query_run= mysqli_query($con,$query);
        
        if(mysqli_num_rows($query_run)>0)
        {
            echo '<script type="text/javascript"> alert("Username is already taken. Please select another)</script>';
        }
        else
        {
            $query = "insert into w18 values('$username','$encrypted_password')";
            $query_run = mysqli_query($con,$query);
            
            if($query_run)
            {
             echo '<script type="text/javascript"> alert("User Registered successfully. Please go to the login page")</script>';
            }
            else{
                echo '<script type = "text/javascript"> alert("error!")</script>';
        }
        
    }
}
else{
    echo '<script type="text/javascript"> alert("Passwords do not match)';
}
?>
<!doctype html>
<html>
<head>
<title>Registration</title>
<link rel = "stylesheet" type = "text/css" href = "css/style.css">
</head>
<body>
<div id = "main-wrapper">
<center><h2>Registration Form</h2></center>

<form class = "registerform" action = "reg.php" method = "post">
    <label><b>Username:</b></label><br />
<input type = "text" name = "username" class = "inputvalues" placeholder = "Type your username" required/><br />
    <label><b>Password:</b></label><br />
<input type = "password" name = "password" class = "inputvalues" placeholder = "Enter Password"required/><br />
    <label><b>Confrim Password:</b></label><br />
<input type = "password" name = "cpassword" class = "inputvalues" placeholder = "Confirm Password" required/><br />
<input type = "submit" name = "submit_btn" id = "signup_btn" value = "Sign Up"/><br />
<a href = "login.html"><input type = "button" id = "back_btn" value = "back"/></a><br />
</form>
    </div>
</body>
</html>