<?php
//Example using the COUNT() in SQL
//Connects to the server
$conn = mysqli_connect('localhost','B00730860','eWgxKPE2')
    or die('Could not connect: ' + mysqli_error($conn));

//locates the database within the server
mysqli_select_db($conn, 'B00730860');

//SQL query which will display the customer firstname and the number of bookings that each customer has made through the use of the COUNT() function
$booking_query = "SELECT customer.FirstName, COUNT(*) FROM bookings JOIN customer WHERE bookings.CustomerID=customer.CustomerID GROUP BY customer.FirstName";

//the result of the query will be loaded into the results variable. If the query doesn't run the message will appear which will say that the query is not valid and did not return any results
$query_results = mysqli_query($conn, $booking_query) or die ("Invalid query");

//counts the number of rows within the query which will be returned
$num = mysqli_num_rows($query_results);
              
//the heading on the page which would be generated when the button is clicked.
echo "<h1><center>The below table shows the number of bookings we have received from each customer </center></h1><br />";

//formats the results from the database which would then be returned as a table with two rows which would contain the customer name and the number of orders given
echo "<center><table border = '1'><tr><th>CustomerName</th><th>TotalOrdersrReceived</th></tr>";
for($i=0; $i<$num; $i++){
 $row_booking = mysqli_fetch_row($query_results);
 echo "<tr><td>". $row_booking[0]. "</td><td>". $row_booking[1]."</td></tr>";
}
echo "</table></center>";
//Closes the connection to the server and database
mysqli_close($conn);


//Example using MAX() in SQL
//Connects to the server
$conn = mysqli_connect('localhost','B00730860','eWgxKPE2')
    or die('Could not connect: ' + mysqli_error($conn));
//Selects the Database moviehouse from the server when connected
mysqli_select_db($conn, 'B00730860');


//SQL Query which will select information from the cinema and cinemashows tables where the CinemaID data within the two tables match each other. they will be grouped by cinemaname where there is a maximum which islarger than or equal to 2.
$sql_cinema = "SELECT cinema.cinemaname, COUNT(*) FROM cinemashows JOIN cinema WHERE cinema.CinemaID=cinemashows.CinemaID GROUP BY cinema.cinemaname HAVING MAX(cinemashows.CinemaID)>=2 ";

//The query result will be loaded into the variable salary_result
$cinema_result = mysqli_query($conn, $sql_cinema) or die ("Invalid query");

//heading to show the actors who earn up to the given value
echo "<center><h1>The below table shows the total number of movies showing at each cinema</h1></center><h<br />";

//formats the results to return the information in a table
echo "<center><table border = '1'><tr><th>CinemaName</th><th>Films on Offer</th></tr>";
//while loop to run while the results within each row in sequence. Fills the information within the table.
while($cinema_r = mysqli_fetch_row($cinema_result)){
    echo"<tr><td>". $cinema_r[0]. "</td><td>". $cinema_r[1];
}
//closes the table once the loop has concluded
echo "</table></center>";

//closes the connection to the database and the server
mysqli_close($conn);















?>