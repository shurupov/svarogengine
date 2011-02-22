	<div class="article" style="float: right; width: 320px;">
		<?=$params["group"]["description"]?>
	</div>
	<div class="article" style="width: 600px;">
		
		
		<div id="mp3player">
		</div>
		<br/>
		<script>
			var paused = false;
			$(document).ready(function() {
				$('#mp3list tr td.button').click(function() {
					if ($(this).hasClass('play')) {
						$('#mp3list tr td.button').removeClass('pause');
						$('#mp3list tr td.button').addClass('play');
						$('#mp3list tr').removeClass('selected');
						$(this).parent().addClass('selected');
						$('#mp3player').html('<object id="monFlash" type="application/x-shockwave-flash" data="/files/flash/player/player_mp3_maxi.swf" width="200" height="20"><param name="wmode" value="transparent" /><param name="movie" value="/files/flash/player/player_mp3_maxi.swf" /><param name="FlashVars" value="mp3='+$(this).parent().attr('rel')+'&amp;showstop=1&amp;showvolume=1&amp;bgcolor2=a2ffa2&amp;bgcolor1=a2ffa2&amp;autoplay=1&amp;buttoncolor=555555&amp;buttonovercolor=000000&amp;slidercolor1=555555&amp;slidercolor2=000000&amp;sliderovercolor=000000" /><p>Texte alternatif</p></object>');
						$(this).removeClass('play');
						$(this).addClass('pause');
						paused = false;
					} else if ($(this).hasClass('pause')) {
						if (paused) {
							document.getElementById("monFlash").SetVariable("player:jsPlay", "");
							paused = false;
						} else {
							paused = true;
							document.getElementById("monFlash").SetVariable("player:jsPause", "");
						}
						
					}
				});
			});
		</script>
		<table id="mp3list">
			<? foreach ($params['audio'] as $audio) { ?>
				<tr rel="<?=$audio["file"]?>">
					<td class="button play"></td>
					<td><?=$audio["title"]?></td>
					<!--<td><?=$audio["length"]?></td>
					<td><?=$audio["size"]?></td>
					<td><?=$audio["style"]?></td>
					<td><?=$audio["price"]?></td>-->
					<?if ($download) {?><td class="button save"><a href="<?=$audio["file"]?>">&nbsp;&nbsp;&nbsp;&nbsp;</a></td><?}?>
				</tr>
			<? } ?>
		</table>
	</div>
	<div style="clear: both;"></div>
