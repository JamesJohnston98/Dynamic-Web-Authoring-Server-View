<?php

$conn = mysqli_connect("localhost", "B00730860", "eWgxKPE2")
        or die("could not connect:" .mysqli_error($conn));

        print "Successful connection";

        mysqli_select_db ($conn, 'B00730860') or die ('db will not open');
        print "Database Connected";


$query = "SELECT COUNT(actorID) ,filmname FROM movies, actormovies WHERE movies.FilmID=actormovies.FilmID GROUP BY filmname";
$result = mysqli_query($conn, $query) or die ("Invalid query");
$num = mysqli_num_rows($result);
echo "<table border= '1'><tr><th>Amount of Actors</th><th>Film name</th></tr>";

      for($i=0; $i<$num; $i++){
          $row= mysqli_fetch_row($result);
          echo "<tr><td>" . $row[0]. "</td><td>". $row[1];

        }

          echo "</table>";


mysqli_close($conn);

?>
