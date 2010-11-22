<?php
	
	if (!HelperList::helper_isset('onlinepost')) {
		return;
	}
	
	$id = $component_params['p1'];
	
	SQLExecuter::query('
		SELECT *
		FROM `sc_onpo_field`
		WHERE `request_id`="'.$id.'"
		ORDER BY `sort` asc
	');
	
	$questions = SQLExecuter::get_array();
	
	$result = array();
	
	SQLExecuter::query('
		SELECT *
		FROM `sc_sa_article`
		WHERE `id`="'.$component_params['p2'].'"
	');
	
	$article = SQLExecuter::fetch();
	
	$result['text'] = $article['text'];
	
	if ((isset($_POST['facepost']))&&($_POST['facepost'])) {
		
		$result['error'] = '';
		
		if (($component_params['p3'])&&($_SESSION['captcha_keystring'] != $_POST['captcha'])) {
			$result['error'] .= 'Неправильно введён текст с картинки<br/>';
		}
		
		foreach ($questions as $question) {
			
			if (($question['nesessary'])&&(!$_POST['field'][$question['id']])) {
				$result['error'] .= 'Не введено поле &laquo;'.$question['title'].'&raquo;<br/>';
			}
			
		}
		
	}
	
	if ((isset($_POST['facepost']))&&($_POST['facepost'])&&(!$result['error'])) {
		
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
		
		foreach ($questions as $question) {
			
			$value = $values[$question['id']];
			
			if (is_array($value)) {
				$value = implode('<br>',$value);
			}
			
			$body .= '<tr><td>'.$question['title'].'</td><td>'.$value.'</td></tr>';
			
		}
		
		$body .= '</table>';
		
		$to  = $result['request']['email_to'];
		$from  = $result['request']['email_from'];
		
		SQLExecuter::query('
			INSERT INTO `sc_onpo_sended`
			(`request_id`,`time_sended`,`body`,`email_to`,`email_from`)
			VALUES
			("'.$id.'","'.time().'","'.addslashes($body).'","'.$result['request']['email_to'].'","'.$result['request']['email_from'].'")
		');
		
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
		$headers .= 'From: '.$from . "\r\n";
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
	
		foreach ($questions as $k=>$question) {
		
			$questions[$k]['html'] = OnlinePost::get_html_from_field($question,@$_POST['field'][$question['id']]);
		
		}
		
		if ($component_params['p3']) {
			$questions['captcha']['nesessary'] = 1;
			$questions['captcha']['title'] = 'Введите текст с картинки';
			$questions['captcha']['html'] = '<input type="text" name="captcha" /><br/><img id="captchaimg" src="/quickdata/captcha/?'.session_name().'='.session_id().'&'.rand().'" /><br/><a style="border-bottom: 1px dotted; cursor: pointer;" onclick="$(\'#captchaimg\').attr(\'src\',\'/quickdata/captcha/?'.session_name().'='.session_id().'&\'+Math.random());">Обновить картинку</a><script></script>';
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
