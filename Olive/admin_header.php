<?php require "conn.php" ?>
<?php

session_start();
$_SESSION['Adminloggedin'] = true;

if (!isset($_SESSION['Adminloggedin'])) {
    header("Location: index.php?loggedOut");
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
    <!-- Header Section===== -->
    <header>
        <!-- =============Preloader============== -->
        <div id="preloader">
        </div>
        <nav class="navbar fixed-top navbar-expand-lg bg-light">
            <div class="profilebar d-flex ">
                <a class="navbar-brand logo" href="index.php">Olive<span>.</span></a>
                <ul class="d-flex align-items-center me-auto mt-3 mr-3 mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#"><img id="user-icon" src="https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt=""><span>Admin</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="logout.php"><i id="user-out" class="fa fa-sign-out" aria-hidden="true"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- .Header -->