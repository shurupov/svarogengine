<?php
	
	$result = array();
	
	SQLExecuter::query('
		SELECT *
		FROM `sc_vf_folder`
		WHERE `id`="'.$component_params['p1'].'"
	');
	$result['group'] = SQLExecuter::fetch();
	
	SQLExecuter::query('
		SELECT *
		FROM `sc_vf_video`
		WHERE `folder_id`="'.$component_params['p1'].'"
		order by '.$component_params["p2"].' '.$component_params["p3"].'
	');
	$result['video'] = SQLExecuter::get_array();
	
	$download = $component_params["p4"];
	
	$params = $result;
	
?>
