<?
	
	$templates_root =  $engine_root.$field['path'];
	
	$select_data = array();
	
	if (is_dir($templates_root)) {
		$dir = opendir($templates_root);
		while ($tpl = readdir($dir)) {
			if (substr($tpl,0,1)!='.') {
				
				if (file_exists($templates_root.$tpl.'/properties.php')) {
					
					include $templates_root.$tpl.'/properties.php';
					
					$select_data[$tpl] = $properties["title"];
					
				} else {
					$select_data[$tpl] = $tpl;
				}
				
			}
		}
	}
	
?>
