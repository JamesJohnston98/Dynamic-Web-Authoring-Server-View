<?php
$columns = 20;
$rows = 12;

$total_seats = $rows * $columns;
$ticket_cost = 3.75;
$total_revenue = $total_seats * $ticket_cost;
$building_cost = 300;
$profit = $total_revenue - $building_cost;

print "Total Number of Seats is $total_seats <br />";
print "Each Ticket Costs $ticket_cost<br />";
print "Total Revenue (Seats * Cost) is $total_revenue <br />";
print "Building Cost is $building_cost<br />";
print "Total Profit (Revenue - Building Cost) is  $profit";
?>
