<?
	$typealias = $field['typelist'];
	
	$type = Datatypes::get_type_properties($typealias);
	
	$list = array();
	$list[0]['id'] = 0;
	$list[0]['title'] = 'Корень';		
	
	if ($type["dataedit"]["subelement_types"][$typealias]) {
		$list[0]['subelements'] = Datatypes::get_subelements($typealias,0,true,true);
	} else {
		$list[0]['subelements'] = Datatypes::get_r_elements($typealias,true,true);
	}
	
	$select_data = array();
	
	Datatypes::make_select_array($list,$select_data);
?>
