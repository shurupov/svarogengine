<?php
	
	$page = 0;
	
	SQLExecuter::query(
		"select * from sc_indexnews 
		order by ".$component_params["p2"]." ".$component_params["p3"]."
		limit ".($page*$component_params["p4"]).",".($component_params["p4"])
	);
	$list = SQLExecuter::get_array();
	
	$result["list"] = $list;
	
	$params = $result;
	
?>
