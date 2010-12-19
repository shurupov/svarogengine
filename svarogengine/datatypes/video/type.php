<?
	$type = array(
		"sql" => array(
			"table_name" => "sc_vf_video",
			"fields" =>	array(
				"id" => array(
					"name" => "id",
					"type" => "int(11)",
					"else" => "auto_increment"
				),
				"folder_id" => array(
					"name" => "folder_id",
					"type" => "int(11)"
				),
				"title" => array(
					"name" => "title",
					"type" => "varchar(255)",
				),
				"video" => array(
					"name" => "video",
					"type" => "varchar(255)",
				),
				"length" => array(
					"name" => "length",
					"type" => "varchar(255)",
				),
				"size" => array(
					"name" => "size",
					"type" => "varchar(255)",
				),
				"style" => array(
					"name" => "style",
					"type" => "varchar(255)",
				),
				"price" => array(
					"name" => "price",
					"type" => "varchar(255)",
				),
				"file" => array(
					"name" => "file",
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
			"icon" => "/img/admin/video.png",
			"name" => "Видео",
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
				"folder_id" => array(
					"name" => "folder_id",
					"title" => "Группа видео-данных",
					"editor" => "select_from_db",
					"typelist" => "video_folder",
				),
				"thumb" => array(
					"name" => "thumb",
					"title" => "Название",
					"editor" => "input_text"
				),
				"length" => array(
					"name" => "length",
					"title" => "Длительность",
					"editor" => "input_text"
				),
				"size" => array(
					"name" => "size",
					"title" => "Размер",
					"editor" => "input_text"
				),
				"style" => array(
					"name" => "style",
					"title" => "Стиль",
					"editor" => "input_text"
				),
				"price" => array(
					"name" => "price",
					"title" => "Цена",
					"editor" => "input_text"
				),
				"code" => array(
					"name" => "code",
					"title" => "Код ролика с youtube",
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
