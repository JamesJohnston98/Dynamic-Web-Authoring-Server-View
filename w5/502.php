<?php 
$person[0][0] = 1;
$person[0][1] = "John";
$person[0][2] = 34;
$person[1][0] = 2;
$person[1][1] = "Sue";
$person[1][2] = 27;
$person[2][0] = 3;
$person[2][1] = "Joe";
$person[2][2] = 19;
$person[3][0] = 4;
$person[3][1] = "Aine";
$person[3][2] = 23;
        
print "<table border = 1><tr><th>"."Emp Num"."</th><th>"."Name"."</th><th>". "Age"."<th/></tr>";
        for($i=0; $i<=3; $i ++) {
            print "<tr>";
            for($j=0; $j<4; $j++){
            print "<td>".$person[$i][$j]."</td>";
            }
            print "</tr>";
        }

 print "</table>";

?>



