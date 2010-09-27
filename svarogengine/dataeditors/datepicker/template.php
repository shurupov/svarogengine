<?
	$tag_id = str_replace('[','-',$field_name);
	$tag_id = str_replace(']','-',$tag_id);
?>
<input type="text" name="<?=$field_name?>" id="<?=$tag_id?>" value="<?=$field_data?>" style="width: 200px;" />
<link rel="stylesheet" href="/svarogengine/dataeditors/datepicker/jquery-ui.datepicker/themes/excite-bike/jquery.ui.all.css">
<link rel="stylesheet" href="/svarogengine/dataeditors/datepicker/jquery-ui.datepicker/themes/excite-bike/jquery.ui.datepicker.css">
<script src="/svarogengine/dataeditors/datepicker/jquery-ui.datepicker/ui/jquery.ui.core.js"></script>
<script src="/svarogengine/dataeditors/datepicker/jquery-ui.datepicker/ui/jquery.ui.widget.js"></script> 
<script src="/svarogengine/dataeditors/datepicker/jquery-ui.datepicker/ui/jquery.ui.datepicker.js"></script>
<script src="/svarogengine/dataeditors/datepicker/jquery-ui.datepicker/ui/i18n/jquery-ui-i18n.js"></script>
<script src="/svarogengine/dataeditors/datepicker/jquery-ui.datepicker/ui/i18n/jquery.ui.datepicker-ru.js"></script>
<script src="/svarogengine/dataeditors/datepicker/jquery-ui.datepicker/ui/jquery.effects.core.js"></script> 
<script src="/svarogengine/dataeditors/datepicker/jquery-ui.datepicker/ui/jquery.effects.fade.js"></script> 
	<script>
	$(function() {
		$( "#<?=$tag_id?>" ).datepicker();
		$.datepicker.setDefaults( $.datepicker.regional[ "ru" ] );
		//$.datepicker( $.datepicker.regional[ "ru" ] );
		/*$( "#locale" ).change(function() {
			$( "#datepicker" ).datepicker( "option",
				$.datepicker.regional[ $( this ).val() ] );
		});*/
	});
	</script>
