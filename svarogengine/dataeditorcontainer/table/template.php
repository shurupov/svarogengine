	
	<div class="container">
		
		<b><?=$data['data_title']?></b><br/><br/>
		
		<form action="?page=edit&type=<?=$data['type']?>&id=<?=$data['id']?>&action=<?=$data['action_type']?>" method=post id="editelementform">
		<table>
			<? foreach ($data['fields'] as $field) { ?>
				<tr>
					<td style="width: 200px; vertical-align: top;"><?=$field['title']?></td>
					<td><?=$field['html']?></td>
				</tr>
			<? } ?>
		</table>
		<input type="hidden" name="action_type" value="<?=$data['action_type']?>" />
		<input type="hidden" name="field" value="<?=$_GET['field']?>" />
		<input type="hidden" name="value" value="<?=$_GET['value']?>" />
		<input type="hidden" name="sended" value="1" />
		<input type="submit" value="Сохранить и продолжить редактирование" />
		<input type="hidden" name="where" id="hidden_where" value="edit" />
		<input type="button" id="save_n_to_list" value="Сохранить и вернуться в список" />
		</form>
	</div>
	
	<script type="text/javascript">
		
		$(document).ready(function() {
			
			$('#save_n_to_list').click(function() {
				
				$('#hidden_where').attr('value','list');
				//alert($('#hidden_where').attr('value'));
				$('#editelementform').submit();
			});
			
		});
		
	</script>
