<?php  
 @session_start();
 if(!$_SESSION['username']){
    header('location: ../html/login.php');
    exit;
 }
 ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Dilivery Manage</title>
    <script src="../js/public.js" type="text/javascript" charset="utf-8"></script>
    <script src="//cdn.ckeditor.com/4.5.6/full/ckeditor.js" type="text/javascript"></script>
    <style>
        fieldset{width: 80%; margin: 30px 0; padding: 30px;}
        label{float: left; width: 80px; font-size: 25px; font-weight: bold;}
        [type="submit"]{width: 120px;}
        #title{width: 80%; height: 18px; padding: 5px;}
/*        #shadow, #essay{box-sizing: border-box; width: 80%; overflow: hidden; height: 325px; padding: 15px;}
        #shadow{ position: absolute; border-width: 0px; padding: 0px; visibility: hidden; }*/
    </style>
</head>
<body>

<div class="container" id="container">
<h1>文章管理</h1>
<p>
    <a href="./console.php" title="">进入留言管理</a>
</p>
<!-- 已发表文章展示，最近发表的在前 -->
<div class="show_title">
    <?php
    // session_start();

    include('./connection.php');
    include('./config.php');

    // $p = _get('p')? _get('p'): 1; //当前页码
    // $offset = ($p-1)*$show_title_size; //偏移量

    $select_title = mysql_query("SELECT eid, title, dilivery_time FROM essaybook ORDER BY eid DESC");
    // LIMITED $offset, $show_title_size
    if(!$select_title){
        exit("查找文章失败，错误代码：". mysql_errno());
    }

    while($get_title = mysql_fetch_array($select_title)){
        echo 'No.<b>',$get_title['eid'], '</b> /  Title: <b>', $get_title['title'], '</b>';
        echo '<br>Post at: ', date('Y-m-d H:m', $get_title['dilivery_time']);
        ?>
        <form action="./delete_essay.php" method="post" accept-charset="utf-8">
        <a href="delete_essay.php?action=delete&eid=<?=$get_title['eid']?>">Delete This</a>
        </form>
        <?php
        echo "<hr>";
    }

    $count_title = mysql_fetch_array(mysql_query("SELECT count(title) AS count FROM essaybook;"));
    $count_page = ceil($count_title['count']/$show_title_size);

    if($count_page > 1){
        
    }


    function _get($str){
        $val = !empty($_GET[$str])?$_GET[$str]:null;
        return $val;
    }
    ?>
</div>  
<!-- 发文框 -->
<fieldset>
    <legend>发表文章</legend>
    <form action="./submit_essay.php" method="post" accept-charset="utf-8" onsubmit="return inputCheck(this);">
    <p>
        <label for="title">标题：</label>
        <input id="title" type="text" name="title"  />        
    </p>
    <P>
        <textarea id="essay" name="essay" class="ckeditor"></textarea>
        <script type="text/javascript">CKEDITOR.replace('essay', {height: '550px', width: '100%'});</script>
        <!-- <textarea id="shadow" class="ckeditor"></textarea> -->
    </P>
    <p>
        <input type="submit" name="submit" value="发表">
    </p>
    </form>
</fieldset>
</div>
</body>
<!-- <script>
    //autochange textarea
    // var oTxt = document.getElementById( "essay" );
    // var oTxt2 = document.getElementById( "shadow" );
    // autoTextarea( oTxt, oTxt2 );
    
</script> -->
</html>

