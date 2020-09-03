<?php
require_once("db/db.php");

$host  = $_SERVER['HTTP_HOST'];
$uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');

?>
<!doctype html>
<html class="" lang="">

<head>
    <meta charset="utf-8">
    <title>Spirits Of Reddit</title>
    <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-177085488-1"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());

gtag('config', 'UA-177085488-1');
</script>
    <meta name="description" content="Ask the wise spirits of reddit a question to receive all of your answers">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" sizes="57x57" href="/images/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/images/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/images/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/images/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/images/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/images/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/images/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/images/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/images/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="/images/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/images/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/images/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/images/favicon-16x16.png">
    <link rel="manifest" href="/manifest.json">

    <link href="https://fonts.googleapis.com/css2?family=Arvo&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/site.css?v=1.311">
    <script src="js/circletype.min.js"></script>
    <!-- <meta name="theme-color" content="#fafafa"> -->
</head>

<body>
    <div class="logoWrapper">
        <img id="logo" src="images/logo.png"/><a id="wtfLink" href="#wtf">?</a>
    </div>

    <div id="bg">
        <main id="main" class="text-center">
            <section id="board">
                <div id="boardEdges"></div>
                    <div class="yesno">
                        <span class="relative">
                            <span class="yes-1">yes</span>
                            <span class="yes-2">yes</span>
                        </span>
                        <span class="relative">
                            <span class="no-1">no</span>
                            <span class="no-2">no</span>
                        </span>
                    </div>
                    <div class="alphabet-container">
                        <div class="line-1-container">
                            <span id="line1" class="alpha-line top">ABCDEFGHIJKLM</span>
                            <span id="line1b" class="alpha-line top">ABCDEFGHIJKLM</span>
                        </div>
                        <div class="line-2-container">
                            <span id="line2" class="alpha-line bottom">NOPQRSTUVWXYZ</span>
                            <span id="line2b" class="alpha-line bottom">NOPQRSTUVWXYZ</span>
                        </div>
                    </div>
                    <div class="numbers relative">
                        <span class="numbers-1">1234567890</span>
                        <span class="numbers-2">1234567890</span>
                    </div>
                    <div class="goodbye relative">
                        <span class="goodbye-1">Goodbye</span>
                        <span class="goodbye-2">Goodbye</span>
                    </div>
<?php
if (isset($_GET["p"])) {
    $postId = htmlspecialchars($_GET["p"]);
} else {
    $postId = 'ibss7i';
}

    $conn = OpenCon();

    // $sql2 = "SELECT * FROM `posts`";
    $sql = "SELECT * FROM `posts` WHERE `reddit_id` = '$postId'";
    $sqlNext = "SELECT * FROM `posts` WHERE `reddit_id` != '$postId' ORDER BY RAND() LIMIT 1";

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {

        while($row = $result->fetch_assoc()) {

            $flair = '<span class="answerWrapper"><span class="answer">'. $row['flair'] . '</span></span>';
            $title = preg_replace('/_{2,}/', $flair, $row["title"], -1, $count);

            if ($count == 1) {
                echo '<h3 class="question">'.$title.'</h3>';
            } else {
                echo '<h3 class="question">'.$row["title"]." ".$flair.'</h3>';
            }
        }
    } else {
        header("Location: http://$host$uri/randomize.php");
    }

    $resultNext = $conn->query($sqlNext);
    $nextPostId = null;

    if ($resultNext->num_rows > 0) {

        while($rowNext = $resultNext->fetch_assoc()) {
            $nextPostId = $rowNext['reddit_id'];
        }
    } else {
        echo "help!";
        // $host  = $_SERVER['HTTP_HOST'];
        // $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
        // header("Location: http://$host$uri/index.php?p=ibss7i");
    }

    CloseCon($conn);
//}
?>
            <div class="buttonWrapper">
                <button id="getAnswer" class="button"><span>Ask the spirits</span></button>
                <img id="planchette" src="/images/planchette.png"/>
            </div>

        </section>
    </main>
    <footer id="footer">
        <h4 id="wtf">What is this?</h4>
        <p>This content comes from one of my favorite truly unique subreddits, <a href="https://www.reddit.com/r/AskOuija/" target="_blank">/r/AskOuija</a>. The gist of the sub is that anyone can ask the 'mysterious Reddit spirits' a question, and wait for a response. Other <s>users</s>spirits will then answer the question, one letter at a time. The only word you are allowed to use in an answer reply is the word 'Goodbye', which signals the Ouija Bot to consider it as an answer. Once accepted it is added as flair to the post.</p>
        <p>The problem with this, personally, was that while browsing the subreddit on my phone (using the RIF is fun app, formerly 'Reddit is fun'), the flair is too easy to see without ruining the question. That's when I thought: it would be really cool if the question was formatted like a 'spirit board' with the question listed and the answer only revealed with a button click. This was mainly a fun coding project, but hopefully you like it too.</p>
        <h4>Content Warning</h4>
        <p>Some of the content here might contain strong (or very strong) language and is not for children. I do not curate or moderate the content in any way. It is entirely automated, pulling the current top 100 posts from the subreddit whenever the import process is ran. If you're not okay with strong language you won't hurt my feelings if you leave.</p>
        <h4>Credits and Misc</h4>
        <p>All content is fetched from Reddit's JSON feed for the <a href="https://www.reddit.com/r/AskOuija/" target="_blank">/r/AskOuija</a> subreddit. All questions and answers are owned by reddit or their authors.</p>
        <p>The name Ouija&trade; is trademarked and owned by Hasbro, Inc, and only included here to reference this specific subreddit. The board created for this site is a generic spirit board with no relation to Ouija&trade;.</p>
        <p>The 'Spirit Board' font (an excellent library) was created by <a href="https://www.behance.net/glebgurc7b0" target="_blank">Gleb Guralnyk</a> and is licensed from Myfonts.com.</p>
        <p>The board corner artwork is originally a vector art piece from <a href="https://www.vecteezy.com/vector-art/108223-ouija-board-free-vector-illustration-vol-3" target="_blank">Vecteezy.com</a>.</p>
        <p>Burned paper texture is courtesy of <a href="http://www.textures4photoshop.com/" target="_blank">textures4photoshop.com</a>.</p>
        <p>&copy; <?=date('Y')?> SpiritsOfReddit.com. Questions, Comments? <a href="https://twitter.com/bryanmac84">@bryanmac84</a></p>
    </footer>
</div>
<script>
    var radius = 640;
    var line1 = new CircleType(document.getElementById('line1')).radius(radius);
    var line1b = new CircleType(document.getElementById('line1b')).radius(radius);

    var line2 = new CircleType(document.getElementById('line2')).radius(radius);
    var line2b = new CircleType(document.getElementById('line2b')).radius(radius);

    function reportWindowSize() {
        line1.refresh();
        line1b.refresh();
        line2.refresh();
        line2b.refresh();
    }
    window.onresize = reportWindowSize;


    let clickCounter = 0,
    button = document.getElementById('getAnswer'),
    buttonText = document.querySelector('#getAnswer span'),
    answerWrapper = document.querySelector('.answerWrapper'),
    answer = document.querySelector('.answer');
    button.onclick = function changeContent() {
        answer.classList.add("show");
        answerWrapper.classList.add("show");
        buttonText.textContent = 'Ask Again...';
        clickCounter++;
        if (clickCounter==2) {
            window.location.href = 'index.php?p=<?=$nextPostId?>';
            return false;
        }
    }
</script>
</body>

</html>
