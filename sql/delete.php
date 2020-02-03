<html>
<head>
<title>PHP/MySQL (Thai UTF8)</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
</head>
<body>
<?php
$servername = "localhost";
$username = "root";
$password = "12345678";
$dbname = "mydata";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
mysqli_set_charset($conn, "utf8");  //Thai
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

// sql to delete a record
$sql = "SELECT id,name,address FROM mytable WHERE id='".$_POST['txtid']."'";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
    $sql = "DELETE FROM mytable WHERE id='".$_REQUEST['txtid']."'";

        if ($conn->query($sql) === TRUE) {
             echo "Record deleted successfully";
        } else {
                echo "Error deleting record: " . $conn->error;
            }
        }
else {
     echo "0 results";
        }
$conn->close();
?>
<br><a href="index.html">HOME</a>
</body>
</html>
