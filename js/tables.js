	
	$(document).ready(function() {
		
		//Подсветка чётных строк таблицы
		var tbodies = $("div.main_content table tbody");
		//console.log(tbodies);
		for (var h = 0; h < tbodies.length; h++)
		{
			var trs = tbodies[h].getElementsByTagName("tr");
			
			for (var i = 1; i < trs.length; i+=2)
			{
				$(trs[i]).addClass('second');//.className = 'second';
			}
		}
		
	});
