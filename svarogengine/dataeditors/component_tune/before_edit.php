<?
	
	$components_root =  $engine_root.'/components/';
	
	$components_aliases = array();
	
	if (is_dir($components_root)) {
		$dir = opendir($components_root);
		while ($component_alias = readdir($dir)) {
			if (substr($component_alias,0,1)!='.') {
				
				if (file_exists($components_root.$component_alias.'/properties.php')) {
					
					include $components_root.$component_alias.'/properties.php';
					
					$components_aliases[$component_alias] = $properties["title"];
					
				} else {
					$components_aliases[$component_alias] = $component_alias;
				}
				
			}
		}
	}
	
?>
