<?php 
$start_number = 1;
$end_number = 10;
$sum_numbers = sum_numbers($start_number, $end_number);

function sum_numbers($sum)
{

$start_number = 1;
$end_number = 10;
$sum = 0;
for($i = $start_number;$i<= $end_number; $i++){
$sum += $i;
}
return $sum;
}

echo $sum_numbers;
?>