	
	<!--<h1><?php echo $params['request']['title']; ?></h1>-->
	
	<table style="width: 100%;">
		<tr>
			<td style="width: 50%; padding-right: 40px;">
				<div class="article"><? echo $params["text"]; ?></div>
			</td>
			<td style="width: 50%;" class="sendform">
				<h2>Обратная связь</h2>
				<?php if ($params['type']=='edit') { ?>
				<br>
				
				<form method=post class="<?php echo $params['request']['class_field']; ?>" style="width 100%;">
				<?php
					if ($params['error']) {
						echo '<div class="error">'.$params['error'].'</div>';
					}
				?>
				<?php
					foreach ($params['questions'] as $question) { 
						
						echo $question['title'].($question['nesessary']?'<span class="nesessary">*</span>':'').':<br/>'.$question['html'].'<br/><br/>';
						
					}
				?>
				<input type="hidden" name="facepost" value="1">
				<input type="submit" value="Отправить" class="<?php echo $params['request']['class_field']; ?>" style="width: 150px;">
				
				</form>
				<?php } else { ?>
					<h2>Спасибо, Ваши данные успешно отправлены!</h2>
				<?php } ?>				
			</td>
		</tr>
	</table>
	






