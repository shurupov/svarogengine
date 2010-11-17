<?php

	/**
	 * 
	 * Объект "Онлайн-отправка"
	 * Объект, описывающий вывод и обработку класса контента "Онлайн-отправка"
	 * 
	 */ 
	class OnlinePost {
		
		static function get_onlinepost_request() {
			
			$result = array();
			
			global $sql_executer;
			
			$sql_executer->query('
				SELECT *
				FROM `sc_onpo_request`
			');
			
			$requests = $sql_executer->get_array();
			
			$result['request_list'] = $requests;
			
			return $result;
			
		}
		
		static function get_del_request($id) {
			
			global $sql_executer;
			
			$sql_executer->query('
				SELECT *
				FROM `sc_onpo_field`
				WHERE
					`request_id`="'.$id.'"
					AND
					`fieldtype_id` IN (3,4)
			');
			
			$fields = $sql_executer->get_array();
			
			foreach ($fields as $field) {
				$sql_executer->query('
					DELETE FROM `sc_onpo_multifield_value`
					WHERE
						`field_id`="'.$field['id'].'"
				');
			}
			
			$sql_executer->query('
				DELETE
				FROM `sc_onpo_field`
				WHERE
					`request_id`="'.$id.'"
			');
			
			$sql_executer->query('
				DELETE FROM `sc_onpo_request`
				WHERE `id`="'.$id.'"
			');
			
			$result = self::get_onlinepost_request();
			
			return $result;
			
		}
		
		static function get_edit_request($id) {
			
			global $sql_executer;
			
			$new_id = 0;
			
			if ($_GET['delvalue_id']) {
				$sql_executer->query('
					DELETE FROM `sc_onpo_multifield_value`
					WHERE
						`id`="'.$_GET['delvalue_id'].'"
						AND
						`field_id`="'.$_GET['field_id'].'"
				');
			}
			
			if ($_POST['sended']) {
				
				$sql_executer->query('
					UPDATE `sc_onpo_request`
					SET
						`title`="'.addslashes($_POST['title']).'",
						`class_field`="'.addslashes($_POST['class_field']).'",
						`email`="'.addslashes($_POST['email']).'",
						`request`="'.addslashes($_POST['request']).'"
					WHERE
						`id`="'.$id.'"
				');
				
				foreach ($_POST['question'] as $key=>$question) {
					if ($key!='new') {
						$sql_executer->query('
							UPDATE `sc_onpo_field`
							SET
								`title`="'.addslashes($_POST['question'][$key]).'",
								`fieldtype_alias`="'.$_POST['question_type'][$key].'",
								`order`="'.$_POST['order'][$key].'"
							WHERE
								`id`="'.$key.'"
						');
					} elseif ($question!='') {
						$sql_executer->query('
							INSERT INTO `sc_onpo_field`
							(`title`,`fieldtype_alias`,`request_id`,`order`)
							VALUES
							("'.$_POST['question'][$key].'","'.$_POST['question_type'][$key].'","'.$id.'","'.$_POST['order'][$key].'")
						');
						$new_id = $sql_executer->get_last_insert_id();
					}
				}
				
				foreach ($_POST['variant'] as $k=>$variants) {
					
					if ($k=='new') {
						$k = $new_id;
					}
					
					$sql_executer->query('
						DELETE FROM `sc_onpo_multifield_value`
						WHERE
							`field_id`="'.$k.'"
					');
					foreach ($variants as $value) {
						$sql_executer->query('
							INSERT INTO `sc_onpo_multifield_value`
							(`field_id`,`value`)
							VALUES
							("'.$k.'","'.addslashes($value).'")
						');
					}
				}
				
			}
			
			if ($q_id = $_GET['del_question']) {
				$sql_executer->query('
					DELETE FROM `sc_onpo_field`
					WHERE
						`id`="'.$q_id.'"
						AND
						`request_id`="'.$id.'"
				');
			}
			
			$result = self::get_onlinepost_request();
			
			foreach ($result['request_list'] as $request) {
				if ((int)$request['id']==(int)$id) {
					$result['current'] = $request;
					break;
				}
			}
			
			$sql_executer->query('
				SELECT *
				FROM `sc_onpo_field`
				WHERE
					`request_id`="'.$id.'"
				ORDER BY `order`
			');
			
			$result['questions'] = $sql_executer->get_array();
			$result['questions'][] = array(
				'id' => 'new',
				'title' => '',
				'fieldtype_id' => 0
			);
			foreach ($result['questions'] as $k=>$question) {
				$result['questions'][$k]['variants'] = self::get_variants_of_question($question['id']);
			}
			
			$sql_executer->query('
				SELECT *
				FROM `sc_onpo_fieldtype`
				ORDER BY `id`
			');
			
			$result['fieldtypes'] = $sql_executer->get_array();
			
			return $result;
			
		}
		
		static function get_new_request() {
			
			global $sql_executer;
			
			$sql_executer->query('
				INSERT INTO `sc_onpo_request`
				(`title`)
				VALUES
				("Новая форма")
			');
			
			$id = $sql_executer->get_last_insert_id();
			
			return self::get_edit_request($id);
			
		}
		
		static function get_form_face($id) {
			
			global $sql_executer;
			
			$result = array();
			
			if ($_POST['facepost']) {
				$values = $_POST['field'];
				$body = 'Форма онлайн отправки<br>';
				$body .= '<table>';
				
				$sql_executer->query('
					SELECT *
					FROM `sc_onpo_request`
					WHERE `id`="'.$id.'"
				');
				
				$result['request'] = $sql_executer->fetch();
				
				$body .= '<tr><td colspan=2 align=center>'.$result['request']['title'].'</td></tr>';
				$body .= '<tr><td colspan=2 align=center>'.nl2br($result['request']['request']).'</td></tr>';
				
				$sql_executer->query('
					SELECT *
					FROM `sc_onpo_field`
					WHERE `request_id`="'.$id.'"
					ORDER BY `order` asc
				');
				
				$questions = $sql_executer->get_array();
				
				foreach ($questions as $question) {
					
					$value = $values[$question['id']];
					
					if (is_array($value)) {
						$value = implode('<br>',$value);
					}
					
					$body .= '<tr><td>'.$question['title'].'</td><td>'.$value.'</td></tr>';
					
				}
				
				$body .= '</table>';
				
				$sql_executer->query('
					INSERT INTO `sc_onpo_sended`
					(`request_id`,`time_sended`,`body`,`email`)
					VALUES
					("'.$id.'","'.time().'","'.addslashes($body).'","'.$result['request']['email'].'")
				');
				
				$to  = $result['request']['email'];

				// subject
				$subject = $result['request']['title'];

				// message
				$message = '
				<html>
				<head>
				  <title>'.$result['request']['title'].'</title>
				</head>
				<body>
				  '.$body.'
				</body>
				</html>
				';

				// To send HTML mail, the Content-type header must be set
				$headers  = 'MIME-Version: 1.0' . "\r\n";
				$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";

				// Additional headers
				//$headers .= 'To: Mary <mary@example.com>, Kelly <kelly@example.com>' . "\r\n";
				$headers .= 'From: automail@karramba.su' . "\r\n";
				//$headers .= 'Subject: Онлайн-отправка ' . $subject . "\r\n";
				
				//$headers .= 'Cc: birthdayarchive@example.com' . "\r\n";
				//$headers .= 'Bcc: birthdaycheck@example.com' . "\r\n";

				// Mail it
				mail($to, $subject, $message, $headers);
				
				$result['type'] = 'sended';
				
				
			} else {
			
				$sql_executer->query('
					SELECT *
					FROM `sc_onpo_request`
					WHERE `id`="'.$id.'"
				');
			
				$result['request'] = $sql_executer->fetch();
			
				$sql_executer->query('
					SELECT *
					FROM `sc_onpo_field`
					WHERE `request_id`="'.$id.'"
					ORDER BY `order` asc
				');
			
				$questions = $sql_executer->get_array();
			
				foreach ($questions as $k=>$question) {
				
					$questions[$k]['html'] = self::get_html_from_field($question,$values);
				
				}
			
				$result['questions'] = $questions;
			
				$sql_executer->query('
					SELECT *
					FROM `sc_onpo_fieldtype`
				');
			
				$result['fieldtypes'] = array();
			
				while ($f = $sql_executer->fetch()) {
					$result['fieldtypes'][$f['id']] = $f;
				}
				
				$result['type'] = 'edit';
				
			}
			
			return $result;
			
		}
		
		static function get_variants_of_question($field_id) {
			
			global $sql_executer;
			
			$sql_executer->query('
				SELECT *
				FROM `sc_onpo_multifield_value`
				WHERE `field_id`="'.$field_id.'"
			');
			
			return $sql_executer->get_array();
			
		}
		
		static function get_html_from_field($question,$values = array()) {
			
			global $sql_executer;
			
			switch ($question['fieldtype_alias']) {
				case "text" :
					$html = '<input type="text" name="field['.$question['id'].']" class="'.$result['request']['class_field'].'" value="'.$values[$question['id']].'">';
				break;
				case "textarea" :
					$html = '<textarea name="field['.$question['id'].']" class="'.$result['request']['class_field'].'">'.$values[$question['id']].'</textarea>';
				break;
				case "select" :
					$html = '<select name="field['.$question['id'].']" class="'.$result['request']['class_field'].'">';
					$sql_executer->query('SELECT * FROM `sc_onpo_multifield_value` WHERE `field_id`="'.$question['id'].'"');
					while ($f = $sql_executer->fetch()) {
						$html .= '<option value="'.$f['value'].'" '.(($f['value']==$values[$question['id']])?'selected':'').'>'.$f['value'].'</option>';
					}
					$html .= '</select>';
				break;
				case "radiobutton" :
					$html = '';
					$sql_executer->query('SELECT * FROM `sc_onpo_multifield_value` WHERE `field_id`="'.$question['id'].'"');
					while ($f = $sql_executer->fetch()) {
						$html .= '<label><input type="radio" name="field['.$question['id'].']" class="'.$result['request']['class_field'].'" '.(($f['value']==$values[$question['id']])?'checked':'').' value="'.$f['value'].'">'.$f['value'].'</label><br>';
					}
				break;
				case "checkbox" :
					$html = '<input type="checkbox" name="field['.$question['id'].']" class="'.$result['request']['class_field'].'" value="да" '.(('1'==$values[$question['id']])?'checked':'').'>';
				break;
				case "multiselect" :
					if (!$values[$question['id']]) $values[$question['id']] = array();
					$html = '<select name="field['.$question['id'].'][]" class="'.$result['request']['class_field'].'" multiple>';
					$sql_executer->query('SELECT * FROM `sc_onpo_multifield_value` WHERE `field_id`="'.$question['id'].'"');
					while ($f = $sql_executer->fetch()) {
						$html .= '<option value="'.$f['value'].'" '.((in_array($f['value'],$values[$question['id']]))?'selected':'').'>'.$f['value'].'</option>';
					}
					$html .= '</select>';
				break;
			}
			
			return $html;
			
		}
		
	}

	
	//$obtain_objects["onlinepost"] = new OnlinePost();
	
?>
