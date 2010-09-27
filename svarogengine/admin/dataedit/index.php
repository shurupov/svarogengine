<?
	require "../header.php";
	
	if (!HelperList::helper_isset('datatype')) {
		echo "<p>Класс datatype отсутствует в системе</p>";
	} else {
		Datatypes::get_datatypes();
		
?>
<script src="/js/admin/dataedit.js" type="text/javascript"></script> 
<link rel="stylesheet" type="text/css" href="./css/tree.css"> 
<table style="width: 100%; border: 2px gray solid; height: 800px;">
	<tr>
		<td style="width: 300px; border: 3px gray solid;">
		<?
			global $datatypes;
			
			foreach ($datatypes as $alias=>$type) {
				
				if ($type["dataedit"]["in_root"]) {
					echo "<div class=\"tree_container\">";
					echo "<h1>".$type["dataedit"]["name"]."</h1>";
					if ($type["dataedit"]["subelement_types"][$alias]) {
						echo Datatypes::echo_subelements(Datatypes::get_subelements($alias,0,true));
					} else {
						echo Datatypes::echo_subelements(Datatypes::get_r_elements($alias,true));
					}
					echo "</div>";
				}
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
