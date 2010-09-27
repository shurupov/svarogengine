	$(document).ready(function () {
		
		$('.marker').click(function(event) {
			
			var re = /marker(\d+)(\w+)/;
			var marker_id = $(this).attr('id');
			var subelements_id = marker_id.replace(re,"subelements$1$2");
			
			$('#'+subelements_id).slideToggle('fast');
			$(this).toggleClass('plus');
			$(this).toggleClass('minus');
		});
		
		$('.marker-last').click(function(event) {
			
			var re = /marker(\d+)(\w+)/;
			var marker_id = $(this).attr('id');
			var subelements_id = marker_id.replace(re,"subelements$1$2");
			
			$('#'+subelements_id).slideToggle('fast');
			$(this).toggleClass('plus-last');
			$(this).toggleClass('minus-last');
		});
		
	});
