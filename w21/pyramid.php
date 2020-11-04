<?php 
function print_one_line($n, $i) 
{ 
    if ($n < 1) 
        return; 
    if ($i <= $n) 
    { 
        echo "* "; 
       print_one_line($n, $i + 1); 
    }  
    else
    { 
        echo "<br />"; 
        print_one_line($n - 1, 1); 
    } 
} 
  
    $n = 5; 
    print_one_line($n, 1); 
  
   echo "<br />";
   echo "<br />";

   $n = 6;
   print_one_line($n, 1);
?> 