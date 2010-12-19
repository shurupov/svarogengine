<?
	$type = array(
		"sql" => array(
			"table_name" => "sc_partition",
			"fields" =>	array(
				"id" => array(
					"name" => "id",
					"type" => "int(11)",
					"else" => "auto_increment"
				),
				"menu_id" => array(
					"name" => "menu_id",
					"type" => "int(11)",
				),
				"parent_id" => array(
					"name" => "parent_id",
					"type" => "int(11)",
				),
				"visible" => array(
					"name" => "visible",
					"type" => "int(11)",
				),
				"url" => array(
					"name" => "url",
					"type" => "varchar(255)",
				),
				"title" => array(
					"name" => "title",
					"type" => "varchar(255)",
				),
				"linktitle" => array(
					"name" => "linktitle",
					"type" => "varchar(255)",
				),
				"alias" => array(
					"name" => "alias",
					"type" => "varchar(255)",
				),
				"fullalias" => array(
					"name" => "fullalias",
					"type" => "varchar(255)",
				),
				"blocklist_id" => array(
					"name" => "blocklist_id",
					"type" => "int(11)",
				),
				"depth" => array(
					"name" => "depth",
					"type" => "int(11)",
				),
				"template_alias" => array(
					"name" => "template_alias",
					"type" => "varchar(255)",
				),
				"facetype_alias" => array(
					"name" => "facetype_alias",
					"type" => "varchar(255)",
				),
				"facetpl_alias" => array(
					"name" => "facetpl_alias",
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
				"sort" => array(
					"name" => "sort",
					"type" => "int(11)",
				),
			)
		),
		"dataedit" => array(
			"group" => "menu",
			"icon" => "/img/admin/page.png",
			"name" => "Страницы",
			"subelement_types" => array(
				"page" => array(
					"type_alias" => "page",
					"link_field" => "parent_id",
					"in_sublist" => true, //В подсписке слева
					"in_buttons" => true //Иконка с подэлементами справа от элемента, при нажатии открывается список справа
				),
			),
			"mainsubelement_type" => "page",
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
				"visible" => array(
					"name" => "visible",
					"title" => "Видимость",
					"editor" => "checkbox"
				),
				"parent_id" => array(
					"name" => "parent_id",
					"title" => "Надраздел",
					"editor" => "select_from_db",
					"typelist" => "page",
				),
				"title" => array(
					"name" => "title",
					"title" => "Название раздела",
					"editor" => "input_text"
				),
				"linktitle" => array(
					"name" => "linktitle",
					"title" => "Подпись ссылки на раздел",
					"editor" => "input_text"
				),
				"url" => array(
					"name" => "url",
					"title" => "URL (ввести, если это не раздел, а ссылка в меню)",
					"editor" => "input_text"
				),
				"alias" => array(
					"name" => "alias",
					"title" => "Псевдоним раздела в URL",
					"editor" => "input_text"
				),
				"template_alias" => array(
					"name" => "template_alias",
					"title" => "Шаблон страницы",
					"editor" => "select_from_folders",
					"path" => "/templates/",
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
						"p3",
						"p4",
						"p5",
						"p6",
						"p7",
						"p8",
					)
				),
				"blocklist_id" => array(
					"name" => "blocklist_id",
					"title" => "Набор блоков (компонентов)",
					"editor" => "select_from_db",
					"typelist" => "blocklist",
				),
				"sort" => array(
					"name" => "sort",
					"title" => "Индекс сортировки",
					"editor" => "input_text"
				),
				/*"menu_id" => array(
					"name" => "menu_id",
					"title" => "Меню",
					"editor" => "select",
					"typelist" => "menu",
				),*/
			)
		)
	);
?>
