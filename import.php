<?php
require_once("db/db.php");
$file = file_get_contents('https://www.reddit.com/r/AskOuija/top.json?limit=100');
$json = json_decode($file, true);
//print_r($json['data']['children']);die;
?>
<!doctype html>
<html class="" lang="">

<head>
  <meta charset="utf-8">
  <title></title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta property="og:title" content="">
  <meta property="og:type" content="">
  <meta property="og:url" content="">
  <meta property="og:image" content="">

  <link rel="manifest" href="site.webmanifest">
  <link rel="apple-touch-icon" href="icon.png">
  <!-- Place favicon.ico in the root directory -->

  <!-- <link rel="stylesheet" href="css/normalize.css">-->
  <!--<link rel="stylesheet" href="css/main.css"> -->

  <meta name="theme-color" content="#fafafa">
</head>

<body>
<?php
$conn = OpenCon();
echo "Connected Successfully<br>";
//CloseCon($conn);

//print_r($json[]);die;
foreach ($json['data']['children'] as $item) {
    //print_r($item['data']['title']);die;
    /* create a prepared statement */
    if ($stmt = $conn->prepare("INSERT IGNORE INTO `posts` (reddit_id, title, flair, score, created_utc, author, url) VALUES (?,?,?,?,?,?,?)")) {

        // check if flair text (the 'answer') is empty, unanswered, or not stickied. If not, proceed.
        if (!empty($item['data']['link_flair_text']) && strlen($item['data']['link_flair_text']) > 12 && $item['data']['link_flair_text'] !== 'unanswered' && empty($item['data']['stickied'])) {


            $flair       = trim(substr($item['data']['link_flair_text'],11));

            $title       = $item['data']['title'];
            $reddit_id   = $item['data']['id'];
            $score       = $item['data']['score'];
            $created_utc = $item['data']['created'];
            $author      = $item['data']['author'];
            $url         = $item['data']['url'];

            /* bind parameters for markers */
            $stmt->bind_param("sssiiss",$reddit_id,$title,$flair,$score,$created_utc,$author,$url);

            /* execute query */
            $stmt->execute();

            /* fetch value */
            $stmt->fetch();

        }
        /* close statement */
        $stmt->close();

    }
    //print_r($item);
    //echo '<p>'.$item['data']->link_flair_text.'</p>';
}
$conn->close();
echo "Complete";
?>


</body>

</html>
