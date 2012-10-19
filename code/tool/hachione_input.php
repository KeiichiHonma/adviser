<?php
require_once('common/prepend.php');
$con->readyPostCsrf();

if($con->isPost){
    $url = $con->analyze_url.'?time='.time().'&check_url='.$_POST['check_url'];
    $result = file_get_contents($url);

    require_once('performance/handle.php');
    $performance_handle = new performanceHandle();
    

    if($result && is_numeric($result)){
        //$performance_handle->addRow($_POST['check_url'],$result,0);
        $con->safeExitRedirect('/tool/hachione_result?time='.$result.'&check_url='.urlencode($_POST['check_url']));
    }elseif(strcasecmp($result,'timeout') == 0){
        //$performance_handle->addRow($_POST['check_url'],0,1);
        $con->safeExitRedirect('/tool/hachione_result?time=timeout&check_url='.urlencode($_POST['check_url']));
    }else{
        //$performance_handle->addRow($_POST['check_url'],0,3);
        $con->safeExitRedirect('/tool/hachione_result?time=error&check_url='.urlencode($_POST['check_url']));
    }
}
$con->t->assign('h1','中国向けWebサイトパフォーマンスツール');
$con->append();
?>
