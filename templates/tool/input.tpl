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

<script type="text/javascript" src="/js/validatejs.js"></script>
{literal}
<script type="text/javascript">
<!--
var myForm = new Validate();
//バリデーションの設定
myForm.addRules({id:'check_url',option:'url',error:'URLが不正です。入力されたURLをご確認ください。'});

function speedSubmit(url){
    if(myForm.Apply()){
        //document.getElementById("speed_result").innerHTML = '';
        document.getElementById("road").style.visibility="visible";
        document.form1.submit();
    }else{
        return false;
    }
}

function writeFlash(){
    var html = '';
    html += '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="588" height="222" id="wait" align="middle">';
    html += '<param name="allowScriptAccess" value="sameDomain" />';
    html += '<param name="allowFullScreen" value="false" />';
    html += '<param name="movie" value="/img/wait.swf" /><param name="quality" value="high" /><param name="bgcolor" value="#ffffff" />    <embed src="/img/wait.swf" quality="high" bgcolor="#ffffff" width="588" height="222" name="wait" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />';
    html += '</object>';
    document.write(html);
}

// -->
</script>
{/literal}
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

<div class="tool-input">
    <h2><img src="/img/tool/tool_input_tt.jpg" alt="" /></h2>
    <form name="form1" action="{$smarty.const.ADVISERURL}/tool/input" method="post" onsubmit="speedSubmit(document.form1.check_url.value);return false;">
        <div class="t-box">
        <span>http://</span><input type="text" size="50" name="check_url" id="check_url" value="" style="width:350px; font-size:116%; padding:3px;" />
        <input type="hidden" name="csrf_ticket" value="{$csrf_ticket}" />
        </div>
        <div class="t-box2">
        <p>・http://は除いて入力してください。<br />
        ・測定したいページのURLを入力してください。</p>
        </div>
        <div class="t-box3">
        <input type="image" src="/img/tool/tool_input_bt_off.jpg" value="  submit  " onmouseover="this.src='/img/tool/tool_input_bt_on.jpg'" onmouseout="this.src='/img/tool/tool_input_bt_off.jpg'">
        </div>
    </form>
</div>


<div id="road">
    <div class="arrow">
    <img src="/img/tool/tool_arrow.jpg" alt="" />
    </div>

    <div class="tool-action">
    <script language="javascript" type="text/javascript">
    <!---
    writeFlash();
    //--->
    </script>
    </div>

</div>

</div><!--#tm-contents-->
</div><!--#contents-->

</div><!--#tool-->

</div><!--#container-->
{literal}
<script type="text/javascript">
<!--
document.getElementById('road').style.visibility = 'hidden';
// -->
</script>
{/literal}

{*footer*}
{include file="include/common/footer.inc"}


</body>
</html>
