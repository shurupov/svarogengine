<?
	
	global $site_root;
	
	if ($_POST['delete_file'][$properties['name']]) {
		
		SQLExecuter::query("
			SELECT
				`".$properties['name']."`
			FROM
				`".$table."`
			WHERE
				`id`='".$element_id."'
		");
		$el = SQLExecuter::fetch();
		//print_r($el);
		$field_value = $el[$properties['name']];
		unlink($site_root.$field_value);
		SQLExecuter::query("
			UPDATE
				`".$table."`
			SET
				`".$properties['name']."`=''
			WHERE
				`id`='".$element_id."'
		");
		
	}
	
	$file_path = $site_root.$properties['folder_path'].$properties['file_alias'].$element_id.$properties['file_extension'];
	//echo "<br/>".$file_path;
	
	if ($_FILES['load_file']['tmp_name'][$properties['name']]) {
		move_uploaded_file($_FILES['load_file']['tmp_name'][$properties['name']],$file_path);
		
		SQLExecuter::query("
			SELECT
				`".$properties['name']."`
			FROM
				`".$table."`
			WHERE
				`id`='".$element_id."'
		");
		$el = SQLExecuter::fetch();
		//print_r($el);
		$field_value = $el[$properties['name']];
		if (!$field_value) {
			SQLExecuter::query("
				UPDATE
					`".$table."`
				SET
					`".$properties['name']."`='".addslashes($properties['folder_path'].$properties['file_alias'].$element_id.$properties['file_extension'])."'
				WHERE
					`id`='".$element_id."'
			");
		}
	}
	
	
?>
