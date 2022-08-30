<?php require "../conn.php" ?>
<?php

$chat = trim(strip_tags($_POST["chat"]));
$u_id = trim(strip_tags($_POST["u_id"]));
mysqli_real_escape_string($conn, $chat);

if ($chat == "" || $u_id == "") {
  echo "failed";
  exit();
}


$sql = "INSERT INTO `discussion` (`user_id`, `chats`, `type`) VALUES ('$u_id', '$chat', 'user')";
$res = mysqli_query($conn, $sql);
if (!$res) {
  echo "failed";
  exit();
}

$sql1 = "SELECT ans FROM olivetalk WHERE que LIKE '%$chat%';";

$res1 = mysqli_query($conn, $sql1);
$row = mysqli_fetch_assoc($res1);

if ($row > 1) {
  $ans = str_ireplace(array(
    '\'', '"',
    ',', ';', '<', '>'
  ), ' ',  $row["ans"]);
  if ($ans == "result"){
    $ans="Ohh I Got It.. This Is Your Result..";
    echo "result";
    exit();
  }
  $sql2 = "INSERT INTO `discussion` (`user_id`, `chats`, `type`) VALUES ('$u_id', '$ans', 'bot')";
  $res2 = mysqli_query($conn, $sql2);
} else {
  $sql2 = "INSERT INTO `discussion` (`user_id`, `chats`, `type`) VALUES ('$u_id', 'Ohh ! You Got A Problem.. I am Helping You With That.. You Can Raise Your Query and It Will Be Solved Very Soon.', 'bot')";
  $res2 = mysqli_query($conn, $sql2);
  echo "sorry";
  exit();
}

if ($res2 && $res) {
  echo $ans;
}

?>