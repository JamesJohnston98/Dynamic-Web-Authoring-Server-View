<?php
function get_larger($num1, $num2){
if($num1>$num2){
 return($num1);
}else{
 return($num2);
}
}
$larger = get_larger(10,20);
print "Larger number is $larger";

?>