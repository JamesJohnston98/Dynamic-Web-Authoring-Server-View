<?php
$file = fopen("inputfile.txt", "r");
if($file){
while(($buffer=fgets($file, 4096))!== false){
echo $buffer."<br />";
}
if(!feof($file)){
echo "Error:unexpected fgets()fail\n";
}
fclose($file);
}
?>