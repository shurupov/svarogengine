<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html>
	<head>
		<title>Администраторская панель svarogenine ###TITLE###</title>
		<link rel="stylesheet" type="text/css" href="/css/admin/reset.css">
		<link rel="stylesheet" type="text/css" href="/css/admin/main.css">
		<script src="/js/jquery-min.js" type="text/javascript"></script>
		###HEAD_DATA###
	</head>
	<body>
	<div class="top">
		<div class="logodiv">
			<img src="/img/admin/logo.png" class="logo">
			<h1 style="margin-top: 20px;">Svarog Engine 2.0</h1>
		</div>
		<div class="userdiv">
			<? if ($userinfo) { ?>
			<form method="POST">
				Здравствуйте, <?=$userinfo['username']?>
				<input type="hidden" name="logout" value="1" />
				<input type="submit" value="Выход">
			</form>
			<? } ?>
		</div>
		<div class="menu">
			<? if ($panels) foreach ($panels as $panel) { ?>
				<a <?=($panel['active']?'id="active" ':'')?>href="/svarogengine/admin/<?=$panel['alias']?>" title="<?=$panel['description']?>"><?=$panel['title']?></a>
			<? } ?>
		</div>
	</div>

