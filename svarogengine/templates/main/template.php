<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Система управления контентом Сварог ###TITLE###</title>

	<link rel="stylesheet" type="text/css" href="/css/reset.css">
	
	<style>
		body {
			background-image: url(/img/back.gif);
			background-repeat: repeat-x;
			background-position: top;
		}
		div.content {
			width: 998px;
			margin: 10px auto 10px auto;
		}
	</style>
	
</head>
<body>
	<div class="content">
		<div style="border: 1px blue solid;">
			<?php $renderer->render_block('top_menu'); ?>
		</div>
		<div style="border: 1px blue solid;">
			<?php $renderer->render_main_block(); ?>
		</div>
	</div>

</body>
</html>
