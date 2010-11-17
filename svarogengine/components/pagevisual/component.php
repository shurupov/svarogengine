<?php
	
	if (preg_match('/^([\w\d]+)(\/.*)?/',$_GET['alias'],$regs)) {
		$params['alias'] = $regs[1];
	}
	
?>
