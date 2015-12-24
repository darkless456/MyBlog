<?php
/**
 * @Author: darkless
 * @Date:   2015-08-26 08:04:24
 * @Last Modified by:   darkless
 * @Last Modified time: 2015-08-27 17:47:55
 */
$fw = $_POST['discuession'].','.$_POST['email']."\n";
$fd = fopen('../data/data.txt', 'a');
fwrite($fd, $fw);
fclose($fd);
echo '<script>alert("Submit finished."); window.location.href = "../index.html"</script>'
?>