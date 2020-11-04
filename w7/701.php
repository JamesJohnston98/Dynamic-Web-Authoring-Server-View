<?php

$data=array[2,4,6,0,-11,20];
$min_number=find_min_num($data);

function find_min_num($ar){
    $len = count($ar);
    $min_num = $ar[0];
    
 for($i=1; $i<$len;$i++){
    if($ar[$i]<$min_num)
      $min_num=$ar[$i];
 }
 return $min_num;
}
echo $min_number;
?>