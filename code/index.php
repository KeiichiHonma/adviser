<?php
/*$key = '_n';
$test = 'test_n';
$string = $key."$";
$is_end_key = preg_match("/$string/", $test);*/
$key = '_n';
$test = 'test_n';
$string = $key."$";
$is_end_key = preg_match("/_n$/", $test);
var_dump($is_end_key);
die();
require_once('common/prepend.php');
$con->append();
?>
