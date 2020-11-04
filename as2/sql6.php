<?php

//creates connection to the server or displays error message if this can not be connected
$conn = mysqli_connect('localhost','B00730860','eWgxKPE2')
    or die('Could not connect: ' + mysqli_error($conn));

//selects the desired database for information to be processed
mysqli_select_db($conn, 'B00730860');

//the film id, filmname, screen, cinemaid, actorid are all taken from the form which will then be used to insert information into the database and loads them into the corresponding variables as shown below

$film_id = $_POST['filmid'];
$film_name = $_POST['filmname'];


//SQL query which will insert the entered information into the database in the correct fields using the order and names of the data within the movies table and loads the values as the variables that have been brought over from the html form.
$insert_film = "INSERT INTO movies(FilmID,filmname) VALUES ('$film_id','$film_name')";

//if statement that will display a message if the query is not valid and if it is it will show that the record has been added successfully and also shows the information with a label that has been created.
if(!mysqli_query($conn,$insert_film))
{
echo '<center><h1>query invalid</h1><center>';
}
Else
{
//displays the output from the result which will show the user which information they have inserted into the database.
echo '<center><h1>You have sucessfully added new film information into the database</h1><center>';
echo '<center>';
echo 'New Film Record Added Successfully <br />';
echo 'Film ID: ' .$film_id.'<br />';
echo 'Film Name: ' .$film_name.'<br />';
echo '</center>';
}
mysqli_close($conn);   



?>
