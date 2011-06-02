<!DOCTYPE html  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<meta name="keywords" content="中国,チャイナ,CHINA,コンサルティング,マーケティング" />
<meta name="description" content="中国市場開拓を目指す企業様をサポート China Adviser(チャイナアドバイザー)" />

<link rel="stylesheet" type="text/css" href="/css/common.css" />
<script type="text/javascript" src="/js/common.js"></script>

<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="icon" href="/favicon.ico" type="image/x-icon" />
 
<title>中国向けWEBサイトパフォーマンスツール | China Adviser(チャイナアドバイザー)</title>
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
    <p class="t-box7">{$time}秒</p>
    {if $time >= 10}
    <p class="t-box8">表示に10秒以上かかっているため、<br />
    ご指定のサイトは中国から閲覧することが難しい状況にあります。<br />
    サイトの表示速度に不安がある場合はご相談ください。
    </p>
    {else}
    <p class="t-box8">中国からのアクセスは時間帯によって速く表示されたり、<br />遅く表示されたりする場合があります。<br />
    サイトの表示速度に不安がある場合はご相談ください。
    </p>
    {/if}
    <div class="t-box9">
    <a href="/rapid"><img src="/img/tool/banner_express_off.jpg" alt="" /></a>
    </div>
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
