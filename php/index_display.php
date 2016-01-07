<?php
/*
 * @Author: darkless
 * @Date:   2016-01-06 14:40:09
 * @Last Modified by:   darkless
 * @Last Modified time: 2016-01-07 16:49:49
*/
// include('./connection.php');

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

?>
