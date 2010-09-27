<?
	$type = array(
		"sql" => array(
			"table_name" => "sc_menu",
			"fields" =>	array(
				"id" => array(
					"name" => "id",
					"type" => "int(11)",
					"else" => "auto_increment"
				),
				"alias" => array(
					"name" => "alias",
					"type" => "varchar(255)",
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
			"icon" => "/img/admin/menu.png",
			"name" => "Меню",
			"subelement_types" => array(
				"page" => array(
					"type_alias" => "page",
					"link_field" => "menu_id",
					"in_sublist" => true, //В подсписке слева
					"in_buttons" => true //Иконка с подэлементами справа от элемента, при нажатии открывается список справа
				),
			),
			"mainsubelement_type" => "page",
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
				)
			)
		)
	);
?>
