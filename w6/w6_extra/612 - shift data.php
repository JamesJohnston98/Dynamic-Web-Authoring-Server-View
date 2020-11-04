<?php
function shift($data){
$len=count($data);
$tem=$data[0];
for($i=0;$i<$len-1;$i++){
$data[$i]=$data[$i+1];
}
$data[$len=1]=$tem;
return $data;
}

$original_data=array(11,2,3,14,9,0);
$shifted_data=shift($original_data);

for($i=0;$i<count($shifted_data);$i++){
echo $shifted_data[$i];
}

?>