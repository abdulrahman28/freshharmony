<?php 

$servername = "localhost";
$username = "projec66_mydb";
$password = "olalekan@28";
$dbname = "projec66_carrental";

$con = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}
?>