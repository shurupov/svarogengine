<div style="height: 390px; width: 640px; margin: auto;" id="videocontainer">
	<object type="application/x-shockwave-flash" id="no-flash" data="http://www.youtube.com/v/<?=$params["video"][0]["code"]?>?fs=1" width="640" height="390" style="visibility: visible; "><param name="quality" value="high"><param name="bgcolor" value="#000000"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="never"><param name="scale" value="scale"><param name="flashvars" value="autoplay=0"></object>
</div>
<div style="color: #1d650e; font-family: Arial; font-size: 20px; text-align: center; padding: 20px;">Выберите ролик для прсмотра</div>
<div style="height: 165px; padding-left: 64px; background-image: url(/img/videolist/left.png); background-position: left top; background-repeat: no-repeat;">
	<div style="height: 165px; padding-right: 31px; background-image: url(/img/videolist/right.png); background-position: right top; background-repeat: no-repeat;">
		<div style="background-image: url(/img/videolist/film.png); height: 165px;">
			<script>
				$(document).ready(function() {
					$('.previewcontainer').eq(0).css('background-color','#ffffff');
					$('.previewcontainer').eq(0).css('opacity','0.5');
					
					$("img.videopreview").click(function() {
						$('.previewcontainer').css('background','none');
						$('.previewcontainer').css('opacity','1');
						$('#videocontainer').html('<object type="application/x-shockwave-flash" id="no-flash" data="http://www.youtube.com/v/'+$(this).attr('rel')+'?fs=1" width="640" height="390" style="visibility: visible;"><param name="quality" value="high"><param name="bgcolor" value="#000000"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="never"><param name="scale" value="scale"><param name="flashvars" value="autoplay=1"></object>');
						$(this).parent().css('background-color','#ffffff');
						$(this).parent().css('opacity','0.5');
					});
					
					var left = 0;
					
					$('#buttonright').click(function() {
						left -= 180;
						tablewidth = $('#videolisttable').width();
						listwidth = $('#videolist').width();
						if (left<(listwidth-tablewidth)) {
							left = listwidth-tablewidth;
						}
						$('#scroll').animate( {left: left+'px' } );
					});
					
					$('#buttonleft').click(function() {
						left += 180;
						tablewidth = $('#videolisttable').width();
						listwidth = $('#videolist').width();
						if (left>0) {
							left = 0;
						}
						$('#scroll').animate( {left: left+'px' } );
					});
					
				});
			</script>
			<div style="float: left; padding-top: 15px;">
				<!--[if !(IE )|(gt IE 6)]><!--> 
				<img id="buttonleft" src="/img/videolist/arrow_l.png" style="cursor: pointer;" />
				<!--<![endif]-->
				<!--[if lte IE 6]>
				<img id="buttonleft" src="/img/videolist/arrow_l.gif" style="cursor: pointer;" />
				<![endif]-->
			</div>
			<div style="float: right; padding-top: 15px;">
				<!--[if !(IE )|(gt IE 6)]><!--> 
				<img id="buttonright" src="/img/videolist/arrow_r.png" style="cursor: pointer;" />
				<!--<![endif]-->
				<!--[if lte IE 6]>
				<img id="buttonright" src="/img/videolist/arrow_r.gif" style="cursor: pointer;" />
				<![endif]-->
			</div>
			<div id="videolist" style="overflow: hidden; width: 780px; height: 164px;">
				<div style="height: 164px; position: relative; left: 0px;" id="scroll">
					<table id="videolisttable" style="position: relative; top: 0px;">
						<tr>
							<? foreach ($params["video"] as $video) { ?>
								<td style="height: 165px;" class="previewcontainer">
									<img class="videopreview" rel="<?=$video["code"]?>" src="http://i1.ytimg.com/vi/<?=$video["code"]?>/default.jpg" style="margin-top: 37px; margin-bottom: 37px; margin-left: 30px; margin-right: 30px; cursor: pointer;" />
								</td>
							<? } ?>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
