<?php
require_once('common/prepend.php');
$con->readyPostCsrf();
$con->t->assign('time',$_GET['time']);
$con->append();
?>
