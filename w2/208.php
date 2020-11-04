<?php

$name=$_POST["student"];
$mark1=$_POST["mark1"];
$mark2=$_POST["mark2"];
$mark3=$_POST["mark3"];
$mark4=$_POST["mark4"];
    
$total = $mark1 + $mark2 + $mark3 + $mark4;

$average = $total / 4;

print "$name received an average mark of $average";


?>