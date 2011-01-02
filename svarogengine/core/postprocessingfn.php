<?
	
	$document_replace = array();
	$document_replace["TITLE"] = '';
	$document_replace["HEAD_DATA"] = ' ';	
	
	function replace_document_aliases($html) {
		
		global $document_replace;
		
		foreach ($document_replace as $k=>$rep)
			$html = str_replace('###'.$k.'###',$rep,$html);
		
		return $html;
		
	}
	
	ob_start('replace_document_aliases');
	
?>
