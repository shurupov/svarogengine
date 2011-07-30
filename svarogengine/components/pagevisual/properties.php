<?
	$properties = array(
		"title" => "Визуал сверху",
		"description" => "Визуал, который показывает чё это за страница",
		"only_simple" => false,
		"only_main" => false,
		"cache_enabled" => true,
		"cache_condition" => array(
			"get" => true,
			"post" => false,
			"cookie" => false,
			"session" => false
		),
		"fields" => array(
			"comptpl_alias" => array(
				"name" => "comptpl_alias",
				"title" => "Шаблон компонента",
				"editor" => "select_from_folders",
				"path" => "/components/pagevisual/templates/",
			)
		)
	);
	/* тут некая информация, и ещё изменения */
?>
