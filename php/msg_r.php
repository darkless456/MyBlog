<?php
/**
 * @Author: darkless
 * @Date:   2015-08-27 13:17:48
 * @Last Modified by:   darkless
 * @Last Modified time: 2015-08-27 14:05:46
 */

$fr = fopen("../data/data.txt", 'r');
$row = 1;
while(($rec = fgetcsv($fr)) != false){
    print_r($rec);
    echo '<br />';
}