<?php
$ip = $_SERVER['REMOTE_ADDR'];

//set_include_path('/usr/local/apache2/htdocs/adviser/include');
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
if(strcasecmp($ip,$allow_ip) != 0){
    print 'error';
    die();
}


if(isset($_GET['check_url'])){
    $url = 'http://'.$_GET['check_url'];
}

//$url = 'http://cn.kujapan.apollon.corp.813.co.jp/area/aid/1';

$rand = getRand();
$arg = '';
$arg .= '-E '.$url;
$arg .= ' -nd';//ディレクトリを作成しない
$arg .= ' --delete-after';
$arg .= ' -e robots=off';
$arg .= ' --page-requisites';
$arg .= ' --output-file=/usr/local/apache2/htdocs/adviser/log/'.$rand;
$arg .= ' --user-agent="Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)"';

exec('/usr/local/bin/wget '.$arg,$out,$ret);

$finished = FALSE;
$timeout = FALSE;
$time_start = microtime(true);

while (!$finished){
    $time = microtime(true) - $time_start;
    if($time > 60 ){
        $finished = TRUE;
        $timeout = TRUE;
    }
    if(file_exists('/usr/local/apache2/htdocs/adviser/log/'.$rand)){
        $rt = file('/usr/local/apache2/htdocs/adviser/log/'.$rand, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
        @unlink('/usr/local/apache2/htdocs/adviser/log/'.$rand);
        $finished = TRUE;
    }
}
$last_line = array_pop($rt);
$last_line_explode = explode(' ',$last_line);

$total_time = str_replace('s','',$last_line_explode[5]);

sleep($add_second);//遅延させる

//json出力
$str ='';

$i = 0;
if(!$timeout && is_numeric($total_time)){
    print $total_time + $add_second;
    die();
}else{
    print 'timeout';
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
