<?php

$name = $_POST["name"];
$age = $_POST["range"];

if($name = ""){
   print "You must enter a valid name";
}
elseif($age == "a"){
	print "user is too young to become a member";
   }
elseif($age == "b"){
        print "user must pay standard fees";
   }
elseif($age == "c"){
        print "user can receive a 10% discount on fees";
   }


?>
