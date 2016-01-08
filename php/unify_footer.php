
<?php
/*
 * @Author: darkless
 * @Date:   2015-12-24 15:50:35
 * @Last Modified by:   darkless
 * @Last Modified time: 2016-01-08 16:39:48
*/
if($is_mark == 'index'){
    echo '        
    <footer>
        <p><i>&copy Copyright 2015 Design by darkless &nbsp; <a href="./html/login.php">Login</a></i></p>
    </footer>
    <script src="./js/main.js" type="text/javascript" charset="utf-8"></script>';    
}
if($is_mark == 'js'||$is_mark == 'py'||$is_mark == 'contact'){
    echo '        
    <footer>
        <p><i>&copy Copyright 2015 Design by darkless &nbsp; <a href="./login.php">Login</a></i></p>
    </footer>';    
}

 
?>
