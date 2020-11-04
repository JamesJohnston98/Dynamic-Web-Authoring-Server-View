<?php

function shift($arr){
$len=count($arr);
$tem=$arr[0];
for($i=0; $i<$len-1;$i++){
$arr[$i]=$arr[$i+1];
}
$arr[$len-1]=$tem;
return $arr;
}

$arr = array(2,1,9,5);
$shifted= shift($arr);

for($i=0;$i<count($shifted);$i++){
echo $shifted[$i];
}



?>