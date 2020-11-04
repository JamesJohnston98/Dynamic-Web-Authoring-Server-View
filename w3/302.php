<?php
$amount = 65;
print "The amount in your account is currently $amount  <br />";
    
if ($amount == 0){
    print "Your Account is empty";
    print "<br />";
}
elseif ($amount <100) {
$interest = $amount * 0.01;
$newamount = $amount + $interest;
print "Your New Amount is  $newamount";
}
elseif ($amount >= 100) {
$interest = $amount * 0.02;
$newamount = $amount + $interest;
print "Your New Amount is $newamount";
}


    
    
    
    
