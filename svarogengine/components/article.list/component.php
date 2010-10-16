<?php
	
	/**
	 * Получение данных для морды сайта "Список статей"
	 */
	//static function get_f_articlelist($component_params,$page_params) 
			
	$result = array();
	
	SQLExecuter::query('
		SELECT *
		FROM `sc_sa_theme`
		WHERE `id`="'.$component_params['p1'].'"
	');
	$result['theme'] = SQLExecuter::fetch();
	
	$result['page_path'] = $component_params["fullalias"];
	
	if (preg_match('/\/'.addslashes($result['theme']['alias']).'\.(\d+)\.html/',$page_params,$regs)) {
		SQLExecuter::query("select * from sc_sa_article where id=".$regs[1]." and theme_id=".$component_params["p1"]);
		if ($article = SQLExecuter::fetch()) {
			$result["type"] = "article";
			$result["article"] = $article;
			$params = $result;
		}
	} else {
		
		$page = 0;
		
		//echo $page_params;
		
		if (preg_match('/^\/page\.([\d]+)\.html$/',$page_params,$regs)) {
			//print_r($regs);
			$page = $regs[1];
			//echo 'eee';
		}
		
		//echo $page;
		
		SQLExecuter::query(
			"select * from sc_sa_article 
			where 
				theme_id=".$component_params["p1"]."
			order by ".$component_params["p2"]." ".$component_params["p3"]."
			limit ".($page*$component_params["p4"]).",".($component_params["p4"])
		);
		$list = SQLExecuter::get_array();
		
		$result["type"] = "list";
		$result["list"] = $list;			
		
		SQLExecuter::query('
			SELECT COUNT(*)/'.$component_params["p4"].' as `c`
			FROM `sc_sa_article`
			WHERE `theme_id`='.$component_params["p1"].'
		');
		$pages_count = SQLExecuter::fetch();
		
		$result['pages_count'] = ceil($pages_count['c']);
		$result['page'] = $page;
		
		$params = $result;
		
	}
	
	$params['partition_alias'] = $_GET['alias'];
	
?>
