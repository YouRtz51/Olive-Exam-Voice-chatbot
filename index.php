<?php require "conn.php" ?>
<?php
if (isset($_GET["loggedOut"])) {
  echo '<script>window.alert("You Are Logged Out");</script>';
}
session_start();
if(isset($_SESSION['loggedin'])) {
  header("Location: home.php");
  exit();
}
?>

<!doctype html>
<html lang="en" dir="ltr">


<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="... I will Solve Your Query">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.rtl.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />
  <link rel="stylesheet" href="assets/css/style.css?v=<?php echo time(); ?>">
  <link rel="stylesheet" href="assets/css/responsive.css">
  <link rel="icon" type="image/x-icon" href="assets/images/favicon.png">
  <title>Olive</title>
</head>

<body>
  <!-- .Header -->
  <!-- Wrapper Section Starts Here -->
  <div class="loginbx col col-md-6">
    <h2 class="mb-3 text-center display-6">Enter Login Details</h2>
    <form method="POST" action="inits/manage_login.php">
      <div class="mb-3">
        <input required type="text" maxlength="8" name="nickname" placeholder="Enter NickName" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
      </div>
      <div class="mb-3">
        <input required type="email" name="u_email" placeholder="Enter Your Email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
      </div>
      <div class="mb-3">
        <input required placeholder="Enter Registration Number" name="reg_no" type="password" class="form-control" id="exampleInputPassword1">
      </div>
      <button class="bg-faded " style="width:100%;border :1px solid #999;padding:8px;border-radius:14px;" type="submit" class="btn btn-primary">Submit</button>
      <a class="text-danger" href="admin.php?admin_pwd">Login As Admin</a>
    </form>
  </div>
  <!-- .Wrapper -->

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="assets/js/main.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/js/all.min.js"></script>
  <script>
  </script>
</body>

</html>