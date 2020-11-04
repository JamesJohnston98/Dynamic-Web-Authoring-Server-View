<?php
function reverse_r($str){
    if(strlen($str)>0)
        reverse_r(substr($str, 1));
    echo substr($str, 0, 1);
    return;
}

reverse_r('Hello');
echo "<br />";
reverse_r('ello');
echo "<br />";
reverse_r('llo');
echo "<br />";
reverse_r('o');
echo "<br />";
reverse_r('');


?>