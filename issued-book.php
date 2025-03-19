<?php
session_start();
include ('connection.php');

// Ensure session variables are set
if (!isset($_SESSION['user_name']) || !isset($_SESSION['id'])) {
    header("Location: index.php");
    exit;
}

$name = $_SESSION['user_name'];
$ids = $_SESSION['id'];

// Debugging (commented out)
// echo "User ID: $ids, User Name: $name<br>";

$sql_query = "
    SELECT 
        tbl_issue.book_id, 
        tbl_book.book_name, 
        tbl_book.category, 
        tbl_issue.issue_date, 
        tbl_issue.due_date 
    FROM 
        tbl_issue 
    INNER JOIN 
        tbl_book 
    ON 
        tbl_issue.book_id = tbl_book.id 
    WHERE 
        tbl_issue.user_id = '$ids' 
    AND 
        tbl_issue.status = 1";

// Debugging (commented out)
// echo "SQL Query: $sql_query<br>";

$select_query = mysqli_query($conn, $sql_query);

// Error handling
if (!$select_query) {
    die("Query failed: " . mysqli_error($conn));
}

// Debugging (commented out)
// $num_rows = mysqli_num_rows($select_query);
// echo "Number of rows: $num_rows<br>";
?>

<?php include('include/header.php'); ?>
<div id="wrapper">
    <?php include('include/side-bar.php'); ?>
    <div id="content-wrapper">
        <div class="container-fluid">
            <!-- Breadcrumbs-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="#">View Book</a>
                </li>
            </ol>

            <div class="card mb-3">
                <div class="card-header">
                    <i class="fa fa-info-circle"></i>
                    View Book Details
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>S.No.</th>
                                    <th>Book Name</th>
                                    <th>Category</th>
                                    <th>Issue Date</th>
                                    <th>Due Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $sn = 1;
                                while ($row = mysqli_fetch_array($select_query)) { ?>
                                    <tr>
                                        <td><?php echo $sn; ?></td>
                                        <td><?php echo $row['book_name']; ?></td>
                                        <td><?php echo $row['category']; ?></td>
                                        <td><?php echo $row['issue_date']; ?></td>
                                        <td><?php echo $row['due_date']; ?></td>
                                        <td><a href="book-return.php?id=<?php echo $row['book_id']; ?>"><button class="btn btn-success">Return</button></a></td>
                                    </tr>
                                    <?php $sn++; } ?>
                            </tbody>
                        </table>
                        <?php if (mysqli_num_rows($select_query) === 0) { echo "<p>No issued books found.</p>"; } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <?php include('include/footer.php'); ?>
</div>
