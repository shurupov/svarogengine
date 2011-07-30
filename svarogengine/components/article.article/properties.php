<?
	$properties = array(
		"title" => "Единичная статья",
		"description" => "Описание",
		"only_simple" => false,
		"only_main" => false,
		"cache_enabled" => true,
		"cache_condition" => array(
			"get" => true,
			"post" => false,
			"cookie" => false,
			"session" => false
		),
		"fields" => array(
			"comptpl_alias" => array(
				"name" => "comptpl_alias",
				"title" => "Шаблон компонента",
				"editor" => "select_from_folders",
				"path" => "/components/article.article/templates/",
			),
			"p1" => array(
				"name" => "p1",
				"title" => "Статья",
				"editor" => "select_from_db",
				"typelist" => "article",
			),
		)
	);
?>
