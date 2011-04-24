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
	<div style="border: 1px red solid; padding: 10px; margin: 10px;">
	<?
	foreach($params['menu'] as $item) {
		if ($item['id']==$params['current']) {
			echo $item['title'];
		} else {
			echo '<a href="/'.$item['fullalias'].'">'.$item['title'].'</a>';
		}
		echo '&nbsp;';
	}
?>
	</div>
	
