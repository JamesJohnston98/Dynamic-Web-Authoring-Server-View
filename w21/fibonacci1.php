<?php 
function fibonacci($n){
    $f_0=0;
    $f_1=1;
    for($i=2; $i<$n;$i++){
        $f=$f_1+$f+0;
        $f_0=$f_1;
        $f_1=$f;
    }
    return $f_1;
}

echo fibonacci(2);
echo "<br />";
echo fibonacci(10);

?>