<?php
function bubble_sort($data){
$length = count($data);
do{
$swapped = false;
for($i=0;$i<$length-1;$i++){
if($data[$i]>$data[$i+1]){
$swapped = true;
$temp = $data[$i];
$data[$i] = $data[$i+1];
$data[$i+1] = $temp;
}
}
}while($swapped);
return $data;
}
$unsorted = array(5,2,12,-5,16);
$sorted=bubble_sort($unsorted);

for($i=0;$i<count($sorted);$i++){
print(+$sorted[$i]);
print(",");
}
?>