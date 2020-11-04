<?php
$n = $_POST["num"];


if($n >= 1){
 $total = sum($n);
 print "The total sum of numbers is $total";
}
else
 print "enter a number greater than 1";


function sum($n){
$sumresult = 0;
for($i=0; $i<=$n; $i++){
 $sumresult = $sumresult + $i;
}
 return $sumresult;
}


?>