<?
	include $engine_root."/admin/footer_template.php";
	
	$gentime = (microtime(true)-$begin_time);
	echo "<!-- Страница сгенерирована за $gentime секунд-->";
	
	ob_end_flush();
	
?>
