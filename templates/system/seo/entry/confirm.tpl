<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
{include file="include/system/seo.inc"}
{include file="include/system/css.inc"}
{include file="include/system/js.inc"}
</head>
<body>
<div id="wrapper">
{*サイトポジション*}
{include file="include/system/position.inc"}
<div id="page">
<div id="main_l">
{include file="include/system/logout.inc"}
<div id="roof_l_white">
    <div class="inside_l">
        {include file="include/system/navi.inc"}
        <h2 class="h_title">SEO登録</h2>
        <p class="m_b10">以下の項目を確認して[変更]ボタンをクリックしてください。</p>
        <form id="adviserForm" name="adviserForm" action= "{$smarty.const.ADVISERURL}/system/seo/entry/input/uid/{$user.0._id}" method="post">

        <table id="suggest">
        <tr>
        <th colspan="2">絶対パスhtmlファイル</th>
        </tr>
        <tr>
        <td colspan="2">{$smarty.post.absolute_html_file}<input type="hidden" name="absolute_html_file" value="{$smarty.post.absolute_html_file}" /></td>
        </tr>
        </table>

        {foreach from=$form key="group_name" item="form_data" name="form_data"}
        <table id="suggest">
        <tr>
        <th colspan="2">{$group_name}</th>
        </tr>
        {foreach from=$form_data key="form_name" item="form_setting" name="form_setting"}
        {$form_name|make_form:$form_setting:$error:$smarty.const.SMARTY_BOOL_OFF:$smarty.const.SMARTY_BOOL_ON}
        {/foreach}
        </table>
        {/foreach}

        <div id="form_btn">
        <input type="hidden" name="csrf_ticket" value="{$csrf_ticket}" />
        <input type="hidden" name="operation" value="" />
        <input type="hidden" name="uid" value="{$user.0._id}" />
        <input type="image" src="/img/system/b_modoru.gif" value="submit" class="btn" onClick="return form_back()" />
        <input type="image" src="/img/system/b_touroku.gif" value="submit" class="btn" onClick="return form_regist()" />
        </div>
    </form>
    </div>
</div>
</div>
</div>
</div>
</body>
</html>
