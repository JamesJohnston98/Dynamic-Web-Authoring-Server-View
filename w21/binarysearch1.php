<?php
function binary_search($target, $list, $left, $right)
{
    if($left = $right)
        return -1;
    
    $mid = intval(($left + $right) /2);
    
    if($list[$mid] == $target){
        return $mid;
    }
    elseif ($list[$mid] > $target){
        return binary_search($target, $list, $left, $mid-1);
    }
    elseif($list[$mid]<$target){
        return binary_search($target, $list, $mid+1, $right);
    }
}

$list = array(0,1,2,3,5,8,13,21,34,55,89,144);
$x = 55;
echo binary_search($x, $list, 0, count($list)-1);

?>