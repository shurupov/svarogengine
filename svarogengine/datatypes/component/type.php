<?
	$type = array(
		"sql" => array(
			"table_name" => "sc_block",
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
				"comptype_alias" => array(
					"name" => "btype_alias",
					"type" => "varchar(255)",
				),
				"blocklist_id" => array(
					"name" => "blocklist_id",
					"type" => "int(11)",
				),
				"template_alias" => array(
					"name" => "template_alias",
					"type" => "varchar(255)",
				),
				"p1" => array(
					"name" => "p1",
					"type" => "varchar(255)",
				),
				"p1" => array(
					"name" => "p1",
					"type" => "varchar(255)",
				),
				"p1" => array(
					"name" => "p1",
					"type" => "varchar(255)",
				),
				"p2" => array(
					"name" => "p2",
					"type" => "varchar(255)",
				),
				"p3" => array(
					"name" => "p3",
					"type" => "varchar(255)",
				),
				"p4" => array(
					"name" => "p4",
					"type" => "varchar(255)",
				),
				"p5" => array(
					"name" => "p5",
					"type" => "varchar(255)",
				),
				"p6" => array(
					"name" => "p6",
					"type" => "varchar(255)",
				),
				"p7" => array(
					"name" => "p7",
					"type" => "varchar(255)",
				),
				"p8" => array(
					"name" => "p8",
					"type" => "varchar(255)",
				),
				"p9" => array(
					"name" => "p9",
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
			"icon" => "/img/admin/component.png",
			"name" => "Компонент",
			"subelement_types" => null,
			"mainsubelement_type" => null,
			"in_root" => false, //Отображать в корне дерева
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
					"title" => "Название компонента",
					"editor" => "input_text"
				),
				"alias" => array(
					"name" => "alias",
					"title" => "Внутреннее название",
					"editor" => "input_text"
				),
				"blocklist_id" => array(
					"name" => "blocklist_id",
					"title" => "Набор компонентов",
					"editor" => "select_from_db",
					"typelist" => "blocklist",
				),
				"params" => array(
					"editor" => "component_tune",
					"name" => "params",
					"title" => "Главный компонент страницы",
					"fields" => array(
						"comptype_alias",
						"comptpl_alias",
						"p1",
						"p2",
						"p3"
					)
				),
			)
		)
	);
?>
