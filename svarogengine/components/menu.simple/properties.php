<?
	$properties = array(
		"title" => "Меню с подменю любого уровня",
		"description" => "Описание",
		"only_simple" => false,
		"only_main" => false,
		"fields" => array(
			"comptpl_alias" => array(
				"name" => "comptpl_alias",
				"title" => "Шаблон компонента",
				"editor" => "select_from_folders",
				"path" => "/components/menu.simple/templates/",
			),
			"p1" => array(
				"name" => "p1",
				"title" => "Меню",
				"editor" => "select_from_db",
				"typelist" => "menu",
			),
		)
	);
	/* тут некая информация, и ещё изменения */
?>
