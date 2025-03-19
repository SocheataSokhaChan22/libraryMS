<?php
$server = "localhost";
$username = "root"; // Your MySQL username (root in this case)
$password = "new_password"; // Your MySQL root password
$databasename = "library_management_db";

// Create connection
$conn = mysqli_connect($server, $username, $password, $databasename);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    echo "Connected successfully";
    // Continue with your code here
}
?>



