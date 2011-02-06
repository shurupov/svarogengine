<?php

	class Renderer {
	
		private $partition_params;
		private $block_list;
		private $page_params;
		
		//Конструктор
		public function Renderer($partition_params,$page_params) {
			
			$this->partition_params = $partition_params;
			$this->page_params = $page_params;
			
			$this->set_title($partition_params['htmltitle']);
			
		}
		
		private function render_component($component) {
			
			$alias = $component["comptype_alias"];
			$component_params = $component;
			$template = $component["comptpl_alias"];
			$page_params = $this->page_params;
			$face_params = $this->partition_params;
			
			global $engine_root;
			//Получение и вычисление данных для компонента
			include $engine_root."/components/".$alias."/component.php";
			//Выполнение шаблона компонента
			include $engine_root."/components/".$alias."/templates/".$template."/template.php";			
			
		}
		
		public function render_block($alias) {
			
			//Ищем в базе компоненты, входящие в блок
			SQLExecuter::query("
				SELECT *
				FROM `sc_block`
				WHERE
					`blocklist_id`='".$this->partition_params["blocklist_id"]."'
					AND
					`alias`='".$alias."'
				ORDER BY `sort` DESC
			");
			$block = SQLExecuter::get_array();
			
			//Вывод каждого компонента
			foreach ($block as $component) {
			
				$this->render_component($component);
				
			}
			
		}
		
		public function render_main_block() {
			
			global $obtain_objects;
			
			$alias = $this->partition_params["comptype_alias"];
			$template = $this->partition_params["comptpl_alias"];
			$component_params = $this->partition_params;
			$page_params = $this->page_params;
			
			global $engine_root;
			
			include $engine_root."/components/".$alias."/component.php";
			
			include $engine_root."/components/".$alias."/templates/".$template."/template.php";
			
		}
		
		public function replace_html_alias($from,$to) {
			
			if (($from!='TITLE')&&($from!='HEAD_DATA')) {
				
				global $document_replace;
				
				$document_replace[$from] = $to;
				
			}
		}
		
		public function add_to_html_alias($from,$to) {
			
			if (($from!='TITLE')&&($from!='HEAD_DATA')) {
				
				global $document_replace;
				
				$document_replace[$from] .= $to;
				
			}
				
		}
		
		public function add_to_head($html) {
			
			global $document_replace;
			
			$document_replace['HEAD_DATA'] .= $html;
						
		}
		
		public function set_title($text) {
			
			global $document_replace;
			
			$document_replace['TITLE'] = $text;			
			
		}
		
	}
	

?>
