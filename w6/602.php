<?php

function num($n1, $n2)
{
for($s=$n1; $s<=$n2; $s++){
if($s %2 == 0){
echo $s."<br />";
}
}
}
num(1, 11);
?>