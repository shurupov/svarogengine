<?
	$type = array(
		"sql" => array(
			"table_name" => "sc_vf_folder",
			"fields" =>	array(
				"id" => array(
					"name" => "id",
					"type" => "int(11)",
					"else" => "auto_increment"
				),
				"parent_id" => array(
					"name" => "theme_id",
					"type" => "int(11)"
				),

				"title" => array(
					"name" => "title",
					"type" => "varchar(255)",
				),
				"sort" => array(
					"name" => "sort",
					"type" => "int(11)",
				),
			)
		),
		"dataedit" => array(
			"group" => "media",
			"icon" => "/img/admin/video_folder.png",
			"name" => "Группы видео-данных",
			"subelement_types" => array(
				"audio_folder" => array(
					"type_alias" => "video_folder",
					"link_field" => "parent_id",
					"in_sublist" => true, //В подсписке слева
					"in_buttons" => true //Иконка с подэлементами справа от элемента, при нажатии открывается список справа
				),
				"video" => array(
					"type_alias" => "video",
					"link_field" => "folder_id",
					"in_sublist" => true, //В подсписке слева
					"in_buttons" => true //Иконка с подэлементами справа от элемента, при нажатии открывается список справа
				),
			),
			"mainsubelement_type" => "video_folder",
			"in_root" => true, //Отображать в корне дерева
			"list_settings" => array(
				"viewer" => "simplelist",
				"fields" => array(
					"title" => array(
						"name" => "title",
						"title" => "Название"
					)
				)
			),
			"fields" => array(
				"title" => array(
					"name" => "title",
					"title" => "Название",
					"editor" => "input_text"
				),
				"parent_id" => array(
					"name" => "parent_id",
					"title" => "Надгруппа",
					"editor" => "select_from_db",
					"typelist" => "article_folder",
				),
				"alias" => array(
					"name" => "alias",
					"title" => "Внутреннее название",
					"editor" => "input_text"
				),
			)
		)
	);
?>
