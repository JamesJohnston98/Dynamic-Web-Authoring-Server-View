<?php
require('dog.class.php');
$puppy = new dog();
$puppy->name = 'Rover';
echo "{$puppy->name} says ";
$puppy->bark();
?>