	
	<h1><?php echo $params['request']['title']; ?></h1>
	
	<div style="width: 14px; height: 14px;"></div>
	<div style="width: 90%; height: 14px; float: left;"></div>
	<div style="width: 14px; height: 14px; float: left;"></div>
	
	<table class="tablecontent">
		<tr>
			<td id="td1"></td>
			<td id="td2"></td>
			<td id="td3"></td>
		</tr>
		<tr>
			<td id="td4"></td>
			<td id="td5">
	
				<center>
				<?php if ($params['type']=='edit') { ?>
				<br>

				<form method=post class="<?php echo $params['request']['class_field']; ?>" style="width 100%;">
				<table>
				<?php
					foreach ($params['questions'] as $question) { 
						
						echo '<tr><td style="vertical-align: top; text-align: left;">'.$question['title'].'</td><td style="vertical-align: top;">'.$question['html'].'</td></tr>';
						
					}
				?>
				<tr><td style="text-align: left;"><input type="hidden" name="facepost" value="1"><input type="submit" value="Отправить" class="<?php echo $params['request']['class_field']; ?>" style="width: 150px;"></td><td></td></tr>
				</table>
				</form>
				<?php } else { ?>
					<h1>Спасибо, Ваши данные успешно отправлены!</h1>
				<?php } ?>

				</center>


			</td>
			<td id="td6"></td>
		</tr>
		<tr>
			<td id="td7"></td>
			<td id="td8"> </td>
			<td id="td9"></td>
		</tr>
	</table>



