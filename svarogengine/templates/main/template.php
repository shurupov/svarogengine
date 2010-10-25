<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Система управления контентом Сварог ###TITLE###</title>

	<link rel="stylesheet" type="text/css" href="/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/css/main.css">
	<script src="/js/jquery-min.js"></script>
	
</head>
<body>
	<div class="bottomback">
		<div class="content">
			<div class="header">
				<div style="float: left;">
					
					<!--[if !(IE )|(gt IE 6)]><!--> 
					<a href="/"><img src="/img/logo.png" style="width: 177px; height: 159px;" /></a>
					<!--<![endif]-->
					<!--[if lte IE 6]>
					<a href="/"><img style="width: 177px; height: 159px;" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/img/logo.png', sizingMethod='scale');" src="/img/ie.gif" /></a>
					<![endif]--> 
					
				</div>
				<div class="right_contacts">
					<span class="seven">+7</span> <span class="city_code">(925)</span> <span class="phone">030-01-23</span>
					<br/>
					<a class="email" href="mailto:elfoff@hotmail.com">elfoff@hotmail.com</a>
				</div>
			</div>
			<div>
				<?php $renderer->render_block('top_menu'); ?>
			</div>
			<div class="main_content">
				<?php $renderer->render_main_block(); ?>
			</div>
			<div class="footer">
				&laquo;Аудиокузница&raquo;, 2010 &copy;
			</div>
		</div>
	</div>
	
</body>
</html>
