<!DOCTYPE html  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<meta name="keywords" content="中国,アクセス,スピード,Webサイト,中国語,チャイナアドバイザー,china adviser" />
<meta name="description" content="中国から見た場合、貴社の中国語ページが何秒で表示されているかご存知ですか？貴社の中国向けWebサイトの表示速度を診断します。" />

<link rel="stylesheet" type="text/css" href="/css/common.css" />
<script type="text/javascript" src="/js/common.js"></script>

<link rel="shortcut icon" href="/img/common/favicon.ico" type="image/x-icon" />
<link rel="icon" href="/img/common/favicon.ico" type="image/x-icon" />
 
<title>中国向けWebサイトパフォーマンスツール | チャイナアドバイザー</title>
</head>
<body>

<div id="tool-container">

{*header*}
{include file="include/common/header.inc"}

<div id="tool">

<div id="contents" class="clearfix">

<div id="tm-contents">

<div class="tool-ptt">
<h1><img src="/img/tool/ptt_tool.jpg" alt="中国向けWEBサイトパフォーマンスツール" /></h1>
</div>

<div class="tool-result">
    <p class="t-box6">中国から見た場合、指定サイトの表示にかかる時間は</p>
    {if $time == "timeout"}
        <p class="t-box7-timeout">
        中国から閲覧することが非常に困難なサイトのため、<br />
        計測を停止しました。
        </p>
    {elseif $time == "error"}
        <p class="t-box7-timeout">
        サイトの閲覧に問題が発生したため、<br />
        計測を停止しました。
        </p>
    {else}
        <p class="t-box7">{$time}秒</p>
    {/if}
    
    
    {if $time >= 10 || $time == "timeout"}
        <p class="t-box8">
        ご指定のサイトは中国から閲覧することが難しい状況にあります。<br />
        サイトの表示速度に不安がある場合はご相談ください。
        </p>
    {elseif $time == "error"}
        <p class="t-box8">
        URLが正しいか再度ご確認ください。<br />
        正常なURLにも関わらず計測ができない場合、<br /><span class="alert">中国からの閲覧が禁止</span>されているサイトの可能性があります。<br />
        サイトの表示に不安がある場合はご相談ください。
        </p>
    {else}
        <p class="t-box8">
        中国からのアクセスは時間帯によって速く表示されたり、遅く表示されたりする場合があります。<br />
        サイトの表示速度に不安がある場合はご相談ください。
        </p>
    {/if}
    
    <div class="t-box9">
    <a href="/rapid"><img src="/img/tool/banner_rapid_off.jpg" alt="" /></a>
    </div>
    <p class="t-box8">
    ■参考測定数値<br />
    1秒以下：大変快速です<br />
    1 - 3秒以内：快速です<br />
    3 - 5秒以内：少々遅く感じます<br />
    5 - 10秒以内：かなり遅く感じます<br />
    10秒以上:閲覧することが困難です<br />
    </p>

    <div class="t-box10">
    <a href="/tool/input"><img src="/img/tool/tool_re_input_bt_off.jpg" alt=""  class="btn" /></a>
    </div>
</div>

</div><!--#tm-contents-->
</div><!--#contents-->

</div><!--#tool-->

</div><!--#container-->

{*footer*}
{include file="include/common/footer.inc"}


</body>
</html>
