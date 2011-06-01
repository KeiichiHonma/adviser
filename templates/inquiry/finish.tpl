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

<div class="doc">
    <div class="doc-title">
    <h2 class="gold">お問い合わせありがとうございました</h2>
    </div>
    <div class="doc-indent">
    <p>後日、担当者よりご連絡させていただきます。<br />
    また、ご登録いただいたメールアドレス宛てに確認のメールを送信しております。<br />
    併せてご確認くださいませ。<br />
    今後ともハチワンを宜しくお願いいたします。 <br /></p>
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
