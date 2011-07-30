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
		
		private function array2string($data) {
			if (!is_array($data)) {
				return $data;
			} else {
				$result = '';
				foreach ($data as $key=>$value) {
					$result .='['.$key.':{'.$this->array2string($value).'}]';
				}
				return $result;
			}
		}
		
		private function checkpath($path) {
			if (file_exists($path))
				return true;
			if (preg_match('/^(.+?)\/([^\/]+?)$/',$filename,$regs)) {
				$folder = $regs[1];
				if ($this->checkpath($folder)) {
					mkdir($path);
				}
			}
		}
		
		public function write($filename,$data) {
			
			if (preg_match('/^(.+?)\/([^\/]+?)$/',$filename,$regs)) {
				$folder = $regs[1];
				if (!file_exists($folder)) {
					mkdir($folder,0777);
				}
				//print_r($regs);
				file_put_contents($filename,$data);
				return true;
			}
			
		}
		
		private function render_component($component) {
			
			$alias = $component["comptype_alias"];
			$component_params = $component;
			$template = $component["comptpl_alias"];
			$page_params = $this->page_params;
			$face_params = $this->partition_params;
			
			global $engine_root;
			
			include $engine_root."/components/".$alias."/properties.php";
			
			$cachefilename = '';
			
			if (($properties['cache_enabled'])&&($this->isset_component_cache($cachefilename,$component,$face_params))) {
				include $engine_root."/cache/components/".$alias."/".$cachefilename;
			} else {
				include $engine_root."/components/".$alias."/component.php";
				include $engine_root."/components/".$alias."/templates/".$template."/template.php";
				//Сюда надо вставить "Если кеш разрешён, то записать сгенерированное в кэш"
			}		
			
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
		
		public function isset_component_cache(&$cachefile='',$component,$face_params) {
			
			global $engine_root;
			
			echo $component['comptype_alias'];
			
			include $engine_root."/components/".$component['comptype_alias']."/properties.php";
			
			$parameters = array(
				"comptpl_alias" => $component["comptpl_alias"],
				"p1" => $component["p1"],
				"p2" => $component["p2"],
				"p3" => $component["p3"],
				"p4" => $component["p4"],
				"p5" => $component["p5"],
				"p6" => $component["p6"],
				"p7" => $component["p7"],
				"p8" => $component["p8"]
			);
			
			$strforhash = $this->array2string($parameters); //$strforhash - переменная, определяющая уникальность экземпляра компонента
			
			if ($properties['cache_condition']['get']) {
				$strforhash .= $this->array2string($_GET);
			}
			if ($properties['cache_condition']['post']) {
				$strforhash .= $this->array2string($_POST);
			}
			if ($properties['cache_condition']['cookie']) {
				$strforhash .= $this->array2string($_COOKIE);
			}
			if ($properties['cache_condition']['session']) {
				$strforhash .= $this->array2string($_SESSION);
			}
			
			$cachefile = md5($strforhash);
			
			if (file_exists($engine_root."/cache/components/".$component['comptype_alias']."/".$cachefile)) {
				return true;
			} else {
				ob_start();
				$component_params = $component;
				include $engine_root."/components/".$component['comptype_alias']."/component.php";
				include $engine_root."/components/".$component['comptype_alias']."/templates/".$component["comptpl_alias"]."/template.php";
				$cache_content = ob_get_contents();
				ob_end_clean();
				
				echo $engine_root."/cache/components/".$component['comptype_alias']."/".$cachefile;
				$this->write($engine_root."/cache/components/".$component['comptype_alias']."/".$cachefile,$cache_content);
				//file_put_contents($engine_root."/cache/components/".$component['comptype_alias']."/".$cachefile,$cache_content);
				return true;
			}
			
		}
		
		public function render_main_block() {
			
			global $obtain_objects;
			
			$alias = $this->partition_params["comptype_alias"];
			$template = $this->partition_params["comptpl_alias"];
			$component_params = $this->partition_params;
			$page_params = $this->page_params;
			
			global $engine_root;
			
			include $engine_root."/components/".$alias."/properties.php";
			
			$cachefilename = '';
			
			if (($properties['cache_enabled'])&&($this->isset_component_cache($cachefilename,$this->partition_params))) {
				include $engine_root."/cache/components/".$alias."/".$cachefilename;
			} else {
				include $engine_root."/components/".$alias."/component.php";
				include $engine_root."/components/".$alias."/templates/".$template."/template.php";
				//Сюда надо вставить "Если кеш разрешён, то записать сгенерированное в кэш"
			}
			
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
