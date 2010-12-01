<?
	$type = array(
		"sql" => array(
			"table_name" => "sc_af_audio",
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
			"icon" => "/img/admin/audio.png",
			"name" => "Аудио",
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
					"title" => "Группа аудио-данных",
					"editor" => "select_from_db",
					"typelist" => "audio_folder",
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
				"file" => array(
					"name" => "file",
					"title" => "Файл",
					"editor" => "input_file",
					"file_alias" => "audio",
					"file_extension" => ".mp3",
					"folder_path" => "/files/media/audio/",
					
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
