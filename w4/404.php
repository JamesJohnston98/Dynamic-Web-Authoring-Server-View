<?php

$sum = 0;
$product = 1;
$i=0;
$count = 0;
while ($product < 100000){
$roll = rand(1,6); 
print "$roll <br /><br />";
$sum = $sum + $roll;
$product = $product * $roll;
$i = $i + 1;
$count = $count +1;

}

print "$count <br /><br />";
print "$sum <br /><br />"; 
print "$product <br /><br />";

?> 