<?php require "../conn.php" ?>

<?php
$q_id = trim(strip_tags($_GET["q_id"]));
$u_id = trim(strip_tags($_GET["u_id"]));
$q_ans = trim(strip_tags($_POST["q_ans"]));


if ($q_id == "" || $u_id == "" || $q_ans == "") {
    header("Location: ../admin.php?failed");
    exit();
}


$sql = "UPDATE queries SET q_ans = '$q_ans', q_status= 1 WHERE q_id = $q_id;";
$res = mysqli_query($conn, $sql);

if (!$res) {
    header("Location: ../admin.php?failed");
    exit();
}else{
    header("Location: ../admin.php?success");
    exit();
}

?>