    <div class="DesignLeftSideBarBlockWrapperB">
        <h3 class="sideBlockHeader" id="sectionsList">{$smarty.const.MENU_ANNOUNCES_NAVIGATOR}&nbsp;{$smarty.const.MENU_ANNOUNCES_NAVIGATOR_ON_SECTIONS}</h3>
        <ul>
            {* ------------------------ *}
            {assign var="i" value="1"}

            {if $menu eq "vacancy" && ($actPage.sections|default:false || $actPage.professions|default:false)}
                {assign var="i" value=$i+1}
            {/if}
            {* ------------------------ *}
            <li class="{if ($i%2)}even{else}odd{/if}">
                <a class="withIcon" href="{$chpu->createChpuUrl("`$smarty.const.CONF_SCRIPT_URL`index.php?ut=$user_type&amp;do=vacancy&amp;action=sections")}">{$smarty.const.FORM_VACANCYS_HEAD}</a>
                <a class="icon" href="{$chpu->createChpuUrl("`$smarty.const.CONF_SCRIPT_URL`index.php?ut=$user_type&amp;do=rss&amp;action=vacancy")}"><img src="{$smarty.const.CONF_SCRIPT_URL}{$smarty.const.TEMPLATE_PATH}images/design/sideBarMenuRss.png" alt="RSS"></a>
            </li>

			{if $menu eq "vacancy" && ($actPage.sections|default:false || $actPage.professions|default:false)}
                {assign var="i" value=$i+1}
                <li class="CategoriesLists">
                <table cellpadding="0" cellspacing="0">
					{foreach from=$sections item="section" name="section"}
						<tr>
							<td><a href="{$chpu->createChpuUrl("`$smarty.const.CONF_SCRIPT_URL`index.php?ut=$user_type&amp;do=vacancy&amp;action=sections&amp;id=`$section.tId`")}">{$section.name}</a>&nbsp;</td>
							<td class="counter">&nbsp;[<strong>{$section.cnt_vacancy}</strong>]</td>
							<td>&nbsp;<a href="{$chpu->createChpuUrl("`$smarty.const.CONF_SCRIPT_URL`index.php?ut=$user_type&amp;do=rss&amp;action=vacancy&amp;subaction=section&amp;id=`$section.tId`")}"><img src="{$smarty.const.CONF_SCRIPT_URL}{$smarty.const.TEMPLATE_PATH}images/design/sideBarMenuRss10.png" alt="RSS"></a></td>
						</tr>
					{/foreach}
				</table><br>
                </li>
			{/if}
            {* ------------------------ *}
            {assign var="i" value=$i+1}
            <li class="{if ($i%2)}even{else}odd{/if}">
                <a class="withIcon" href="{$chpu->createChpuUrl("`$smarty.const.CONF_SCRIPT_URL`index.php?ut=$user_type&amp;do=resume&amp;action=sections")}">{$smarty.const.FORM_RESUMES_HEAD}</a>
                <a class="icon"  href="{$chpu->createChpuUrl("`$smarty.const.CONF_SCRIPT_URL`index.php?ut=$user_type&amp;do=rss&amp;action=resume")}"><img src="{$smarty.const.CONF_SCRIPT_URL}{$smarty.const.TEMPLATE_PATH}images/design/sideBarMenuRss.png" alt="RSS"></a>
            </li>
			{if $menu eq "resume" && ($actPage.sections|default:false || $actPage.professions|default:false)}
                <li class="CategoriesLists">
                <table cellpadding="0" cellspacing="0">
					{foreach from=$sections item="section" name="section"}
						<tr>
							<td><a href="{$chpu->createChpuUrl("`$smarty.const.CONF_SCRIPT_URL`index.php?ut=$user_type&amp;do=resume&amp;action=sections&amp;id=`$section.tId`")}">{$section.name}</a>&nbsp;</td>
							<td class="counter">&nbsp;[<strong>{if !$user_email}{$section.cnt_resume_v}{else}{$section.cnt_resume_m}{/if}</strong>]</td>
							<td>&nbsp;<a href="{$chpu->createChpuUrl("`$smarty.const.CONF_SCRIPT_URL`index.php?ut=$user_type&amp;do=rss&amp;action=resume&amp;subaction=section&amp;id=`$section.tId`")}"><img src="{$smarty.const.CONF_SCRIPT_URL}{$smarty.const.TEMPLATE_PATH}images/design/sideBarMenuRss10.png" alt="RSS"></a></td>
						</tr>
					{/foreach}
				</table>
                </li>
			{/if}
        </ul>
    </div>

