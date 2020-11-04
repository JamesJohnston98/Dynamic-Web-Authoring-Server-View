<?php

$names="James Bond, Tom Cruise, Harry Potter, Alan Bob, Bob Glass";

function get_number_names($names){
$comma=true;
$count_comma=0;
while($comma){
$pos=strpos($name, ",", $pos);
if($pos !=false){
$count_comma++;
}
else{
$comma = false;
}
}
print $comma_count;
}




?>