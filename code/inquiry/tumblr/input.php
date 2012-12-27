<?php
header("Content-type: text/html; charset=utf-8");
require_once('fw/container.php');
$con = new container();
register_shutdown_function('shutdownHandler');

function shutdownHandler(){
    $error = error_get_last();
    if ($error['type'] == E_ERROR) {
        //緊急エラー送信///////////////////////////
        require_once('fw/mailManager.php');
        $mailManager = new mailManager();
        $mailManager->sendHalt(LOCALE.":ERROR:shutdownHandler\n",$error);
    }
}

if(strcasecmp($_SERVER['REQUEST_METHOD'],'POST') === 0){
        //お問い合わせ///////////////////////////
        //require_once('inquiry/handle.php');
        //$inquiry_handle = new inquiryHandle();
        //$inquiry_handle->addRow();

        require_once('fw/mailManager.php');
        $mailManager = new mailManager();

        //for company
        $mailManager->sendTumblrInquiry();

        //for iluna
        $mailManager->sendTumblrInquiry(TRUE);
        header("Location: http://finish.china-adviser.com/");
        die();
}
?>
