<?
	
	include("fckeditor.php") ;
	
	global $engine_root;
	
	
	//$sBasePath = $_SERVER['PHP_SELF'] ;
	$sBasePath = "/svarogengine/dataeditors/fckeditor/";//substr( $sBasePath, 0, strpos( $sBasePath, "template.php" ) ) ;
	
	//echo $sBasePath;
	
	$oFCKeditor = new FCKeditor($field_name) ;
	$oFCKeditor->BasePath	= $sBasePath ;
	$oFCKeditor->Value		= $field_data;//'<p>This is some <strong>sample text</strong>. You are using <a href="http://www.fckeditor.net/">FCKeditor</a>.</p>' ;
	$oFCKeditor->Create() ;
	
?>
