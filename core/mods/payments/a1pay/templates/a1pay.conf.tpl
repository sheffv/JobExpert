<h2 class="modConfCaption" style="text-align: center;">{$smarty.const.A1PAY_CONFIG_FORM_HEAD}</h2>
<div class="bigPageHelp">
	{$smarty.const.A1PAY_HELP_SHOP_ENABLE}
</div>
<form action="{$smarty.const.CONF_ADMIN_FILE}?m=mods&amp;s=payments&amp;action=config&amp;id=a1pay" method="post" enctype="multipart/form-data">
<table style="width: 100%;" class="data_table" cellspacing="5" cellpadding="5">
	<tr>
		<td>{$smarty.const.A1PAY_CONFIG_FORM_PREFIX}</td>
		<td><input type="text" name="prefix" value="{$smarty.const.A1PAY_CONF_PREFIX}"></td>
		<td class="mod_help">{$smarty.const.A1PAY_CONFIG_FORM_PREFIX_HELP}</td>
	</tr>
	<tr>
		<td>{$smarty.const.A1PAY_CONFIG_FORM_SECRET_KEY}</td>
		<td><input type="text" name="secret_key" value="{$smarty.const.A1PAY_CONF_SECRET_KEY}" size="50"></td>
		<td class="mod_help">{$smarty.const.A1PAY_CONFIG_FORM_SECRET_KEY_HELP}</td>
	</tr>
</table>

<p style="text-align: center"><input type="submit" name="conf" value="{$smarty.const.FORM_BUTTON_SAVE}" class="button"></p>
</form>

<script type="text/javascript">
$( function() {
	$('.modConfCaption').click( function() {
		$('.bigPageHelp').toggle();
	});
});
</script>

{if $tariffs_template}
	{*include file=$tariffs_template*}
{/if}
{include file=$numbersTtemplate}