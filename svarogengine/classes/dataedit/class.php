<?
	
	class Dataedit {
		
		// Отображение страницы редактирования элемента
		public static function render_edit_page($datatype,$element_id,$action='edit') {
			
			switch ($action) {
				case 'add':
					if ($_POST['sended']) {
						$element_id = Dataedit::insert_simple_data($datatype,$_POST['field'],$_POST['value']);
						Dataedit::aftersave_type_obtain($element_id,$datatype);
						if (($_POST['where']=='list')&&(Datatypes::get_for_list_data($datatype,$element_id,$list_datatype,$field,$value))) {
							header('location: /svarogengine/admin/dataedit/?page=list&type='.$datatype.'&field='.$field.'&value='.$value);
							exit;
						} else {
							header('location: /svarogengine/admin/dataedit/?page=edit&type='.$datatype.'&id='.$element_id);
							exit;
						}
					} else {
						Dataedit::render_field_editors($datatype,$element_id,$data,'add');
					}
				break;
				case 'edit' :
				default:
					if ($_POST['sended']) {
						Dataedit::update_simple_data($_POST['fields'],$datatype,$element_id);
						Dataedit::aftersave_type_obtain($element_id,$datatype);
						if (($_POST['where']=='list')&&(Datatypes::get_for_list_data($datatype,$element_id,$list_datatype,$field,$value))) {
							header('location: /svarogengine/admin/dataedit/?page=list&type='.$datatype.'&field='.$field.'&value='.$value);
							exit;
						} else {
							header('location: /svarogengine/admin/dataedit/?page=edit&type='.$datatype.'&id='.$element_id);
							exit;
						}
					}
					$data = Dataedit::fetch_element_data($datatype,$element_id);
					Dataedit::render_field_editors($datatype,$element_id,$data);
				break;
			}
			
		}
		
		// Отображает страницу списка элементов данных типа
		public static function render_list_page($datatype,$field,$value,$action='list') {
			
			switch ($action) {
				
				case 'list' :
				default:
					$data = Dataedit::fetch_list_data($datatype,$field,$value);
					Dataedit::render_list_data($datatype,$data,$field,$value);
				break;
				case 'delete' :
					Datatypes::delete_element($datatype,$_GET['id']);					
					header('location: /svarogengine/admin/dataedit/?page=list&type='.$datatype.'&field='.$field.'&value='.$value);
					exit;
				break;
			}
			
		}
		
		public static function update_simple_data($fields,$datatype,$element_id) {
			
			$table = Datatypes::get_datatype_table($datatype);
			$editfields = Datatypes::get_dataedit_fields($datatype);
			
			$fields_line = '';
			
			foreach ($editfields as $fieldprop) {
				
				$field_data = $fields[$fieldprop['name']];
				
				Dataedit::aftersave_editor_obtain($datatype,$field,$fieldprop,$field_data,$element_id);				
				
				if ($fieldprop['editproperties']['savetype']=='simple') {
					
					$fields_line .= '`'.$fieldprop['name'].'`="'.addslashes($field_data).'",';
					
				} elseif ($fieldprop['editproperties']['savetype']=='multiple') {
					
					foreach ($fieldprop['fields'] as $field) {
						$fields_line .= '`'.$field.'`="'.addslashes($field_data[$field]).'",';
					}
					
				}
				
			}

			$fields_line = substr($fields_line,0,-1);
			
			$query = 'UPDATE `'.$table.'` SET '.$fields_line.' WHERE `id`="'.$element_id.'"';
			
			SQLExecuter::query($query);
			
		}
		
		public static function insert_simple_data($datatype,$parent_field,$value) {
			
			$table = Datatypes::get_datatype_table($datatype);
			$fields = Datatypes::get_datatype_editor_fields($datatype);
			
			$fields_line = '';
			$values_line = '';
			
			foreach ($fields as $kfield=>$fieldprop) {
				
				$field_data = $_POST['fields'][$fieldprop['name']];
				
				Dataedit::aftersave_editor_obtain($datatype,$field,$fieldprop,$field_data,$element_id);				
				
				if ($fieldprop['editproperties']['savetype']=='simple') {
					
					$fields_line .= '`'.$fieldprop['name'].'`,';
					$values_line .= '"'.addslashes($field_data).'",';
					
				} elseif ($fieldprop['editproperties']['savetype']=='multiple') {
					
					foreach ($fieldprop['fields'] as $field) {
						$fields_line .= '`'.$field.'`,';
						$values_line .= '"'.addslashes($field_data[$field]).'",';
					}
					
				}
				
			}
			
			if (!$fields[$parent_field]) {
				$fields_line .= '`'.$parent_field.'`';
				$values_line .= '"'.addslashes($value).'"';
			} else {
				$fields_line = substr($fields_line,0,-1);
				$values_line = substr($values_line,0,-1);
			}
			
			$query = 'INSERT INTO `'.$table.'` ('.$fields_line.') VALUES ('.$values_line.')';
			
			SQLExecuter::query($query);
			//exit;
			
			$id = SQLExecuter::get_last_insert_id();
			
			return $id;
			
		}		
		
		public static function fetch_element_data($datatype,$element_id,$simple_fields=0) {
			
			$fields = Datatypes::get_datatype_editor_fields($datatype);
			$editfields = Datatypes::get_dataedit_fields($datatype);
			$table_name = Datatypes::get_datatype_table($datatype);
			
			$fields_line = '`id`';
			
			foreach ($editfields as $fieldprop) {
				if ($fieldprop['editproperties']['savetype']=='simple') {
					$fields_line .= ', `'.$fieldprop['name'].'`';
				} elseif ($fieldprop['editproperties']['savetype']=='multiple') {
					foreach ($fieldprop['fields'] as $field) {
						$fields_line .= ', `'.$field.'`';
					}
				}
			}
			
			if ($element_id) {
				$query = 'SELECT '.$fields_line.' FROM `'.$table_name.'` WHERE `id`="'.$element_id.'"';
				SQLExecuter::query($query);
				$data = SQLExecuter::fetch();
			}
			
			if (!$simple_fields) {
				foreach ($editfields as $fieldprop) {
					if ($fieldprop['editproperties']['savetype']=='multiple') {
						foreach ($fieldprop['fields'] as $field) {
							$data[$fieldprop['name']][$field] = $data[$field];
							unset($data[$field]);
						}
					}
				}
			}
			
			return $data;
			
		}
		
		public static function fetch_list_data($datatype,$parent_field,$value) {
			
			$fields = Datatypes::get_datatype_list_fields($datatype);
			$table_name = Datatypes::get_datatype_table($datatype);
			
			$fields_line = '`id`';
			foreach ($fields as $field) {
				$fields_line .= ', `'.$field["name"].'`';
			}
			
			$query = 'SELECT '.$fields_line.' FROM `'.$table_name.'` WHERE `'.$parent_field.'`="'.$value.'"';
			
			SQLExecuter::query($query);
			$data = SQLExecuter::get_array();
			
			return $data;
			
		}
		
		public static function render_field_editor($field,$data,$subfield='') {
			
			if ($subfield) {
				$field_name = 'fields['.$subfield.']['.$field["name"].']';
			} else {
				$field_name = 'fields['.$field["name"].']';
			}
			$field_data = $data[$field["name"]];
			
			global $engine_root;
			
			//Получение некоторых данных
			if (file_exists($engine_root."/dataeditors/".$field["editor"]."/before_edit.php")) {
				include $engine_root."/dataeditors/".$field["editor"]."/before_edit.php";
			}
			
			ob_start();
			include $engine_root."/dataeditors/".$field["editor"]."/template.php";
			$html = ob_get_contents();
			ob_clean();
			
			return $html;
			
		}
		
		public static function render_field_editors($datatype,$element_id,$data,$action_type='edit') {
			
			$fields = Datatypes::get_datatype_editor_fields($datatype);
			
			if ($action_type=='add') {
				$data[$_GET['field']] = $_GET['value'];
			}
			
			foreach ($fields as $fk=>$field) {
				
				$fields[$fk]['html'] = Dataedit::render_field_editor($field,$data);
				
			}
			
			$data = array();
			
			$data['page'] = 'edit';
			$data['type'] = $datatype;
			$data['id'] = $element_id;
			$data['data_title'] = Datatypes::get_datatype_title($datatype);
			$data['fields'] = $fields;
			$data['action_type'] = $action_type;
			
			global $renderer;
			$renderer->add_to_head('<link rel="stylesheet" type="text/css" href="/svarogengine/dataeditorcontainer/table/styles.css">');
			
			global $engine_root;
			include $engine_root.'/dataeditorcontainer/table/template.php';
			
		}
		
		public static function render_list_data($datatype,$info,$parent_field,$value,$action_type='list') {
			
			$fields = Datatypes::get_datatype_list_fields($datatype);
			
			$data = array();
			switch ($action_type) {
				case 'list' :
					$data['data'] = $info;
					$data['fields'] = $fields;
				break;
			}
			$data['action_type'] = $action_type;
			$data['type'] = $datatype;
			$data['parent_field'] = $parent_field;
			$data['parent_field_value'] = $value;
			
			global $renderer;
			$renderer->add_to_head('<link rel="stylesheet" type="text/css" href="/css/admin/dataeditorcontainer.css">');
			
			global $engine_root;
			include $engine_root.'/datalistviewers/table/template.php';
			
		}
		
		public static function aftersave_type_obtain($element_id,$datatype) {
			
			global $engine_root;
			if (file_exists($engine_root.'/datatypes/'.$datatype.'/aftersave.php')) {
				$table = Datatypes::get_datatype_table($datatype);
				include $engine_root.'/datatypes/'.$datatype.'/aftersave.php';
			}
			
		}
		
		public static function aftersave_editor_obtain($datatype,$field,$properties,&$data,$element_id) {
			
			global $engine_root;
			if (file_exists($engine_root.'/dataeditors/'.$properties['editor'].'/after_edit.php')) {
				//Тут нужно менять переменную $data и, возможно, записать что-то куда-то ещё
				include $engine_root.'/dataeditors/'.$properties['editor'].'/after_edit.php';
			}
			
		}
		
	}
	
?>
