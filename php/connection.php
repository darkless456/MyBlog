<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
    </head>
<?php
/**
 * @Author: darkless
 * @Date:   2015-12-15 10:48:40
 * @Last Modified by:   darkless
 * @Last Modified time: 2016-01-20 21:53:52
 */
// SAE MySQL
 // $hostname = SAE_MYSQL_HOST_M. ':'. SAE_MYSQL_PORT;
 // $dbuser = SAE_MYSQL_USER;
 // $dbpass = SAE_MYSQL_PASS;
 // $dbname = SAE_MYSQL_DB; 

// Local MySQL
 // $hostname = 'localhost'. ':'. '3306';
 // $dbuser = 'root';
 // $dbpass = '';
 // $dbname = 'myblog';

 
 $link = @mysql_connect($hostname, $dbuser, $dbpass);
 if(!$link){
     die("Connect to database failure!". mysql_errno());    
 }

 mysql_query("set charactor set 'utf8';");
 mysql_query("set names 'utf8';");
 date_default_timezone_set('PRC'); 

 mysql_select_db($dbname, $link);
 ?>
 </html>