<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>###TITLE###</title>

	<link rel="stylesheet" type="text/css" href="/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/css/main.css">
	<script src="/js/jquery-min.js"></script>
	<script src="/js/tables.js"></script>
</head>
<body>
	
	<div class="bottomback">
		<div class="content">
			<div class="header recorder">
				<div style="float: left;">
					<!--[if !(IE )|(gt IE 6)]><!--> 
					<a href="/"><img src="/img/logo2.png" style="width: 177px; height: 151px;" /></a>
					<!--<![endif]-->
					<!--[if lte IE 6]>
					<a href="/"><img style="width: 177px; height: 151px;" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/img/logo2.png', sizingMethod='scale');" src="/img/ie.gif" /></a>
					<![endif]-->
				</div>
				<div class="right_contacts">
					<noindex>
						<span class="seven">+7</span> <span class="city_code">(499)</span> <span class="phone">34-35-123</span>
						<br/>
						<span class="seven">+7</span> <span class="city_code">(925)</span> <span class="phone">03-00-123</span>
						<br/>
						<a class="email" href="mailto:studio@elfoff.net">studio@elfoff.net</a>
					</noindex>
				</div>
				<div style="clear: both; padding-top: 7px;">
					<?php $renderer->render_block('top_menu'); ?>
				</div>
				<div style="clear: both; padding-top: 10px;">
					
					<div>
						<div class="indexnews">
							<?php $renderer->render_block('news'); ?>
						</div>
						<div style="width: 215px; float: right;">
							<?php $renderer->render_block('audio'); ?>
						</div>
						<div style="width: 500px; margin: auto;">
							<?php $renderer->render_block('top_text'); ?>
						</div>
						<div style="clear: both;"></div>
					</div>
					<!--<div class="indexlinks">
						<div class="link" style="padding-top: 100px; width: 305px;">
							<a href="/audio">Аудио-ролики</a>
						</div>
						<div class="link" style="padding-top: 160px; width: 100px;">
							<a href="/prices">Цены</a>
						</div>
						<div class="link" style="padding-top: 0px; width: 190px;">
							<a href="/minuses">Минусовки</a>
						</div>
						<div class="link" style="padding-top: 160px; width: 100px;">
							<a href="/contacts">Контакты</a>
						</div>
						<div class="link" style="padding-top: 100px; width: 200px; padding-left: 60px;">
							<a href="/video">Видео-ролики</a>
						</div>
						
						<div style="clear: both;"></div>
					</div>-->
					
				</div>
			</div>
			<div class="main_content" style="background: none;">
				<?php $renderer->render_block('text'); ?>
			</div>
			<div class="footer">
				&laquo;Эльфов нет&raquo;, 2010 &copy;
			</div>
		</div>
	</div>
	
</body>
</html>
