<?
	
	require $_SERVER['DOCUMENT_ROOT']."/svarogengine/config.php";
	require $engine_root."/core/sql_executer.php";
	require $engine_root."/core/helperlist.php";
	
	header('Content-Type: text/html; charset=utf-8;');
	//Создание объекта работы с базой данных
	SQLExecuter::init($db_host,$db_user,$db_pass,$db_base);
	
	require $engine_root."/admin/auth.php";
	
	if (file_exists($engine_root."/components/".$_POST['component']."/properties.php")) {
		require $engine_root."/components/".$_POST['component']."/properties.php";
		
		if (!HelperList::helper_isset('datatype')) {
			echo "<p>Класс datatype отсутствует в системе</p>";
		}
		if (!HelperList::helper_isset('dataedit')) {
			echo "<p>Класс dataedit отсутствует в системе</p>";
		}
		
		Datatypes::get_datatypes();
		
		$data = Dataedit::fetch_element_data($_POST['datatype'],$_POST['id'],true);
		foreach ($properties['fields'] as $fk=>$field) {
			echo $field['title'].'<br/>';
			echo Dataedit::render_field_editor($field,$data,'params');
			echo '<br/>';
		}
	} else {
		echo 'Файл настроек компонента не найден.';
	}
	
?>
