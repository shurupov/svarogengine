<?php
	
	class HelperList {
		
		static private $list = array();
		
		static private function include_class($alias) {
			
			global $engine_root;
			
			include $engine_root."/classes/".$alias."/class.php";
			
			HelperList::$list[] = $alias;
			
		}
		
		static public function helper_isset($alias) {
			
			global $engine_root;
			
			if (!in_array($alias,HelperList::$list)) {
				if (file_exists($engine_root."/classes/".$alias."/class.php")) {
					//echo $engine_root."/classes/".$alias."/class.php";
					HelperList::include_class($alias);
					return true;
				} else {
					//Тут ещё нужно вывести, что нужного класса нет
					return false;
				}
			} else {
				return true;
			}
			
		}
		
	}
	
?>
