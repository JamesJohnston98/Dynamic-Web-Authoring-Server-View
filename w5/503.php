<?php

for($i = 0; $i <=5; $i++){
$result[$i][0] = $i + 1;
$result[$i][1] = rand(0,1);
if($result[$i][1]==0){
    $result[$i][1] = "head";
}
elseif($result[$i][1]==1){
    $result[$i][1] = "tail";
}  
}

print "<table border =1><tr><th>"."Flip Number"."</th><th>"."Result.</th></tr>";
for($x=0; $x<5; $x++){
    print "<tr>";
    for($y=0; $y<5; $y++){
    print "<td>".$result[$x][$y]. "</td>";
    }
    print "</tr>";
}
print "</table>";

?>