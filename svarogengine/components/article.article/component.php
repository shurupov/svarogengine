<?php
	
	$result = array();
	
	SQLExecuter::query("select * from sc_sa_article where id=".$component_params["p1"]);
	
	$article = SQLExecuter::fetch();
	$result["text"] = $article["text"];
	$result["title"] = $article["title"];
	
	$params = $result;
	
?>
