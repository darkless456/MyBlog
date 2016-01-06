<?php
/*
 * @Author: darkless
 * @Date:   2016-01-06 14:12:51
 * @Last Modified by:   darkless
 * @Last Modified time: 2016-01-06 14:18:41
*/
include('./connection.php');

if($_GET['action'] == 'delete'){
    $delete = mysql_query("DELETE FROM essaybook WHERE eid=$_GET[eid];");
    if($delete){
        echo '<script language="javascript">alert("删除成功！");self.location="./dilivery.php"</script>';  
    } else{
        exit('删除失败'.mysql_errno().'[ <a href="javascript:history.back(-1)">返回</a> ]');
    }
}

?>
