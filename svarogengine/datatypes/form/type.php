<?
	$type = array(
		"sql" => array(
			"table_name" => "sc_onpo_request",
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
				"email_to" => array(
					"name" => "email_to",
					"type" => "varchar(255)",
				),
				"email_from" => array(
					"name" => "email_from",
					"type" => "varchar(255)",
				),
				"request" => array(
					"name" => "request",
					"type" => "tinytext",
				),
				"class_field" => array(
					"name" => "class_field",
					"type" => "varchar(255)",
				),
				"sort" => array(
					"name" => "sort",
					"type" => "int(11)",
				),
			)
		),
		"dataedit" => array(
			"icon" => "/img/admin/form.png",
			"name" => "Онлайн-заявка",
			"subelement_types" => array(
				"field" => array(
					"type_alias" => "field",
					"link_field" => "request_id",
					"in_sublist" => true, //В подсписке слева
					"in_buttons" => true //Иконка с подэлементами справа от элемента, при нажатии открывается список справа*/
				),
			),
			"mainsubelement_type" => "field",
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
				"email_to" => array(
					"name" => "email_to",
					"title" => "Кому отправить ответы (e-mail)",
					"editor" => "input_text"
				),
				"email_from" => array(
					"name" => "email_from",
					"title" => "От кого отправить ответы (e-mail)",
					"editor" => "input_text"
				),
				"request" => array(
					"name" => "request",
					"title" => "Описание",
					"editor" => "fckeditor"
				),
				"class_field" => array(
					"name" => "class_field",
					"title" => "css-класс формы",
					"editor" => "input_text"
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
