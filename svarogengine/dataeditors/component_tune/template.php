Компонент<br/>
<select id="facetype_alias" name="<?=$field_name?>[comptype_alias]">
	<? $first = true; ?>
	<? foreach ($components_aliases as $k=>$element) { ?>
		<? if ($first) { $default_component=$k; $first=false; } ?>
		<option value="<?=$k?>"<?=($k==$field_data['comptype_alias'])?' selected="selected"':''?>><?=$element?></option>
	<? } ?>
</select><br/>
<script type="text/javascript">
	
	function get_tune_panel(component,datatype,id,div_id) {
		$.post(
			"/svarogengine/dataeditors/component_tune/tune_fields.php",
			{
				component: component,
				datatype: datatype,
				id: id
			},
			function (data) {
				$('#'+div_id).html(data);
			}
		);
	}
	
	<?
		if ($data['id']) {
			echo 'var id='.$data['id'].';';
		} else {
			echo 'var id=0;';
		}
		
		if ($field_data['comptype_alias']) {
			echo 'var default_component=\''.$field_data['comptype_alias'].'\';';
		} else {
			echo 'var default_component=\''.$default_component.'\';';
		}		
	?>
	
	$(document).ready(function () {
		$('#facetype_alias').change(function () {
			component = $(this).attr('value');
			get_tune_panel(component,'<?=$_GET['type']?>',id,'main_compopent_fields');
		});
		get_tune_panel(default_component,'<?=$_GET['type']?>',id,'main_compopent_fields');
	});
</script>
<div id="main_compopent_fields">
</div>
