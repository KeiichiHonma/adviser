<!DOCTYPE html  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<meta name="keywords" content="中国,チャイナ,CHINA,コンサルティング,マーケティング" />
<meta name="description" content="中国市場開拓を目指す企業様をサポート China Adviser(チャイナアドバイザー)" />

<link rel="stylesheet" type="text/css" href="/css/common.css" />
<link rel="stylesheet" type="text/css" href="/css/form.css" />
<script type="text/javascript" src="/js/common.js"></script>
<script src="/js/alphafilter.js" type="text/javascript"></script>
<script type="text/javascript" src="/js/form.js"></script>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="icon" href="/favicon.ico" type="image/x-icon" />
 
<title>お問い合わせ | China Adviser(チャイナアドバイザー)</title>
</head>
<body>

<div id="container">
{*header*}
{include file="include/common/header_not_contact.inc"}

<div id="contents" class="clearfix">
{*left navi*}
{include file="include/common/l_navi.inc"}
<div id="m-contents">
<h1><img src="/img/inquiry/ptt_inquiry.jpg" alt="お問い合わせ" /></h1>

            <form id="adviserForm" name="adviserForm" action= "{$smarty.const.ADVISERURL}/inquiry/input" method="post">

            {foreach from=$form key="group_name" item="form_data" name="form_data"}
            <table cellpadding="5" cellspacing="1" class="gray">
            
            {foreach from=$form_data key="form_name" item="form_setting" name="form_setting"}
            {$form_name|make_form_gray:$form_setting:$error:$smarty.const.SMARTY_BOOL_OFF:$smarty.const.SMARTY_BOOL_ON}
            {/foreach}
            
            <tr>
            <td class="form_ttl"><table cellspacing="0" cellpadding="5"><tr><td lang="ja">お問い合わせ内容</td></tr></table></td>
            <td class="form_data">
            {if isset($smarty.post.check) && in_array("pr_check",$smarty.post.check)}{$trigger.pr_check}<input type="hidden" name="check[]" value="pr_check" /><br />{/if}
            {if isset($smarty.post.check) && in_array("rapid_check",$smarty.post.check)}{$trigger.rapid_check}<input type="hidden" name="check[]" value="rapid_check" /><br />{/if}
            {if isset($smarty.post.check) && in_array("kujapan_check",$smarty.post.check)}{$trigger.kujapan_check}<input type="hidden" name="check[]" value="kujapan_check" /><br />{/if}
            {if isset($smarty.post.check) && in_array("etc_check",$smarty.post.check)}{$trigger.etc_check}&nbsp;{$smarty.post.etc_name}<input type="hidden" name="check[]" value="etc_check" /><input type="hidden" name="etc_name" value="{$smarty.post.etc_name}" />{/if}
            </td>
            </tr>

            <tr>
            <td class="form_ttl"><table cellspacing="0" cellpadding="5"><tr><td lang="ja">ご質問など</td></tr></table></td>
            <td class="form_data">{$smarty.post.detail|nl2br}<input type="hidden" name="detail" value="{$smarty.post.detail}" /></td>
            </tr>

            </table>
            {/foreach}

            <div id="form_btn">
            <input type="hidden" name="csrf_ticket" value="{$csrf_ticket}" />
            <input type="hidden" name="operation" value="" />
            <input type="image" src="/img/button/b_back.gif" value="submit" class="btn" onClick="return form_back()" />
            <input type="image" src="/img/button/b_inquiry.gif" value="submit" class="btn" onClick="return form_regist()" />
            </div>
            </form>




</div><!--#m-contents-->
</div><!--#contents-->
	
</div><!--#container-->
{*footer*}
{include file="include/common/footer.inc"}

</body>
</html>
