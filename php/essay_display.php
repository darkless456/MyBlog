<?php
/*
 * @Author: darkless
 * @Date:   2016-01-06 14:40:09
 * @Last Modified by:   darkless
 * @Last Modified time: 2016-01-20 21:52:09
*/
// include('./connection.php');
if($is_mark == 'index'){
    $table = 'essaybook';
    $id_type = 'eid';
    $show_dir = './php/';
}
if($is_mark == 'js'){
    $table = 'jsbook';
    $id_type = 'jid';
    $show_dir = '../php/';
}
if($is_mark == 'py'){
    $table = 'pybook';
    $id_type = 'pid';
    $show_dir = '../php/';
}
$select_all = mysql_query("SELECT * FROM $table ORDER BY $id_type DESC;");
if(!$select_all){
    exit('Sorry, server has some errors.');
}
while($get_all = mysql_fetch_array($select_all)){
    $opt_str = $get_all['essay'];
    if(strlen($opt_str) >= 400){
        $essay_opt = mb_substr(htmlspecialchars_decode($opt_str), 0, 300, 'utf-8'). '<br><a class="readmore" target="_blank" href="'.$show_dir.'handle_essay.php?action=show&'.$id_type.'='. $get_all[$id_type]. '">...read more</a><br>';
        echo "<section class='content_li'><header><h2>", $get_all['title'], "</h2></header>";
        echo "<article class='content'>", $essay_opt, "</article></section>";            
    } else{
        echo "<section class='content_li'><header><h2>", $get_all['title'], "</h2></header>";
        echo "<article class='content'>", $essay_opt, "</article></section>";            
    }
}

?>
