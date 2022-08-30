<?php require "conn.php" ?>
<?php require "functions.php" ?>
<?php
session_start();
session_unset();
session_destroy();
header("Location: index.php?loggedOut");
exit();
?>