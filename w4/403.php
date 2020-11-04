<?php

$sum = 0;
$product = 1;

for ($i=0; $i<=10; $i++) {
$roll = rand(1,6);
    
$sum = $sum + $roll;
$product = $product * $roll;
print "$roll <br />";
}

print "$sum <br />"; 
print "$product <br />";

?> 