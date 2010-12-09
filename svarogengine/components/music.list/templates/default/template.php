	<div class="article" style="float: right; width: 320px;">
		<?=$params["group"]["description"]?>
	</div>
	<div class="article" style="width: 600px;">
		
		
		<div id="mp3player">
		</div>
		<br/>
		<script>
			$(document).ready(function() {
				$('#mp3list tr td.play').click(function() {
					$('#mp3list tr').removeClass('selected');
					$(this).parent().addClass('selected');
					$('#mp3player').html('<object type="application/x-shockwave-flash" data="/files/flash/player/ump3player_500x70.swf" height="55" width="370"><param name="wmode" VALUE="transparent" /><param name="allowFullScreen" value="true" /><param name="allowScriptAccess" value="always" /><param name="movie" value="/files/flash/player/ump3player_500x70.swf" /><param name="FlashVars" value="way='+$(this).parent().attr('rel')+'&amp;swf=/files/flash/player/ump3player_500x70.swf&amp;w=370&amp;h=55&amp;time_seconds=0&amp;autoplay=1&amp;q=1&amp;skin=green&amp;volume=70&amp;comment=" /></object>');
				});
			});
		</script>
		<table id="mp3list">
			<? foreach ($params['audio'] as $audio) { ?>
				<tr rel="<?=$audio["file"]?>">
					<td class="button play"></td>
					<td><?=$audio["title"]?></td>
					<td><?=$audio["length"]?></td>
					<td><?=$audio["size"]?></td>
					<td><?=$audio["style"]?></td>
					<td><?=$audio["price"]?></td>
					<td class="button save"><a href="<?=$audio["file"]?>">&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
				</tr>
			<? } ?>
		</table>
	</div>
	<div style="clear: both;"></div>
