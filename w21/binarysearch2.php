<?php
function iterative_binary_search($target, $list){
    $left = 0;
    $right = count($list)-1;
    
    while($left<=$right){
        $mid = intval(($left + $right)/2);
        if($list[$mid] == $target){
            return $mid;
        }elseif($list[$mid]>$target){
            $right = $mid - 1;
        }elseif($list[$mid]<$target){
            $left = $mid + 1;
        }
    }
    return -1;
}

$list = array(0,1,2,3,5,8,13,21,34,55,89,144);
$x = 55;
echo iterative_binary_search($x, $list, 0, count($list)-1);

?>