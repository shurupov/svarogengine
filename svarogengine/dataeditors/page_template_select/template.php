<select name="<?=$field_name?>">
	<? foreach ($select_data as $k=>$element) { ?>
		<option value="<?=$k?>"<?=($k==$field_data)?' selected="selected"':''?>><?=$element?></option>
	<? } ?>
</select>
