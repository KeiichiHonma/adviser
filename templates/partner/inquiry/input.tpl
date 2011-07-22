<!DOCTYPE html  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<meta name="keywords" content="中国,セールスパートナーのお問い合わせ,Webマーケティング,プロモーション,アクセス,スピード,改善,チャイナアドバイザー,china adviser" />
<meta name="description" content="チャイナアドバイザーでは中国向けWebマーケティング・プロモーション・中国人観光客の集客・アクセススピード改善などのサービスをご紹介しています。" />

<link rel="stylesheet" type="text/css" href="/css/common.css" />
<link rel="stylesheet" type="text/css" href="/css/form.css" />
<script type="text/javascript" src="/js/common.js"></script>
<script src="/js/alphafilter.js" type="text/javascript"></script>
<script type="text/javascript" src="/js/form.js"></script>
<link rel="shortcut icon" href="/img/common/favicon.ico" type="image/x-icon" />
<link rel="icon" href="/img/common/favicon.ico" type="image/x-icon" />
 
<title>セールスパートナーのお問い合わせ | チャイナアドバイザー</title>
</head>
<body>

<div id="container">
{*header*}
{include file="include/common/header_not_contact.inc"}

<div id="contents" class="clearfix">
{*left navi*}
{include file="include/common/l_navi.inc"}
<div id="m-contents">
<h2><img src="/img/partner/ptt_inquiry.jpg" alt="セールスパートナーのお問い合わせ" /></h2>

<img src="/img/partner/inquiry01_img01.jpg" alt="お気軽にお問い合わせください" />

            <form id="adviserForm" name="adviserForm" action= "{$smarty.const.ADVISERURL}/partner/inquiry/input" method="post">

            {foreach from=$form key="group_name" item="form_data" name="form_data"}
            <table cellpadding="5" cellspacing="1" class="gray">
            
            {foreach from=$form_data key="form_name" item="form_setting" name="form_setting"}
            {$form_name|make_form_gray:$form_setting:$error:$smarty.const.SMARTY_BOOL_OFF:$smarty.const.SMARTY_BOOL_OFF}
            {/foreach}
            </table>
            {/foreach}

            <div id="form_btn">
            <input type="hidden" name="csrf_ticket" value="{$csrf_ticket}" />
            <input type="hidden" name="operation" value="check" />
            <input type="image" src="/img/button/b_confirm.gif" value="submit" class="btn" onClick="return form_confirm(this)" />
            </div>
            </form>




</div><!--#m-contents-->
</div><!--#contents-->
	
</div><!--#container-->
<script src="/js/inquiry.js" type="text/javascript"></script>
<script type="text/javascript">
{if !isset($smarty.post.etc_check) || $smarty.post.etc_check != "etc"}
    disableEtc();
{/if}
</script>

{*footer*}
{include file="include/common/footer.inc"}


</body>
</html>
