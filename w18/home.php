<?php
session_start();

?>

<!doctype html>
<html>
<head>
<title>Home Page</title>
<link rel = "stylesheet" type = "text/css" href = "css/style.css">
</head>
<body>
<div id = "main-wrapper">
<center><h2>Home</h2></center>
<center><h2>Welcome
<?php echo $_SESSION['username'] ?>
    
</h2>  
</center>
<form class = "registerform" action = "homepage.php" method = "post">
    
<input type = "submit" name = "logout" id = "logout_btn" value = "logout"/><br />
</form>
<?php
    if(isset($_POST['logout'])){
      session_destroy();
      header('location:login.html');
    }
?>
    
</div>
</body>
</html>