	
	<div class="containerlist">
		
		<b><?=$data['data_title']?></b><br/><br/>
		
		<form method=post>
		<table>
			<tr class="header">
				<td style="width: 30px;">id</td>
			<? foreach ($data['fields'] as $field) { ?>
				<td><?=$field['title']?></td>
			<? } ?>
				<td style="width: 100px;">Действия</td>
			</tr>
			<? foreach ($data['data'] as $line) { ?>
				<tr>
					<? foreach ($line as $field) { ?>
						<td><?=$field?></td>
					<? } ?>
					<td style="padding: 0px 5px 0px 10px;">
						<a href="/svarogengine/admin/dataedit/?page=edit&type=<?=$data['type']?>&id=<?=$line['id']?>"><img style="height: 16px;" src="/img/admin/dataedit/edit.png" /></a>
						<a href="/svarogengine/admin/dataedit/?page=list&action=delete&type=<?=$data['type']?>&id=<?=$line['id']?>&field=<?=$_GET['field']?>&value=<?=$_GET['value']?>"><img style="height: 16px;" src="/img/admin/dataedit/delete.png" /></a>
					</td>
				</tr>
			<? } ?>
		</table>
		<!--<input type="hidden" name="action_type" value="<?=$data['action_type']?>" />
		<input type="hidden" name="sended" value="1" />
		<input type="submit" value="Сохранить" />-->
		</form>
		<a href="/svarogengine/admin/dataedit/?page=edit&action=add&type=<?=$data['type']?>&field=<?=$data['parent_field']?>&value=<?=$data['parent_field_value']?>">Добавить элемент</a>
	</div>
	
