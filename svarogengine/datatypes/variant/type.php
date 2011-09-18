<?
	$type = array(
		"sql" => array(
			"table_name" => "sc_onpo_multifield_value",
			"fields" =>	array(
				"id" => array(
					"name" => "id",
					"type" => "int(11)",
					"else" => "auto_increment"
				),
				"field_id" => array(
					"name" => "field_id",
					"type" => "int(11)",
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
			"group" => "webforms",
			"icon" => "/img/admin/variant.png",
			"name" => "Вариант ответа",
			"subelement_types" => null,
			"mainsubelement_type" => null,
			"in_root" => false, //Отображать в корне дерева
			"listviewer" => array(
				"template" => "table",
				"fields" => array(
					"title" => array(
						"name" => "title",
						"title" => "Вариант"
					),
					"sort" => array(
						"name" => "sort",
						"title" => "Индекс сортировки"
					),
				)
			),
			"fields" => array(
				"title" => array(
					"name" => "title",
					"title" => "Вариант",
					"editor" => "input_text"
				),
				"field_id" => array(
					"name" => "field_id",
					"title" => "Онлайн-заявка",
					"editor" => "select_from_db",
					"typelist" => "field",
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
