<?php 
function doubler(&$value){
$value = $value * 2;
}
$a = 3;
doubler($a);
echo $a;
?>