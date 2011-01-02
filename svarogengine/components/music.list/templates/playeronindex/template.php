	<?
		foreach ($params["audio"] as $audio) {
			$paths[] = $audio["file"];
			$titles[] = $audio["title"];
		}
		
		$paths = implode('|',$paths);
		$titles = implode('|',$titles);
	?>
	<h1>Сегодня в эфире</h1>
	<div style="height: 2px; border-top: 1px #ffc800 solid; border-bottom: 1px #ffc800 solid; margin: 15px 0px 15px 0px; font-size: 1px;"></div>
	<object id="monFlash" type="application/x-shockwave-flash" data="/files/flash/player/player_mp3_multi.swf" style="width: 215px; height: 200px;">
		<param name="wmode" value="transparent" />
		<param name="movie" value="/files/flash/player/player_mp3_multi.swf" />
		<param name="FlashVars" value="mp3=<?=$paths?>&amp;title=<?=$titles?>&amp;showstop=1&amp;showvolume=1&amp;showplaylistnumbers=0&amp;width=215&amp;height=200" />
	</object>
