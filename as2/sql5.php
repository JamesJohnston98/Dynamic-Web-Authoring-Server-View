<?php

$table = $_POST["table"];
$record = $_POST["changes"];
$where = $_POST["where"];


$conn = mysqli_connect("localhost", "B00730860", "eWgxKPE2")
        or die("could not connect:" .mysqli_error($conn));

        print "Successful connection";

        mysqli_select_db ($conn, 'B00730860') or die ('db will not open');
        print "Database Connected";

        $query= "UPDATE $table SET $record WHERE $where";
        $result = mysqli_query($conn, $query) or die ("Invalid query");
        $numrows=mysqli_affected_rows($conn);
        echo $numrows."Records updated";

        mysqli_close($conn);

         ?>
