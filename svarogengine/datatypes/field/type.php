<?
	$type = array(
		"sql" => array(
			"table_name" => "sc_onpo_field",
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
				"fieldtype_alias" => array(
					"name" => "fieldtype_alias",
					"type" => "varchar(255)",
				),
				"request_id" => array(
					"name" => "request_id",
					"type" => "int(11)",
				),
				"nesessary" => array(
					"name" => "nesessary",
					"type" => "int(11)",
				),
				"sort" => array(
					"name" => "sort",
					"type" => "int(11)",
				),
			)
		),
		"dataedit" => array(
			"group" => "webforms",
			"icon" => "/img/admin/field.png",
			"name" => "Вопросы анкеты",
			"subelement_types" => array(
				"variant" => array(
					"type_alias" => "variant",
					"link_field" => "field_id",
					"in_sublist" => true, //В подсписке слева
					"in_buttons" => true //Иконка с подэлементами справа от элемента, при нажатии открывается список справа*/
				),
			),
			"mainsubelement_type" => "variant",
			"in_root" => false, //Отображать в корне дерева
			"list_settings" => array(
				"viewer" => "simplelist",
				"fields" => array(
					"title" => array(
						"name" => "title",
						"title" => "Название"
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
					"title" => "Название",
					"editor" => "input_text"
				),
				"fieldtype_alias" => array(
					"name" => "fieldtype_alias",
					"title" => "Тип поля",
					"editor" => "select_from_consts",
					"variants" => array(
						"text" => "Однострочный текст",
						"textarea" => "Многострочный текст",
						"select" => "Выпадающий список",
						"radiobutton" => "Точки выбора",
						"checkbox" => "Галочка",
						"multiselect" => "Многострочный множественный выбор",
					),
				),
				"request_id" => array(
					"name" => "request_id",
					"title" => "Онлайн-заявка",
					"editor" => "select_from_db",
					"typelist" => "form",
				),
				"nesessary" => array(
					"name" => "nesessary",
					"title" => "Обязательное поле",
					"editor" => "select_from_consts",
					"variants" => array(
						"0" => "Нет",
						"1" => "Да",
					),
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
