<?php
require_once('common/prepend.php');

if(!is_numeric($_GET['time']) && strcasecmp($_GET['time'],'timeout') != 0 && strcasecmp($_GET['time'],'error') != 0){
    $con->safeExitRedirect('/tool/hachione_input');
}

$con->readyPostCsrf();
$con->t->assign('time',$_GET['time']);
$con->t->assign('check_url',urldecode($_GET['check_url']));
$con->t->assign('h1','中国向けWebサイトパフォーマンスツール');
$con->append();
?>
