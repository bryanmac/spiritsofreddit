<?php require_once("db/db.php");

$conn = OpenCon();

$sql = "SELECT * FROM `posts` ORDER BY RAND() LIMIT 1";

$result = $conn->query($sql);

if ($result->num_rows > 0) {

    while($row = $result->fetch_assoc()) {

        $postId = $row["reddit_id"];

        $host  = $_SERVER['HTTP_HOST'];
        $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
        header("Location: http://$host$uri/index.php?p=$postId");
    }
} else {
    header("Location: http://$host$uri/index.php?p=ibss7i");
}

CloseCon($conn);
