<?php require "../conn.php" ?>
<?php

$nickname = strip_tags(trim($_POST["nickname"]));
$u_email = strip_tags(trim($_POST["u_email"]));
$reg_no = strip_tags(trim($_POST["reg_no"]));

if ($u_email == NULL || $nickname == NULL || $reg_no == NULL ) {
  header("Location: ../index.php?lo=0");
  exit();
}

$sql = "SELECT * FROM `student` WHERE u_email= '$u_email'";
$res = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($res);


if ($reg_no == $row["reg_no"]) {
  session_start();
  $_SESSION['u_name'] = $nickname;
  $_SESSION['u_id']= $row["reg_no"];
  $_SESSION['loggedin'] = true;
  header("Location: ../home.php?loggedIn");
  exit();
} else {
  header("Location: ../index.php?loggedOut");
  exit();
}

?>
