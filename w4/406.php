<?php
$secount = 0;

for($x=1; $x<=50; $x=$x+1) {
   $roll1 = rand(1,6);  	                               // first dice roll
   $roll2 = rand(1,6);		                    // second dice roll

   if ($roll1==1 && $roll2!==1) {                  // if both rolls are 1s
      print "LOOP $x: $roll1 & $roll2  -  SNAKE EYES!<br />";  //extra
      $secount = $secount +1;
   }
   else {			                       // where 2 rolls not both 1s
      print "LOOP $x: $roll1 & $roll2<br>"; //extra
   }					         //extra
   
}
print "<br />Number of times snake eyes is rolled is $secount";

?>