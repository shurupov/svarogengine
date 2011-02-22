<?
	$properties = array(
		"title" => "Список аудио",
		"description" => "Описание",
		"only_simple" => false,
		"only_main" => false,
		"fields" => array(
			"comptpl_alias" => array(
				"name" => "comptpl_alias",
				"title" => "Шаблон компонента",
				"editor" => "select_from_folders",
				"path" => "/components/music.list/templates/",
			),
			"p1" => array(
				"name" => "p1",
				"title" => "Группа аудио",
				"editor" => "select_from_db",
				"typelist" => "audio_folder",
			),
			"p2" => array(
				"name" => "p2",
				"title" => "Сортировать по",
				"editor" => "select_from_consts",
				"variants" => array(
					"id" => "Идентификатору",
					"date" => "Дате",
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
				"title" => "Можно скачать mp3-файл",
				"editor" => "select_from_consts",
				"variants" => array(
					"0" => "Нет",
					"1" => "Да",
				),
				"show_keys" => 0,
			)
		)
	);
?>
