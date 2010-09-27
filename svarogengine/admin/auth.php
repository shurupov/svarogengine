<?
	
	session_start();
	
	$login_error = '';
	
	if ($_POST['logout']=='1') {
		$_SESSION['admin_user_id'] = 0;
	}
	
	// Проверка авторизовывается кто-нить или нет
	if ((!$_SESSION['admin_user_id'])and($_POST['type']=='auth')) {
		
		$username = $_POST['login'];
		$password = md5($_POST['password']);
		
		SQLExecuter::query('
			SELECT
				`user`.*,
				`gr`.`rights`
			FROM 
				`sc_admin_user` `user`
				LEFT JOIN `sc_admin_usergroup` `gr` ON `gr`.`id`=`user`.`usergroup_id` 
			WHERE
				`username`="'.$username.'"
				AND
				`password`="'.$password.'"
		');
		$userinfo = SQLExecuter::fetch();
		
		if ($userinfo)
			$_SESSION['admin_user_id'] = $userinfo['id'];
		else
			$login_error = 'Неправильный логин или пароль.';
		 
	}
	else {
		SQLExecuter::query('
			SELECT
				`user`.*,
				`gr`.`rights`
			FROM 
				`sc_admin_user` `user`
				LEFT JOIN `sc_admin_usergroup` `gr` ON `gr`.`id`=`user`.`usergroup_id` 
			WHERE
				`user`.`id`="'.$_SESSION['admin_user_id'].'"
		');
		$userinfo = SQLExecuter::fetch();
	}
	
	$admin_user_id = $_SESSION['admin_user_id'];
	
	if (!$admin_user_id) {
		require $engine_root."/admin/header_template.php";
		require $engine_root."/admin/auth_template.php";
		require $engine_root."/admin/footer_template.php";
		die;
	}
	
	$apanels = array();
	
	if ($userinfo['rights']=='some') {
		SQLExecuter::query('
			SELECT `panel_alias`
			FROM `sc_admin_usergroup_rights`
			WHERE `usergroup_id`="'.$userinfo['usergroup_id'].'"
		');
		
		while ($p = SQLExecuter::fetch()) {
			$apanels[] = $p['panel_alias'];
		}
	}
	
	function panels_cmp($a,$b) {
		if ($a["sort"] == $b["sort"]) {
			return 0;
		}
		return ($a["sort"] < $b["sort"]) ? -1 : 1;
	}
	
	$panels = array();
	
	if (preg_match('/^\/svarogengine\/admin\/([\w\d]+)\/index\.php$/',$_SERVER["PHP_SELF"],$regs)) {
		$active_panel = $regs[1];
	}
	
	$panels_dir = $engine_root."/admin/";
	
	//Смотрим какие панели доступны
	if ($pd = opendir($panels_dir)) {
		while ($file = readdir($pd)) {			
			if (
				($file[0]!=".")
				and
				(is_dir($panels_dir.$file))
				and
				(
					($userinfo['rights']=='all')
					or
					(in_array($file,$apanels))
				)
			) {
				include $engine_root."/admin/".$file."/properties.php";
				$panel_properties["alias"] = $file;
				if ($file==$active_panel)
					$panel_properties["active"] = true;
				$panels[$file] = $panel_properties;
				unset($panel_properties);
			}
		}
	}
	
	uksort($panels,"panels_cmp");
	
	if (($userinfo['rights']!='all')and(!in_array($active_panel,$apanels))) {
		include $engine_root."/admin/header_template.php";
		include $engine_root."/admin/noaccess_template.php";
		include $engine_root."/admin/footer.php";
		die;
	}
	
?>
