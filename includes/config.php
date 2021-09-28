<?php 
// DB credentials.
define('DB_HOST','sql202.epizy.com');
define('DB_USER','epiz_29887245');
define('DB_PASS','sGiaaOuFPjusP');
define('DB_NAME','epiz_29887245_srms');
// Establish database connection.
$mysqli = new mysqli($host, $dbuser, $dbpass, $dbname);
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>