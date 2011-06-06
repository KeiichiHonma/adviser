<?php
require_once('common/prepend.php');
$con->readyPostCsrf();

if($con->isPost){
    $url = $con->analyze_url.'?time='.time().'&check_url='.$_POST['check_url'];
    $result = file_get_contents($url);

    require_once('performance/handle.php');
    $performance_handle = new performanceHandle();
    

    if($result && is_numeric($result)){
        $performance_handle->addRow($url,$result,0);
        $con->safeExitRedirect('/tool/result?time='.$result);
        
    }elseif(strcasecmp($result,'timeout') == 0){
        $performance_handle->addRow($url,0,1);
        $con->safeExitRedirect('/tool/result?time=timeout');
    }else{
        $performance_handle->addRow($url,0,3);
        $con->safeExitRedirect('/tool/result?time=error');
    }
}
$con->t->assign('h1','中国向けWebサイトパフォーマンスツール');
$con->append();
?>
