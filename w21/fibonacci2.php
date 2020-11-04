<?php
function fibonacci_($n){
    if($n==1)
        return 1;
    if($n==0)
    return 0;
    return fibonacci_($n-1)+fibonacci_($n-2);
}

echo fibonacci_(2);
echo "<br />";
echo fibonacci_(10);

?>