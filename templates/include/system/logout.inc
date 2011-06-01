<div id="logout">
{if $login_type == $smarty.const.TYPE_M_ADMIN || $login_type == $smarty.const.TYPE_M_ADMIN || $login_type == $smarty.const.TYPE_M_SUPPORT}
<a href="{$smarty.const.ADVISERURL}/system/logout?target=system">logout</a>
{else}
<a href="{$smarty.const.ADVISERURL}/system/logout?target=shop">logout</a>
{/if}
</div>
<span class="clear">&nbsp;</span>