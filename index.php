<?php

	//Вычисление времени начала работы скрипта
	$begin_time = microtime(true);

	require $_SERVER['DOCUMENT_ROOT']."/svarogengine/config.php";
	require $engine_root."/core/sql_executer.php";
	require $engine_root."/core/helperlist.php";
	require $engine_root."/core/postprocessingfn.php";
	require $engine_root."/core/renderer.php";
	
	//Создание объекта работы с базой данных
	SQLExecuter::init($db_host,$db_user,$db_pass,$db_base);
	
	//Определение текущего раздела сайта
	if ((!isset($_GET["alias"]))or($_GET["alias"]=="")) {
		SQLExecuter::query("select * from sc_partition where id=(select `param_value` FROM `sc_option` where `param_name`=\"index_page_id\")");
	}
	else
		SQLExecuter::query("select * from sc_partition where fullalias='".addslashes($_GET["alias"])."'");
		
	if (!SQLExecuter::get_count())
		die("Error 404");
		
	//Вывод параметров страницы в массив
	$partition_params = SQLExecuter::fetch();
	
	if ((!isset($_GET["params"]))or($_GET["params"]==""))
		$_GET["params"] = '';
	
	$page_params = $_GET["params"];
	
	$renderer = new Renderer($partition_params,$page_params);
	
	header('Content-Type: text/html; charset=utf-8;');
	
	//Включение php-шаблона страницы (тут нужно сделать обработку ошибок)
	include $engine_root."/templates/".$partition_params["template_alias"]."/template.php";
	
	$gentime = (microtime(true)-$begin_time);
	
	echo "<!-- Страница сгенерирована за $gentime секунд-->";
	
	ob_end_flush();

?>
