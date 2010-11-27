<?
	require "../header.php";
	
	if (!HelperList::helper_isset('datatype')) {
		echo "<p>Класс datatype отсутствует в системе</p>";
	} else {
		Datatypes::get_datatypes();
	
	require $engine_root."/datatypes/config.php";
?>
<script src="/js/admin/dataedit.js" type="text/javascript"></script> 
<link rel="stylesheet" type="text/css" href="./css/tree.css"> 
<table style="width: 100%; border: 2px gray solid; height: 800px;">
	<tr>
		<td style="width: 300px; border: 3px gray solid;">
		<?
			global $datatypes;
			
			$k = 0;
			
			foreach ($datatypegroups as $group) {
				
				echo "<div class=\"tree_container\">";
				echo "<h1>".$group["name"]."</h1>";				
				
				$elements = array();
				
				foreach ($datatypes as $alias=>$type) {
					
					$k++;
					
					if (($type["dataedit"]["in_root"])&&($type["dataedit"]["group"]==$group["alias"])) {

						if ($type["dataedit"]["subelement_types"][$alias]) {
							$elements[] = array(
									"id" => $k,
									"title" => $type["dataedit"]["name"],
									"type" => "tophost",
									"subtype" => $alias,
									"subelements" => Datatypes::get_subelements($alias,0,true)
							);						
							//echo Datatypes::echo_subelements($elements);
						} else {
							$elements[] = array(
									"id" => $k,
									"title" => $type["dataedit"]["name"],
									"type" => "tophost",
									"subtype" => $alias,
									"subelements" => Datatypes::get_r_elements($alias,true)
							);
							
						}
						
					}
				}
				
				echo Datatypes::echo_subelements($elements);
				
				echo "</div>";
				
			}
			
		?>
		</td>
		<td style="border: 3px gray solid;">
		<?
			
			if (!HelperList::helper_isset('dataedit')) {
				echo "<p>Класс dataedit отсутствует в системе</p>";
			} else {
				
				switch ($_GET['page']) {
					case 'list' :
						//Список данных некоего типа
						echo 'Список';
						Dataedit::render_list_page($_GET["type"],$_GET["field"],$_GET["value"],$_GET["action"]);
					break;
					case 'edit' :
						//Редактирование данных некоего типа
						echo 'Редактирование';
						Dataedit::render_edit_page($_GET["type"],$_GET["id"],$_GET["action"]);
					break;
				}
				
			}
		?>
		</td>
	</tr>
</table>
	
<?
	}
	require "../footer.php";
?>
