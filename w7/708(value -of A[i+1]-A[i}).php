<?php

$A = array(2,1,9,5);

for($i=0;$i<count($A)-1;$i++){
 $b= $A[$i];
 $b=$A[$i+1]-$A[$i];
    echo $b;
}

?>