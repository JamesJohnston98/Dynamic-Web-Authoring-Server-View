<?php
function print_picture($n){
for($i=0;$i<$n;$i++){
for($j=0;$j<$n-$i;$j++){
 print"0";
}
for($j=0;$j<2*$i+1;$j++){
print"*";
}
print"<br />";
}
    
}
print_picture(5);

?>