<?php
$data = array(12,3,4,1,5,81,9);
$max_number = find_maximum($data);


function find_maximum($ar){
$maximum = 0;
$length = count($ar);
$max_num = $ar[0];
    
for($i=1; $i < $length; $i++){
if($ar[$i]<$max_num)
$max_num=$ar[$i];
}   
return $max_num;
}
echo $max_number;
?>