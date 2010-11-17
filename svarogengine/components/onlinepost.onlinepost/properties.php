<?
	$properties = array(
		"title" => "Форма для онлайн-отправки",
		"description" => "Описание",
		"only_simple" => false,
		"only_main" => false,
		"fields" => array(
			"comptpl_alias" => array(
				"name" => "comptpl_alias",
				"title" => "Шаблон компонента",
				"editor" => "select_from_folders",
				"path" => "/components/onlinepost.onlinepost/templates/",
			),
			"p1" => array(
				"name" => "p1",
				"title" => "Номер формы",
				"editor" => "input_text",
			),
			"p2" => array(
				"name" => "p2",
				"title" => "Текст из статьи",
				"editor" => "select_from_db",
				"typelist" => "article",
			),
		)
	);
?>
