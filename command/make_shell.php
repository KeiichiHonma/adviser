<?php
/*

/usr/local/bin/php -f /usr/local/apache2/adviser_command/crawler_support.php iluna iluna.hera.corp.813.co.jp
*/
if(!isset($argv[1]) || !isset($argv[2])){
    print 'no arg'."\n";
    die();
}


if(isset($argv[1])){
    $user_dir = $argv[1];
}

if(isset($argv[2])){
    $user_fqdn = $argv[2];
}
set_include_path('/usr/local/apache2/htdocs/adviser/include');

require_once('fw/crawlerUtil.php');
$crawler_util = new crawlerUtil();

$bl = $crawler_util->makeHtmlShell($user_dir,$user_fqdn);
if(!$bl){
    print 'error'."\n";
    die();
}
print 'make html_shell done'."\n";
die();
?>