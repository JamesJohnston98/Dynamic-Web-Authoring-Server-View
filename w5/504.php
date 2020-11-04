<?php
$headcount = 0;
$tailcount = 0;

for($i=0; $i<20; $i++){
$throw[$i][0]= $i+1;
$throw[$i][1]= rand(0,1);
if($throw[$i][1] == 1){
$throw[$i][1] = "heads";
$headcount = $headcount + 1;
}
else{
 $throw[$i][1] = "tails";
 $tailcount = $tailcount + 1;
}
}
print "<table border = 1><tr><th>"."Flip Number"."</th><th>". "Result"."</th></tr>";
for($j=0; $j<20; $j++){
print "<tr>";
for($k=0; $k<2; $k++){
print "<td>".$throw[$j][$k]."</td>";
}
print "</tr>";
}
print "</table>";

print "<br /> Number of heads = ".$headcount;
print "<br /> Number of tails = ".$tailcount;
$total = $headcount + $tailcount;

$percenthead = ($headcount/$total)*100;

print "<br /> Percentage heads = ".$percenthead;

$percenttail = ($tailcount/$total)*100;

print "<br /> Percetange Tails = ".$percenttail;

$a = round($percenthead);
$b = round($percenttail);

print "<br /> Rounded heads percentage is $a and rounded percentage tails is $b";


?>