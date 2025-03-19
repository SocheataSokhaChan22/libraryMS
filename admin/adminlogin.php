<?php
session_start();
include '../connection.php';

if(isset($_POST['login_btn'])) {
    $email = $_POST['email'];
    $pwd = $_POST['pwd'];
    
    $select_query = mysqli_query($conn, "SELECT id, user_name FROM tbl_users WHERE emailid='$email' AND password='$pwd' AND role=1 AND status=1");
    $rows = mysqli_num_rows($select_query);
    if($rows > 0) {
        $username = mysqli_fetch_row($select_query);
        $_SESSION['id'] = $username[0];
        $_SESSION['name'] = $username[1];
        header("Location: dashboard.php"); 
    } else {
        echo "<script>alert('You have entered wrong email or password.');</script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <!-- Custom fonts and styles for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="css/sb-admin.css" rel="stylesheet">
    <link href="css/custom_style.css?ver=1.1" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css' rel='stylesheet' />
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
</head>
<body class="bg-dark" style="background: url(../img/library-img-bg.jpg) no-repeat; background-size:cover">
    <div class="container">
        <div class="card card-login mx-auto mt-5">
            <div class="card-header">
                <h2><center style="color:coral;">Admin Login</center></h2>
            </div>
            <div class="card-body">
                <form name="login" method="post" action="">
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="email" id="inputEmail" class="form-control" name="email" placeholder="Email address" required="required" autofocus="autofocus">
                            <label for="inputEmail">Email address</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="pwd" required="required">
                            <label for="inputPassword">Password</label>
                        </div>
                    </div>
                    <input type="submit" class="btn btn-primary btn-block" name="login_btn" value="Login">
                </form>
                <div class="text-center">
                    <a class="d-block small mt-3" href="adminregister.php">Register an Admin Account</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
