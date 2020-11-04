<?php
$week = array('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');

$number = count($week);
    
print "$number <br />";

sort($week);
foreach($week as $item){
    print "$item";
}

?>