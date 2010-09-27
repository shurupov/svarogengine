<?
	
	$datatypes = array();
	
	class Datatypes {
		
		public static function get_datatypes() {
			
			global $datatypes;
			global $engine_root;
			
			$types_dir = $engine_root."/datatypes/";
			
			//Смотрим какие типы описаны должным образом
			if ($td = opendir($types_dir)) {
				while ($file = readdir($td)) {
					if (($file[0]!=".")and(is_dir($types_dir.$file))) {
						include $types_dir.$file."/type.php";
						
						foreach ($type['dataedit']['fields'] as $fk=>$field) {
							
							if (file_exists($engine_root."/dataeditors/".$field['editor']."/properties.php")) {
								include $engine_root."/dataeditors/".$field['editor']."/properties.php";
								$type['dataedit']['fields'][$fk]['editproperties'] = $properties;
								unset($properties);
							}
							
						}
						
						$datatypes[$file] = $type;
						
						unset($type);
					}
				}
			}
			
		}
		
		public static function get_dataedit_fields($datatype) {
			
			$type = Datatypes::get_type_properties($datatype);
			
			return $type['dataedit']['fields'];
			
		}
		
		public static function get_type_properties($type) {
			
			global $datatypes;
			
			return $datatypes[$type];
			
		}
		
		public static function get_elements($type,$parent_field='',$value=0) {
			
			global $datatypes;
			
			SQLExecuter::query("
				SELECT 
					`id`,
					`title`,
					\"".$type."\" as `type`
				FROM `".$datatypes[$type]["sql"]["table_name"]."`
				".($parent_field?"WHERE `".$parent_field."`=\"".$value."\"":"")."
				ORDER BY `sort`
			");
			
			return SQLExecuter::get_array();
			
		}
		
		public static function get_r_elements($type,$recursive=false,$one_type=false) {
			
			global $datatypes;
			
			$result = Datatypes::get_elements($type);
			
			if ($recursive) {
				Datatypes::add_subelements_to_list($result,$one_type);
			}			
			
			return $result;
			
		}
		
		public static function get_subelements($type,$id,$recursive=false,$one_type=false) {
			
			global $datatypes;
			$result = array();
			
			if ($datatypes[$type]['dataedit']['subelement_types']) {
				if ($one_type) {
					if ($datatypes[$type]['dataedit']['subelement_types'][$type]) {
						$subelement_type = $datatypes[$type]['dataedit']['subelement_types'][$type];
						$result = Datatypes::get_elements($subelement_type['type_alias'],$subelement_type['link_field'],$id);						
					}
				} else foreach ($datatypes[$type]['dataedit']['subelement_types'] as $subelement_type) {
					$result = array_merge($result,Datatypes::get_elements($subelement_type['type_alias'],$subelement_type['link_field'],$id));
				}
			}
			
			if ($recursive) {
				Datatypes::add_subelements_to_list($result,$one_type);
			}
			
			return $result;
			
		}
		
		public static function add_subelements_to_list(&$list,$one_type=false) {
			
			foreach ($list as $k=>$element) {
				$list[$k]['subelements'] = Datatypes::get_subelements($element['type'],$element['id'],true,$one_type);
			}
			
		}
		
		public static function echo_element($element,$last=false) {
			
			global $datatypes;
			
			$text = '<div id="container'.$element['id'].$element['type'].'" class="element_container'.($last?' element_container-last':'').'">';
			
			$sub_isset = count($datatypes[$element['type']]['dataedit']['subelement_types']);
			
			if ($sub_isset) {
				if ($element['subelements'])
					$text .='<div id="marker'.$element['id'].$element['type'].'" class="marker'.($last?'-last':'').' minus'.($last?'-last':'').'"></div>';
				else
					$text .='<div id="marker'.$element['id'].$element['type'].'" class="marker'.($last?'-last':'').' plus'.($last?'-last':'').'"></div>';
			} else {
				$text .='<div id="marker'.$element['id'].$element['type'].'" class="emptymarker'.($last?'-last':'').'"></div>';
			}
			
			$text .= '<div class="buttons">';
			$text .= '<a href="?page=edit&type='.$element['type'].'&id='.$element['id'].'"><img src="/img/admin/edit.png" height="16" /></a>';
			if ($datatypes[$element['type']]['dataedit']['subelement_types']) {
				
				 foreach ($datatypes[$element['type']]['dataedit']['subelement_types'] as $subelement_type) {
					$text .= '<a href="./?page=list&type='.$subelement_type['type_alias'].'&field='.$subelement_type['link_field'].'&value='.$element['id'].'">';
					$text .= '<img height=16 src="'.$datatypes[$subelement_type['type_alias']]['dataedit']['icon'].'" />';
					$text .= '</a>';
				}
				
			}
			$text .= '</div>';
			
			$text .= '<div class="text" style="background-image: url('.$datatypes[$element['type']]['dataedit']['icon'].');">'.$element['title'];

			$text .= '</div>';
			
			
			
			
			if ($sub_isset) {
				$text .= '<div id="subelements'.$element['id'].$element['type'].'" class="subelements">';
				$text .= Datatypes::echo_subelements($element['subelements']);
				$text .= '</div>';
			}
			
			$text .= '</div>';
			
			return $text;
		}
		
		public static function echo_subelements($subelements) {
			
			if ($subelements) {
				
				$count = count($subelements);
				
				$text = '';
				
				foreach ($subelements as $k=>$element) {
					if ($k<$count-1) {
						$text .= Datatypes::echo_element($element);
					} else {
						$text .= Datatypes::echo_element($element,true);
					}
				}
				
				return $text;
				
			} else {
				return '';
			}
			
		}
		
		public static function get_datatype_editor_fields($datatype) {
			
			global $datatypes;
			
			return $datatypes[$datatype]["dataedit"]["fields"];
			
		}
		
		public static function get_datatype_list_fields($datatype) {
			
			global $datatypes;
			
			return $datatypes[$datatype]["dataedit"]["list_settings"]["fields"];
			
		}
		
		public static function get_datatype_table($datatype) {
			
			global $datatypes;
			
			return $datatypes[$datatype]["sql"]["table_name"];			
			
		}
		
		public static function get_datatype_title($datatype) {
			
			global $datatypes;
			
			return $datatypes[$datatype]["dataedit"]["name"];	
			
		}
		
		public static function get_for_list_data($search_datatype,$element_id,&$list_datatype,&$field,&$value) {
			
			global $datatypes;
			
			foreach ($datatypes as $alias=>$datatype_data) {
				foreach($datatype_data['dataedit']['subelement_types'] as $subtype) {
					if ($subtype['type_alias']==$search_datatype) {
						$list_datatype = $alias;
						$field = $subtype['link_field'];
						SQLExecuter::query('
							SELECT
								`'.$field.'`
							FROM
								`'.$datatypes[$search_datatype]['sql']['table_name'].'`
							WHERE
								`id`="'.addslashes($element_id).'"
						');
						$d = SQLExecuter::fetch();
						$value = $d[$field];
						return true;
					}
				}
			}
			
			return false;
			
		}
		
		public static function delete_element($datatype,$element_id) {
			
			global $datatypes;
			
			$list = Datatypes::get_subelements($datatype,$element_id);
			
			foreach ($list as $element) {
				Datatypes::delete_element($element['type'],$element['id']);
			}
			
			SQLExecuter::query('DELETE FROM `'.$datatypes[$datatype]['sql']['table_name'].'` WHERE `id`="'.addslashes($element_id).'"');
			
		}
		
		public static function make_select_array($list,&$select,$depth_str='') {
			foreach ($list as $element) {
				$select[$element['id']] = $depth_str.$element['title'];
				Datatypes::make_select_array($element['subelements'],$select,$depth_str.'&nbsp;&nbsp;&nbsp;&nbsp;');
			}
		}
		
	}
	
?>
