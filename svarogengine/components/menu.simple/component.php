<?php
	
	
	if (!HelperList::helper_isset('menu')) {
		return;
	}
	
	$menu_id = $component_params["p1"];
	$current_partition_id = $face_params["id"];
	$parent_partition_id = $component_params['p2'];
	
	//$component_params["p1"],$face_params["id"],$component_params['p2']
	
	//($menu_id,$current_partition_id,$parent_partition_id)
	
	$result = array();
	
	SQLExecuter::query('
		SELECT * 
		FROM `sc_partition`
		WHERE
			`menu_id`="'.$menu_id.'"
			AND
			`parent_id`="'.$parent_partition_id.'"
			AND
			`visible`="1"
		ORDER BY `sort` ASC
	');
	$menu = SQLExecuter::get_array();
	
	$result['supcurrent'] = Menu::suppartition_current($menu_id,$current_partition_id,$menu[0]['depth']);
	
	$result["current"] = $current_partition_id;
	$result["menu"] = $menu;
	
	$params = $result;
	
	
?>
