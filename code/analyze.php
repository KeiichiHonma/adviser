<?php
$ip = $_SERVER['REMOTE_ADDR'];
/*if(file_exists('/usr/local/apache2/htdocs/adviser/log/uHSaNKwtMq')){
var_dump('test');
die();
}
*/
//set_include_path('/usr/local/apache2/htdocs/adviser/include');
define('WGET_LOG', '/usr/local/apache2/htdocs/adviser/log');
$ini = parse_ini_file('/usr/local/apache2/htdocs/adviser/include/setting.ini', true);
$isDebug = FALSE;
$isStage = FALSE;
$add_second = 2;

if($ini['common']['isDebug'] == 0){//本番
    $allow_ip = '182.48.20.241';//netサーバー
    
    if($ini['common']['isStage'] == 1){//ステージングサーバモード
            $isStage = TRUE;
            $allow_ip = '192.168.0.5';//stageサーバー
    }else{
        $add_second = 2;
    }
}elseif($ini['common']['isDebug'] == 1){//デバッグモード
    $isDebug = TRUE;
    $allow_ip = '192.168.0.24';//testサーバー
    
    if($ini['common']['isStage'] == 1){//ステージングサーバモード
            $isStage = TRUE;
            $allow_ip = '192.168.0.5';//stageサーバー
    }
}

//ipアドレスチェック
//$_SERVER['REMOTE_ADDR']
/*if(strcasecmp($ip,$allow_ip) != 0){
    print 'error';
    die();
}*/


if(isset($_GET['check_url'])){
    $url = 'http://'.$_GET['check_url'];
    
}

//$url = 'http://cn.kujapan.apollon.corp.813.co.jp/';
//$url = 'http://cn.kujapan.apollon.corp.813.co.jp/area/aid/1';

$rand = getRand();
$arg = '';
$arg .= '-E '.$url;
$arg .= ' -nd';//ディレクトリを作成しない
$arg .= ' --delete-after';
$arg .= ' -e robots=off';
//$arg .= ' -r -l 2';//デバッグ
$arg .= ' --page-requisites';
$arg .= ' --output-file='.WGET_LOG.'/'.$rand;
$arg .= ' --user-agent="Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)"';
exec('/usr/local/bin/wget '.$arg.' >/dev/null 2>&1 &',$out,$ret);//バックグラウンド

$finished = FALSE;
$error = FALSE;
$timeout = FALSE;
$time_start = microtime(true);
$second = 30;

/*logファイルは実行開始から作成され、追記モードで記載されるため、ファイルの存在チェックで操作するのは無理。
そのため、必ず～秒待ってその時に秒データがあるかどうかでチェックする*/

while (!$finished){
    $time = microtime(true) - $time_start;
    //終了チェック
    //sleep(5);
    if(file_exists(WGET_LOG.'/'.$rand)){

            $rt = file(WGET_LOG.'/'.$rand, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
            $last_line = array_pop($rt);
            $finish_check = ereg("^Downloaded", $last_line);
            $finish_check_2 = ereg("^ダウンロード", $last_line);

            if($finish_check !== FALSE || $finish_check_2 !== FALSE){
                if($finish_check !== FALSE) $index = 5;
                if($finish_check_2 !== FALSE) $index = 4;
                
                $finished = TRUE;
                $last_line_explode = explode(' ',$last_line);
                
                if(!$last_line_explode) $error = TRUE;
                
                $total_time = str_replace('s','',$last_line_explode[$index]);
                if(!is_numeric($total_time)) $error = TRUE;
                @unlink(WGET_LOG.'/'.$rand);
            }
    }
    
    if($time > $second ){
        $finished = TRUE;
        $timeout = TRUE;//適切な値を取得できなかったという理由でタイムアウト
        if(file_exists(WGET_LOG.'/'.$rand)){
            @unlink(WGET_LOG.'/'.$rand);
        }else{
            $error = TRUE;
        }
    }
}

//json出力
$str ='';

$i = 0;
if(!$timeout && is_numeric($total_time)){
    print $total_time + $add_second;//不正
    die();
}elseif($timeout){
    print 'timeout';
    die();
}else{
    print 'error';
    die();
}

function getRand($nLengthRequired = 10){
    $sCharList = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_';
    mt_srand();
    $sRes = '';
    for($i = 0; $i < $nLengthRequired; $i++)
        $sRes .= $sCharList{mt_rand(0, strlen($sCharList) - 1)};
    return $sRes;
}
?>
