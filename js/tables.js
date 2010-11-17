	
	$(document).ready(function() {
		
		//Подсветка чётных строк таблицы
		var tbodies = $("div.main_content table tbody");
		//console.log(tbodies);
		for (var h = 0; h < tbodies.length; h++)
		{
			var trs = tbodies[h].getElementsByTagName("tr");
			
			/*for (var i = 0; i < trs.length; i++)
			{
				trs[i][0] = 'first';
			}*/
			
			for (var i = 1; i < trs.length; i+=2)
			{
				$(trs[i]).addClass('second');//.className = 'second';
			}
		}
		
		/*$("table.content_table tr td").css('padding-left','13px');
		
		$('table.content_table tr td').mouseover(function() {
			$(this).parent().addClass('hover');
		});
		$('table.content_table tr td').mouseleave(function() {
			$(this).parent().removeClass('hover');
		});*/
		
		
		
	});
