<?php




$guess = $_POST["number"];
$number = rand(1,10);
$i = 0;

for($i>=1; $i<=10; $i+=1) {
    print $guess;
    
    if ($guess <1) {
        print "invalid number, please enter a valid number bewtween 1 and 10";
        
    }
   elseif($guess >10){
       print "Invalid number, please enter a valid number between 1 and 10";
   }
   elseif($guess < $number){
       $guess += 1;
   }
   elseif ($guess > $number) {
    $guess -= 1;
   } 
   elseif ($guess == $number){
    print "The numbers are equal";
    break;
   }
}


?>