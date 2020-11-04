<?php

$conn = mysqli_connect('localhost', 'B00730860', 'eWgxKPE2')
        or die("could not connect:" .mysqli_error($conn));

        print "Successful connection";

        mysqli_select_db ($conn, 'B00730860') or die ('db will not open');
        print "Connected to database";


$query3 =  "SELECT * FROM movies";
$result3 =  mysqli_query($conn, $query3) or die ("Invalid query");
$num3 = mysqli_num_rows($result3);
        echo "<table border= '1'><tr><th>FilmID</th><th>filmname</th></tr>";

              for($i=0; $i<$num3; $i++){
                  $row= mysqli_fetch_row($result3);
                  echo "<tr><td>" . $row[0]. "</td><td>". $row[1];

          

              }
  echo "</table>";

  mysqli_close($conn);

?>
