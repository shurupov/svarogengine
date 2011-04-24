<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>###TITLE###</title>
	<link rel="stylesheet" type="text/css" href="/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/css/main.css">
</head>
<body>
	<?php $renderer->render_block('top_menu'); ?>
	<?php $renderer->render_block('news'); ?>
	<div style="border: 1px red solid; padding: 10px; margin: 10px;">
		<?php $renderer->render_block('top_text'); ?>
	</div>
</body>
</html>
