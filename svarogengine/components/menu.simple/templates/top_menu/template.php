<?
	
	function echo_item($item,$current,$supcurrent) {
		
		if ($item['url']) {
			echo '<a href="'.$item['url'].'" class="top_menu_link">'.$item["linktitle"].'</a>';
		} elseif (($item['id']==$current)or($item['id']==$supcurrent)) {
			echo '<a href="/'.$item['fullalias'].'" class="top_menu_link" id="selected" style="font-weight: bold;">'.$item["linktitle"].'</a>';
		} else {
			echo '<a href="/'.$item['fullalias'].'" class="top_menu_link">'.$item["linktitle"].'</a>';
		}
		//echo '&nbsp;|&nbsp;';
	}
	
	echo_item($params['menu'][0],$params['current'],$params['supcurrent']);
	
	for ($i = 1; $i<count($params['menu']); $i++) {
		echo '&nbsp;&nbsp;';
		echo_item($params['menu'][$i],$params['current'],$params['supcurrent']);
	}

?>
