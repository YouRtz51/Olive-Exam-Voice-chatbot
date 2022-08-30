<?php

$server = "localhost";
$user = "root";
$pwd = "";
$database = "olive";

$conn = mysqli_connect("$server", "$user", "$pwd", "$database");
date_default_timezone_set("Asia/Calcutta");

if(!$conn){
  echo "Error establishing a database connection";
  echo "<br>";
  echo 'Error is '.mysqli_connect_error();
  die();
};

?>
