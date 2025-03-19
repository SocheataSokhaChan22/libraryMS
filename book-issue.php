<?php 
session_start();
include ('connection.php');

$name = $_SESSION['user_name'];
$ids = $_SESSION['id'];
$id = $_GET['id'];

// Ensure that all required fields are being set
$issue_date = date('Y-m-d'); // Set the issue date to the current date
$due_date = date('Y-m-d', strtotime('+1 week')); // Set the due date to one week from now

// Prepare the SQL query
$sql = "INSERT INTO tbl_issue (book_id, user_id, user_name, issue_date, due_date, status) VALUES ('$id', '$ids', '$name', '$issue_date', '$due_date', 3)";

// Execute the query and check for success
$insert_issue = mysqli_query($conn, $sql);

// Check for query success and handle errors
if ($insert_issue) {
    ?>
    <script type="text/javascript">
    alert("Request sent successfully.");
    window.location.href = "book.php";
    </script>
    <?php
} else {
    // Display error message if the query fails
    die("Query failed: " . mysqli_error($conn));
}
?>
