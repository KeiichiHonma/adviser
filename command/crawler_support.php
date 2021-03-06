<?php
/*

/usr/local/bin/php -f /usr/local/apache2/adviser_command/crawler_support.php iluna iluna.hera.corp.813.co.jp
*/
if(!isset($argv[1]) || !isset($argv[2]) || !isset($argv[3]) || !isset($argv[4])){
    print 'no arg'."\n";
    die();
}


if(isset($argv[1])){
    $user_dir = $argv[1];
}

if(isset($argv[2])){
    $user_domain = $argv[2];
}

if(isset($argv[3])){
    $absolute_path = $argv[3];
}

if(isset($argv[4])){
    $html_file = $argv[4];
}

set_include_path('/usr/local/apache2/htdocs/adviser/include');

require_once('user/logic.php');
$u_logic = new userLogic();
$user = $u_logic->getOneUserForDir($user_dir);

if(!$user){
    require_once('fw/errorManager.php');
    errorManager::throwError(E_CMMN_USER_EXISTS);
}

require_once('seo/logic.php');//manager
$u_logic = new seoLogic();
$seo_tmp = $u_logic->getSeo($user[0]['_id']);
$seo = FALSE;
if($seo_tmp){
    foreach ($seo_tmp as $value){
        if(strcasecmp($value['col_absolute_html_file'],$absolute_path.'/'.$html_file) == 0){
            $seo = $value;
            break;
        }
    }
}

//rolloverの文字列チェック
$rollover = null;
if(strlen($user[0]['col_rollover']) > 0){
    //$split = @split("\n", $user[0]['col_rollover']);
    $explode = explode("\n", $user[0]['col_rollover']);
    if(is_array($explode)){
        foreach ($explode as $value){
            $explode2 = explode(',',trim($value));
            if(count($explode2) == 2) $tmp_rollover[$explode2[0]] = $explode2[1];
        }
    }else{
        $explode2 = explode(',',trim($user[0]['col_rollover']));
        if(count($explode2) == 2) $tmp_rollover[$explode2[0]] = $explode2[1];
    }
    if(is_array($tmp_rollover) && count($tmp_rollover) > 0) $rollover = $tmp_rollover;
    //$rollover = $user[0]['col_rollover'];
}

//予約文字列、予約ファイルチェック
$replace = null;

if(strlen($user[0]['col_replace']) > 0){
    //$split = split("\n", $user[0]['col_replace']);
    $explode = explode("\n", $user[0]['col_replace']);
    if(is_array($explode)){
        foreach ($explode as $value){
            $explode2 = explode(',',trim($value));
            if(count($explode2) == 2) $tmp_replace[$explode2[0]] = $explode2[1];
        }
    }else{
        $explode2 = explode(',',trim($user[0]['col_replace']));
        if(count($explode2) == 2) $tmp_replace[$explode2[0]] = $explode2[1];
    }

    if(is_array($tmp_replace) && count($tmp_replace) > 0) $replace = $tmp_replace;

/*var_dump(array_keys($replace));

var_dump(array_values($replace));

die();*/
}

require_once('fw/crawlerSupport.php');
$crawler_support = new crawlerSupport($user_dir,$user_domain,$seo,$rollover,$replace);
$crawler_support->doCrawlerSupport($absolute_path,$html_file);

?>