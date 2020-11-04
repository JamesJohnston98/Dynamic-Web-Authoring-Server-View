<?php
session_start();
require "connection.php";

if(isset($_POST['login']))
{
    $username = mysqli_real_escape_string($con,$_POST['username']);
    $password = mysqli_real_escape_string($con,$_POST['password']);
    $password = md5($password);
    
    $query = "select * from w18 where username = '$username' AND password = '$password'";
    
    $query_run = mysqli_query($con, $query);
    if(mysqli_num_rows($query_run)>0)
    {
     $_SESSION['username']=$username;
        header('location:home.php');
    }
    else{
    echo '<script type="text/javascript"> alert("invalid username")</script>';
    }
}


?>