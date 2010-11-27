<?
	$type = array(
		"sql" => array(
			"table_name" => "sc_blocklist",
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
				"alias" => array(
					"name" => "alias",
					"type" => "varchar(255)",
				),
				"sort" => array(
					"name" => "sort",
					"type" => "int(11)",
				),
			)
		),
		"dataedit" => array(
			"group" => "menu",
			"icon" => "/img/admin/blocklist.png",
			"name" => "Набор блоков",
			"subelement_types" => array(
				"page" => array(
					"type_alias" => "component",
					"link_field" => "blocklist_id",
					"in_sublist" => true, //В подсписке слева
					"in_buttons" => true //Иконка с подэлементами справа от элемента, при нажатии открывается список справа
				),
			),
			"mainsubelement_type" => "component",
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
					"title" => "Название набора компонентов",
					"editor" => "input_text"
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
