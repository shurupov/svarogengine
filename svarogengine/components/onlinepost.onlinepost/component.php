<?php
	
	if (!HelperList::helper_isset('onlinepost')) {
		return;
	}
	
	$id = $component_params['p1'];
	
	
	$result = array();
	
	if ($_POST['facepost']) {
		$values = $_POST['field'];
		$body = 'Форма онлайн отправки<br>';
		$body .= '<table>';
		
		SQLExecuter::query('
			SELECT *
			FROM `sc_onpo_request`
			WHERE `id`="'.$id.'"
		');
		
		$result['request'] = SQLExecuter::fetch();
		
		$body .= '<tr><td colspan=2 align=center>'.$result['request']['title'].'</td></tr>';
		$body .= '<tr><td colspan=2 align=center>'.nl2br($result['request']['request']).'</td></tr>';
		
		$sql_executer->query('
			SELECT *
			FROM `sc_onpo_field`
			WHERE `request_id`="'.$id.'"
			ORDER BY `order` asc
		');
		
		$questions = SQLExecuter::get_array();
		
		foreach ($questions as $question) {
			
			$value = $values[$question['id']];
			
			if (is_array($value)) {
				$value = implode('<br>',$value);
			}
			
			$body .= '<tr><td>'.$question['title'].'</td><td>'.$value.'</td></tr>';
			
		}
		
		$body .= '</table>';
		
		SQLExecuter::query('
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
	
		SQLExecuter::query('
			SELECT *
			FROM `sc_onpo_request`
			WHERE `id`="'.$id.'"
		');
	
		$result['request'] = SQLExecuter::fetch();
	
		SQLExecuter::query('
			SELECT *
			FROM `sc_onpo_field`
			WHERE `request_id`="'.$id.'"
			ORDER BY `order` asc
		');
	
		$questions = SQLExecuter::get_array();
	
		foreach ($questions as $k=>$question) {
		
			$questions[$k]['html'] = OnlinePost::get_html_from_field($question,$values);
		
		}
	
		$result['questions'] = $questions;
	
		SQLExecuter::query('
			SELECT *
			FROM `sc_onpo_fieldtype`
		');
	
		$result['fieldtypes'] = array();
	
		while ($f = SQLExecuter::fetch()) {
			$result['fieldtypes'][$f['id']] = $f;
		}
		
		$result['type'] = 'edit';
		
	}
	
	$params = $result;
	
?>
