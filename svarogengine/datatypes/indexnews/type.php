<?
	$type = array(
		"sql" => array(
			"table_name" => "sc_indexnews",
			"fields" =>	array(
				"id" => array(
					"name" => "id",
					"type" => "int(11)",
					"else" => "auto_increment"
				),
				"title" => array(
					"name" => "title",
					"type" => "varchar(255)",
				),
				"text" => array(
					"name" => "title",
					"type" => "varchar(255)",
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
			"group" => "articles",
			"icon" => "/img/admin/indexnews.png",
			"name" => "Новости сайта",
			"subelement_types" => null,
			"mainsubelement_type" => null,
			"in_root" => true, //Не отображать в корне дерева
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
				"text" => array(
					"name" => "text",
					"title" => "Текст новости",
					"editor" => "textarea"
				),
				"date" => array(
					"name" => "date",
					"title" => "Дата",
					"editor" => "datepicker"
				),
				"sort" => array(
					"name" => "sort",
					"title" => "Индекс сортировки",
					"editor" => "input_text"
				),
			)
		)
	);
?>
