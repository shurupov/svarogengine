<select name="<?=$field_name?>">
	<? foreach ($field['variants'] as $k=>$element) { ?>
		<option value="<?=$k?>"<?=($k==$field_data)?' selected="selected"':''?>><?=$element.($field['show_keys']?' ('.$k.')':'')?></option>
	<? } ?>
</select>
