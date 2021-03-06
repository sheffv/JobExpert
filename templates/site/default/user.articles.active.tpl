<form action="{$chpu->createChpuUrl("`$smarty.const.CONF_SCRIPT_URL`index.php?ut=$user_type&amp;do=user.articles&amp;action=active")}" method="post" enctype="multipart/form-data">
	<div class="DesignMainPageBody">
		<table class="mainBodyTable" style="border-spacing: 0px;">
            <tr>
				<th colspan="2">{$smarty.const.TABLE_COLUMN_TITLE}</th>
				<th>{$smarty.const.TABLE_COLUMN_SECTION}</th>
				<th>{$smarty.const.TABLE_COLUMN_PUBLICATION_DATE}</th>
				{if $codex.rights.edit_articles}<th>{$smarty.const.TABLE_COLUMN_OPTIONS}</th>{/if}
				<th style="padding: 3px; text-align: center; width: 5%;"><input type="checkbox" class="checked_all"></th>
            </tr>
		{if $arrArticles}
			{foreach from=$arrArticles item="article" name="i"}
			<tr class="tr_hover" style="cursor: default;">
				<td class="VRIcon"><img src="{$smarty.const.CONF_SCRIPT_URL}{$smarty.const.TEMPLATE_PATH}images/design/mainBodyTableVRIcon.gif" alt=""></td>
			{if $article.link}
				<td class="AlignLeft" style="padding: 5px;" title="{$article.title|escape}">
					<a href="{$chpu->createChpuUrl("`$smarty.const.CONF_SCRIPT_URL`index.php?ut=$user_type&amp;do=articles&amp;action=view&amp;id=`$article.tId`")}" target="_blank">
						{$article.title|truncate}
					</a>
				</td>
			{else}
				<td class="AlignLeft" style="padding: 5px;" title="{$article.title|escape}">
					<span class="detail imLink">{$article.title|truncate}</span>
					<input type="hidden" value="{$article.id}">
				</td>
			{/if}
				<td>{$arrArtSections.full[$article.id_section].name}</td>
				<td>{$article.datetime|date_format:$smarty.const.CONF_DATE_FORMAT}&nbsp;{$article.datetime|date_format:$smarty.const.CONF_TIME_FORMAT}</td>
				{if $codex.rights.edit_articles}
				<td>
					<a href="{$chpu->createChpuUrl("`$smarty.const.CONF_SCRIPT_URL`index.php?ut=$user_type&amp;do=user.articles&amp;action=edit&amp;id=`$article.tId`")}">
						<img src="{$smarty.const.CONF_SCRIPT_URL}{$smarty.const.TEMPLATE_PATH}images/actions/edit1.png" alt="{$smarty.const.FORM_ACTION_EDIT}" title="{$smarty.const.FORM_ACTION_EDIT}">
					</a>
				</td>
				{/if}
				<td class="last"><input type="checkbox" name="articles[{$article.id}]" class="checkbox_entry"></td>
			</tr>
			{/foreach}
			<tr>
				<td colspan="6" class="last" style="text-align: right;">
                	<table align="right">
                		<tr>
                			<td>
								<select name="action" class="select">
									<option value="">{$smarty.const.FORM_ACTION_SELECT}</option>
									{if $codex.rights.arc_articles}<option value="archive">{$smarty.const.FORM_ACTION_ARCHIVE}</option>{/if}
									{if $codex.rights.del_articles}<option value="delete">{$smarty.const.FORM_ACTION_DELETE_SELECTED}</option>{/if}
								</select>
							</td>
							<td>
								<div class="submitButtonLight"><input type="submit" class="shadow01red" value="{$smarty.const.FORM_BUTTON_EXECUTE}"></div>
							</td>
						</tr>
					</table>
                </td>
            </tr>
		{else}
			<tr>
        		<td class="last" style="text-align: center;" colspan="6">{$smarty.const.TABLE_NOT_DATA}</td>
			</tr>
		{/if}
		</table>
	</div>
</form>

<script type="text/javascript">
<!--
$(function() {
	//Подробный просмотр
	$('.detail').click(function() {
		$('#overlay, #dialog').show();
		var id = $(this).next('input').val();
		var title = $(this).parent('td').attr('title');

		$.ajax({ type: 'post', url: '/ajax.php',
			data: ({ getArticleDetail: id }),
			success: function(data) {
				$('#overlay, #dialog').hide();
				$.colorbox({ html: data, width: '80%', height: '90%', opacity: 0, scrolling: true, title: title });
			}
		});
	});

	//включаем все переключатели в таблице	
	$('.checked_all').click(function() {
		(!$(this).is(':checked')) ? $('.checkbox_entry').removeAttr('checked') : $('.checkbox_entry').attr('checked', 'checked');
	});

	// проверяем выбранное действие
	$('form:first').submit(function() {
		var action = $('select[name="action"] option:selected').val();
		if (!action) {
			alert('{$smarty.const.ERROR_NOT_SELECT_ACTION}');
			return false;
		} else if (!$('.checkbox_entry:checked').size()) {
			alert('{$smarty.const.MESSAGE_WARNING_NOT_SELECT_RECORDS}');
			return false;
		} else {
			return ('delete' === action) ? confirm('{$smarty.const.MESSAGE_DELETE_RECORDS}') : true;
		}
	});
});
-->
</script>