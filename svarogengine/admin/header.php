<?
	
	//Вычисление времени начала работы скрипта
	$begin_time = microtime(true);
	
	require $_SERVER['DOCUMENT_ROOT']."/svarogengine/config.php";
	require $engine_root."/core/sql_executer.php";
	require $engine_root."/core/helperlist.php";
	require $engine_root."/core/postprocessingfn.php";
	require $engine_root."/core/renderer.php";
	
	$renderer = new Renderer(null,null);
	
	header('Content-Type: text/html; charset=utf-8;');
	//Создание объекта работы с базой данных
	SQLExecuter::init($db_host,$db_user,$db_pass,$db_base);
	
	require $engine_root."/admin/auth.php";
	
	include $engine_root."/admin/header_template.php";
	
?>
