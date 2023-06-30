<?php 
// DB credentials.
define('DB_HOST','localhost');
define('DB_USER','projec66_mydb');
define('DB_PASS','olalekan@28');
define('DB_NAME','projec66_carrental');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>