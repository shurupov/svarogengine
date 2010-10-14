<?
	$type = array(
		"sql" => array(
			"table_name" => "sc_sa_article",
			"fields" =>	array(
				"id" => array(
					"name" => "id",
					"type" => "int(11)",
					"else" => "auto_increment"
				),
				"theme_id" => array(
					"name" => "theme_id",
					"type" => "int(11)"
				),
				"has_preview" => array(
					"name" => "has_preview",
					"type" => "int(1)",
				),
				"title" => array(
					"name" => "title",
					"type" => "varchar(255)",
				),
				"pre_text" => array(
					"name" => "pre_text",
					"type" => "text",
				),
				"text" => array(
					"name" => "text",
					"type" => "text",
				),
				"date" => array(
					"name" => "date",
					"type" => "int(11)",
				),
				"sort" => array(
					"name" => "sort",
					"type" => "int(11)",
				),
			)
		),
		"dataedit" => array(
			"icon" => "/img/admin/article_text.png",
			"name" => "Статьи",
			"subelement_types" => null,
			"mainsubelement_type" => null,
			"in_root" => false, //Не отображать в корне дерева
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
				"date" => array(
					"name" => "date",
					"title" => "Дата",
					"editor" => "datepicker"
				),
				"theme_id" => array(
					"name" => "theme_id",
					"title" => "Группа статей",
					"editor" => "select_from_db",
					"typelist" => "article_folder",
				),
				"text" => array(
					"name" => "text",
					"title" => "Текст",
					"editor" => "fckeditor"
				),
			)
		)
	);
?>
