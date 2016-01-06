<?php
/*
 * @Author: darkless
 * @Date:   2015-12-30 14:29:08
 * @Last Modified by:   darkless
 * @Last Modified time: 2015-12-30 17:46:51
*/

if(!isset($_POST['submit'])){
 exit("Access violation");
}



if(get_magic_quotes_gpc()){
    $title = htmlspecialchars(trim($_POST['title']));
    $essay = htmlspecialchars(trim($_POST['essay']));    
} else{
    $title = addslashes(htmlspecialchars(trim($_POST['title'])));
    $essay = addslashes(htmlspecialchars(trim($_POST['essay'])));
}

if(strlen($title) > 128){
    exit("Title too long, please <a href='javascript:history.back(-1)>go back</a>.");
}

include('./connection.php');

$dilivery_time = time();

$inst_essay = "INSERT INTO essaybook(title, essay, dilivery_time) VALUES('$title', '$essay', $dilivery_time);";

if(mysql_query($inst_essay)){
    ?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Post Success</title>
        <meta http-equiv=refresh content="3;url='./dilivery.php'">
    </head>
    <body>
        <p>
            dilivery successed!<br/>
            Go back later.
        </p>
    </body>
    </html>
<?php
} else{
    echo "dilivery failure, error code: ", mysql_errno(), "<a href='javascript:history.back(-1)>go back</a>";
}

?>
