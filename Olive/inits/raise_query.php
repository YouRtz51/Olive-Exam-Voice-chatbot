<?php require "../conn.php" ?>

<?php

$u_id = trim(strip_tags($_GET["u_id"]));
$q_que = trim(strip_tags($_POST["q_que"]));


if ($q_que == "" || $u_id == "") {
    header("Location: ../olive.php?failed");
    exit();
}


$sql = "INSERT INTO `queries` (`u_id`, `q_que`) VALUES ('$u_id', '$q_que')";
$res = mysqli_query($conn, $sql);

if (!$res) {
    header("Location: ../olive.php?failed");
    exit();
}else{
    header("Location: ../olive.php?success");
    exit();
}

?>