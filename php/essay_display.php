<?php
/*
 * @Author: darkless
 * @Date:   2016-01-06 14:40:09
 * @Last Modified by:   darkless
 * @Last Modified time: 2016-01-08 16:22:11
*/
// include('./connection.php');
if($is_mark == 'index'){
    $select_all = mysql_query("SELECT * FROM essaybook ORDER BY eid DESC;");
    if(!$select_all){
        exit('Sorry, server has some errors.');
    }
    // var_dump($select_all);
    // var_dump(mysql_fetch_array($select_all)['essay']);
    // exit();

    while($get_all = mysql_fetch_array($select_all)){
        echo "<section class='content_li'><header><h2>", $get_all['title'], "</h2></header>";
        echo "<article class='content'>", html_entity_decode($get_all['essay']), "</article></section>";
    }   
}

if($is_mark == 'js'){
    $select_all_js = mysql_query("SELECT * FROM jsbook ORDER BY jid DESC;");
    if(!$select_all_js){
        exit('Sorry, server has some errors.');
    }
    // var_dump($select_all);
    // var_dump(mysql_fetch_array($select_all)['essay']);
    // exit();

    while($get_all_js = mysql_fetch_array($select_all_js)){
        echo "<section class='content_li'><header><h2>", $get_all_js['title'], "</h2></header>";
        echo "<article class='content'>", html_entity_decode($get_all_js['essay']), "</article></section>";
    }
}

if($is_mark == 'py'){
    $select_all_py = mysql_query("SELECT * FROM pybook ORDER BY pid DESC;");
    if(!$select_all_py){
        exit('Sorry, server has some errors.');
    }
    // var_dump($select_all);
    // var_dump(mysql_fetch_array($select_all)['essay']);
    // exit();

    while($get_all_py = mysql_fetch_array($select_all_py)){
        echo "<section class='content_li'><header><h2>", $get_all_py['title'], "</h2></header>";
        echo "<article class='content'>", html_entity_decode($get_all_py['essay']), "</article></section>";
    }
}

?>
