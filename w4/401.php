<?php
$mark=$_POST["marks"];

if ($mark >= 70) {
    print "You got a grade A";
}
elseif ($mark >= 60 && $mark < 70) {
    print "You got a grade B";
}
elseif ($mark >=50 && $mark < 60) {
    print "You got a grade C";
}
elseif ($mark >= 40 && $mark < 50) {
    print "You got a grade D";
}
else {
    print "You got a Grade E";
}
?>