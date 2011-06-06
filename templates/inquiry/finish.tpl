<!DOCTYPE html  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<meta name="keywords" content="中国,お問い合わせ,Webマーケティング,プロモーション,アクセス,スピード,改善,チャイナアドバイザー,china adviser" />
<meta name="description" content="チャイナアドバイザーでは中国向けWebマーケティング・プロモーション・中国人観光客の集客・アクセススピード改善などのサービスをご紹介しています。" />

<link rel="stylesheet" type="text/css" href="/css/common.css" />
<link rel="stylesheet" type="text/css" href="/css/form.css" />
<script type="text/javascript" src="/js/common.js"></script>
<script src="/js/alphafilter.js" type="text/javascript"></script>
<link rel="shortcut icon" href="/img/common/favicon.ico" type="image/x-icon" />
<link rel="icon" href="/img/common/favicon.ico" type="image/x-icon" />
 
<title>お問い合わせ | チャイナアドバイザー</title>
</head>
<body>

<div id="container">
{*header*}
{include file="include/common/header_not_contact.inc"}

<div id="contents" class="clearfix">
{*left navi*}
{include file="include/common/l_navi.inc"}
<div id="m-contents">
<h2><img src="/img/inquiry/ptt_inquiry.jpg" alt="お問い合わせ" /></h2>

<div class="doc">
    <div class="doc-title">
    <h3 class="gold">お問い合わせありがとうございました</h3>
    </div>
    <div class="doc-indent">
    <p>後日、担当者よりご連絡させていただきます。<br />
    また、ご登録いただいたメールアドレス宛てに確認のメールを送信しております。<br />
    併せてご確認くださいませ。<br />
    今後ともChina Adviserを宜しくお願いいたします。 <br /></p>
    </div>
</div>
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
