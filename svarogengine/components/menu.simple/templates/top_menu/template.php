<?
	
	/*function echo_item($item,$current,$supcurrent) {
		
		if ($item['url']) {
			echo '<a href="'.$item['url'].'" class="top_menu_link">'.$item["linktitle"].'</a>';
		} elseif (($item['id']==$current)or($item['id']==$supcurrent)) {
			echo '<a href="/'.$item['fullalias'].'" class="top_menu_link" id="selected" style="font-weight: bold;">'.$item["linktitle"].'</a>';
		} else {
			echo '<a href="/'.$item['fullalias'].'" class="top_menu_link">'.$item["linktitle"].'</a>';
		}
		//echo '&nbsp;|&nbsp;';
	}*/
	
	//echo_item($params['menu'][0],$params['current'],$params['supcurrent']);
	
	/*for ($i = 1; $i<count($params['menu']); $i++) {
		echo '&nbsp;&nbsp;';
		echo_item($params['menu'][$i],$params['current'],$params['supcurrent']);
	}*/
?>
	<div class="top_menu">
	<?
	foreach($params['menu'] as $item) {
		if ($item['id']==$params['current']) {
			echo '<div class="selected"><div class="menuitemleft"><div class="menuitemright"><div class="center"><span>'.$item['title'].'</span></div></div></div></div>';
		} else {
			echo '<div class="menuitemleft"><div class="menuitemright"><div class="center"><a href="/'.$item['fullalias'].'">'.$item['title'].'</a></div></div></div>';
		}
	}
?>
	</div>
	<div class="top_menu_gray_line"></div>
	<div class="top_menu_graphic"><div id="selected-track" style="background-image: url(/img/selectedtrack.png); background-color: #ffffff; opacity: 0.5; height: 100%; width: 0px; position: relative;"></div></div>
	<div class="top_menu_gray_line" style="height: 10px;"></div>
	
	<script>
		
		$(document).ready(function() {
			
			if ($('.top_menu .selected .menuitemleft').offset()!=null) {
				$('#selected-track').css('width',($('.top_menu .selected .menuitemleft').width()+10)+'px');
				left = $('.top_menu .selected .menuitemleft').offset().left-$('.top_menu').offset().left;
				$('#selected-track').css('left',left+'px');
				$('#selected-track').css('background-position','-'+(left-1)+'px top');
			} else {
				$('#selected-track').css('width','0px');
			}
		});
		
	</script>
	
