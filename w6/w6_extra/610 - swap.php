<?php
$arr = array(2,1,9,5);
for($a=0;$a<count($arr);$a=$a+2){
    
$c=$arr[$a];
$arr[$a] = $arr[$a+1];
$arr[$a+1]=$c;
}
print_r($arr);
?>