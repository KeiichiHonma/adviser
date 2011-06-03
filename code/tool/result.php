<?php
require_once('common/prepend.php');
$con->readyPostCsrf();
$con->t->assign('time',$_GET['time']);
$con->t->assign('h1','中国向けWebサイトパフォーマンスツール');
$con->append();
?>
