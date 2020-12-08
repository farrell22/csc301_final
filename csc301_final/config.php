<?php

/* final requirements: A configuration file that connects to a database, 
includes functions.php and autoloads classes */

// connects to the MySQL database for this class
$user = 'farrelle2';
$password = 'b24bd3a6';

$database = new PDO('mysql:host=localhost;dbname=db_fall20_farrelle2', $user, $password);
