<?php
require_once('common/prepend.php');
$con->readyPostCsrf();

if($con->isPost){
    $url = $con->analyze_url.'?time='.time().'&check_url='.$_POST['check_url'];
    $result = file_get_contents($url);
    if($result && is_numeric($result)){
        $con->safeExitRedirect('/tool/result?time='.$result);
    }
}
$con->t->assign('h1','中国向けWebサイトパフォーマンスツール');
$con->append();
?>
