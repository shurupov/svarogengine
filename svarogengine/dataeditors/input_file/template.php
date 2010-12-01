<input type="file" name="<?='load_file['.$field["name"].']'?>" value="<?=$field_data?>" />
<input type="hidden" name="<?=$field_name?>" value="<?=$field_data?>" />
<? if ($field_data) { ?>
<br/>
Файл загружен <a target=_blank href="<?=$field_data?>"><?=$field_data?></a>
<br/>
<label><input type="checkbox" name="<?='delete_file['.$field["name"].']'?>" value="1" style="width: auto; height: auto;" /> Удалить</label>
<? } ?>

