<?
	
	function echo_element($element,$last=false) {
		
		global $datatypes;
		
		$text = '<div id="container'.$element['id'].$element['type'].'" class="element_container'.($last?' last':'').'">';
		
		$sub_isset = count($datatypes[$element['type']]['dataedit']['subelement_types']);
		
		if ($sub_isset) {
			if ($element['subelements'])
				$text .='<div id="marker'.$element['id'].$element['type'].'" class="marker minus"></div>';
			else
				$text .='<div id="marker'.$element['id'].$element['type'].'" class="marker plus"></div>';
		} else {
			$text .='<div id="marker'.$element['id'].$element['type'].'" class="emptymarker"></div>';
		}
		
		$text .= '<div class="text" style="background-image: url('.$datatypes[$element['type']]['dataedit']['icon'].');">'.$element['title'].'</div>';
		
		if ($sub_isset) {
			$text .= '<div id="subelements'.$element['id'].$element['type'].'" class="subelements">';
			$text .= echo_subelements($element['subelements']);
			$text .= '</div>';
		}
		
		$text .= '</div>';
		
		return $text;
	}
	
	function echo_subelements($subelements) {
		
		if ($subelements) {
			
			$count = count($subelements);
			
			$text = '';
			
			foreach ($subelements as $k=>$element) {
				if ($k<$count-1) {
					$text .= echo_element($element);
				} else {
					$text .= echo_element($element,true);
				}
			}
			
			return $text;
			
		} else {
			return '';
		}
		
	}
	
	
	
?>
