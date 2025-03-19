<?php
session_start();
include('connection.php');

if(isset($_POST['register_btn']))
{
    $uname = $_POST['username'];
    $email = $_POST['email'];
    $upwd = md5($_POST['pwd']);
    $role = 2; // Assuming role 2 is for regular users
    $status = 1; // Assuming 1 means active user

    // Check if email already exists
    $check_email_query = mysqli_query($conn, "SELECT * FROM tbl_users WHERE emailid='$email'");
    if(mysqli_num_rows($check_email_query) > 0)
    {
        echo "<script>alert('Email already exists. Please use a different email.');</script>";
    }
    else
    {
        $insert_query = "INSERT INTO tbl_users (user_name, emailid, password, role, status) VALUES ('$uname', '$email', '$upwd', '$role', '$status')";
        if(mysqli_query($conn, $insert_query))
        {
            echo "<script>alert('Registration successful. You can now login.'); window.location.href = 'login.php';</script>";
        }
        else
        {
            echo "<script>alert('Error in registration. Please try again.');</script>";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Library Management System - Register</title>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="css/sb-admin.css" rel="stylesheet">
    <link href="css/custom_style.css?ver=1.1" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css' rel='stylesheet' />
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
</head>
<body class="bg-dark" style="background: url(img/library-img-bg.jpg) no-repeat; background-size:cover">
    <div class="container">
        <div class="card card-register mx-auto mt-5">
            <div class="card-header">
                <h2><center style="color:coral;">Register</center></h2>
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
                            <input type="email" id="inputEmail" class="form-control" name="email" placeholder="Email address" required="required">
                            <label for="inputEmail">Email address</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="password" id="inputPassword" class="form-control" name="pwd" placeholder="Password" required="required">
                            <label for="inputPassword">Password</label>
                        </div>
                    </div>
                    <input type="submit" class="btn btn-primary btn-block" name="register_btn" value="Register">
                </form>
                <div class="text-center">
                    <a class="d-block small mt-3" href="login.php">Login Page</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
