<?
	$properties = array(
		"title" => "Список статей",
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
				"path" => "/components/article.list/templates/",
			),
			"p1" => array(
				"name" => "p1",
				"title" => "Группа статей",
				"editor" => "select_from_db",
				"typelist" => "article_folder",
			),
			"p2" => array(
				"name" => "p2",
				"title" => "Сортировать по",
				"editor" => "select_from_consts",
				"variants" => array(
					"id" => "Идентификатору",
					"date" => "Идентификатору",
					"title" => "Названию",
					"sort" => "Порядку"
				),
				"show_keys" => 1,
			),
			"p3" => array(
				"name" => "p3",
				"title" => "Сортировать по",
				"editor" => "select_from_consts",
				"variants" => array(
					"asc" => "Возрастанию",
					"desc" => "Убыванию",
				),
				"show_keys" => 1,
			),
			"p4" => array(
				"name" => "p4",
				"title" => "Количество статей на странице",
				"editor" => "select_from_consts",
				"variants" => array(
					"5" => "5",
					"10" => "10",
					"20" => "20",
					"50" => "50"
				),
				"show_keys" => 0,
			)
		)
	);
?>
