<?php

//creates connection to the server or displays error message if this can not be connected
$conn = mysqli_connect('localhost','B00730860','eWgxKPE2')
    or die('Could not connect: ' + mysqli_error($conn));
//locates the database within the server that you want to extract information from
mysqli_select_db($conn, 'B00730860');

//Loads the film selected by the user into the variable film
$cinema = $_POST["cinemalist"];

/*
The SQL query which will take the film name, screen and cinemaname.
This will work as long as the cinemaIDs in the movies and cinema table match. They will be grouped by the movies and will display only the information from where the screen will be loaded from the information entered into the form.
*/
$sql_cinema = "SELECT cinema.cinemaname,movies.filmname FROM movies, cinema, cinemashows WHERE cinema.CinemaID = cinemashows.CinemaID AND movies.FilmID=cinemashows.FilmID GROUP BY movies.filmname HAVING cinema.cinemaname = '$cinema'" ;

//The results will be loaded in the screen_Result variable
$cinema_result = mysqli_query($conn, $sql_cinema) or die ("Invalid query");

//the heading to give feedback information on the results page so that they can see that the results are which films are available on which screens and where. 
echo "<center><h1>The below table shows the films in $cinema and the cinema.</h1></center><h<br />";

//formatted into a table so that the results information is easy to read when the page is loaded.
echo "<center><table border = '1'><tr><th>Cinema</th><th>Film</th></tr>";

//While loop which will mean that the information will be returned with each row being returned sequentially so that the information would be displayed within rows.
while($cinema_info = mysqli_fetch_row($cinema_result)){
    echo"<tr><td>". $cinema_info[0]. "</td><td>". $cinema_info[1]. "</td></tr>";
}

//closes the table
echo "</table></center>";
//closes the connection to the server and the database
mysqli_close($conn);
?>