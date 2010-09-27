
	<div class="mainmenu">
		<?
			foreach ($params["menu"] as $item) {
				echo '<div class="item"><a '.(($item["id"]==$params["current"])?'style="text-decoration: underline;"':'').' href="/'.$item["fullalias"].'">'.$item["linktitle"].'</a></div>';
				 
				/*if ($item["id"]==$params["current"]) {
					echo '<td style="padding: 0px; width: 6px; background-image: url(/files/img/leftcor.gif);"></td>'.
					'<td style="background-color: #fdf7cb; padding-left: 4px; padding-right: 4px;">'.$item["linktitle"].'</td>'.
					'<td style="padding: 0px; width: 6px; background-image: url(/files/img/rightcor.gif);"></td>';
				}
				else {
					echo '<td class=menu_item>'."<a class=menu_link href=/".$item["fullalias"].">".$item["linktitle"]."</a>".'</td>';
				}*/
			}
		?>
	</div>
