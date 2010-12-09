<?php
	
	$result = array();
	
	SQLExecuter::query('
		SELECT *
		FROM `sc_af_folder`
		WHERE `id`="'.$component_params['p1'].'"
	');
	$result['group'] = SQLExecuter::fetch();
	
	SQLExecuter::query('
		SELECT *
		FROM `sc_af_audio`
		WHERE `folder_id`="'.$component_params['p1'].'"
		order by '.$component_params["p2"].' '.$component_params["p3"].'
	');
	$result['audio'] = SQLExecuter::get_array();
	
	$params = $result;
	
?>
