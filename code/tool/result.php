<?php
require_once('common/prepend.php');

if(!is_numeric($_GET['time']) && strcasecmp($_GET['time'],'timeout') != 0 && strcasecmp($_GET['time'],'error') != 0){
    $con->safeExitRedirect('/tool/input');
}

$con->readyPostCsrf();
$con->t->assign('time',$_GET['time']);
$con->t->assign('h1','中国向けWebサイトパフォーマンスツール');
$con->append();
?>
