<?php
session_start();
include '../connection.php';

if(isset($_POST['register_btn'])) {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $pwd = $_POST['pwd'];
    
    // Check if the email is already registered
    $check_query = mysqli_query($conn, "SELECT * FROM tbl_users WHERE emailid='$email'");
    if(mysqli_num_rows($check_query) > 0) {
        echo "<script>alert('Email is already registered.');</script>";
    } else {
        $insert_query = "INSERT INTO tbl_users (user_name, emailid, password, role, status, created_at) 
                         VALUES ('$username', '$email', '$pwd', 1, 1, NOW())";
        if(mysqli_query($conn, $insert_query)) {
            echo "<script>alert('Admin registered successfully.');</script>";
        } else {
            echo "<script>alert('Error registering admin.');</script>";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Register</title>
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
        <div class="card card-register mx-auto mt-5">
            <div class="card-header">
                <h2><center style="color:coral;">Admin Register</center></h2>
            </div>
            <div class="card-body">
                <form name="register" method="post" action="">
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="inputUsername" class="form-control" name="username" placeholder="Username" required="required" autofocus="autofocus">
                            <label for="inputUsername">Username</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="email" id="registerEmail" class="form-control" name="email" placeholder="Email address" required="required">
                            <label for="registerEmail">Email address</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="password" id="registerPassword" class="form-control" placeholder="Password" name="pwd" required="required">
                            <label for="registerPassword">Password</label>
                        </div>
                    </div>
                    <input type="submit" class="btn btn-primary btn-block" name="register_btn" value="Register">
                </form>
                <div class="text-center">
                    <a class="d-block small mt-3" href="adminlogin.php">Back to Login</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
