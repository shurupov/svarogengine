<?php
	
	global $engine_root;
	
	switch ($db_type) {
		case "mysql5" :
			require $engine_root."/core/sqlclasses/mysql5.php";
		break;
	}

?>
