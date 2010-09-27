<?php
	
	/**
	 * Класс "Разделы и меню"
	 *
	 */
	class Menu {
		
		/**
		 * Вывод блока
		 */
		static public function render_block($alias,$block_params,$template,$page_params,$face_params) {
			
			switch ($alias) {
				case "m_main_menu" :
					$params = Menu::get_b_main_menu($block_params["p1"],$face_params["id"],$block_params['p2']);
				break;
				case "menu_with_sub" :
					$params = Menu::get_b_menu_with_sub($block_params["p1"],$face_params,$block_params['p2']);
				break;
			}
			
			Menu::render_from_template($params,$template,$alias,$block_params["btype_class_alias"]);
			
		}
		
		/**
		 * Вывод морды страницы
		 */
		static public function render_face($alias,$template,$face_params,$page_params) {
			
			switch ($alias) {
			
			}
			
			Menu::render_from_template($params,$face_params["facetpl_file"],$alias,$face_params["faceclass_alias"]);
			
		}
		
		/**
		 * Вывод админской морды
		 */
		static public function render_admin_face($alias,$template,$classalias) {
			
			switch ($alias) {
				case "menu_list" :
					$params = Menu::get_admin_menu_list();
				break;
				
				case "menu_edit" :
					$params = Menu::get_admin_menu_edit($_GET['menu_id']);
				break;
				
				case "menu_add" :
					$params = Menu::get_admin_menu_add();
				break;
				
				case "menu_delete" :
					$params = Menu::get_admin_menu_delete($_GET['menu_id']);
				break;
				
				case "add_part" :
					$params = Menu::get_admin_add_partition($_GET['menu_id'],$_GET['part_id']);
				break;
				
				case "part_list" :
					$params = Menu::get_admin_edit_partition($_GET['menu_id'],$_GET['part_id']);
				break;
				
				case "del_part" :
					$params = Menu::get_admin_partition_delete($_GET['menu_id'],$_GET['part_id'],$_GET['del_part_id']);
				break;
				
			}
			
			Menu::render_from_template($params,$template,"admin",$classalias);
			
		}
		
		/**
		 * Вывод настроечной панели морды сайта
		 */
		static public function render_admin_face_tune($facetype,$template,$params = array()) {
			
			Menu::render_from_template($params,$template,'facetune');
			
		}
		
		/**
		 * Отображение настроек блока
		 */
		static public function render_admin_block_tune($blocktype,$template,$blockparams,$classalias) {
			
			switch ($blocktype) {
				
				case 'menu_with_sub' :
				case 'm_main_menu' :
					$params = Menu::get_block_tune_main_menu($blocktype,$blockparams);
				break;
				
			}
			
			Menu::render_from_template($params,$template,'blocktune',$classalias);
			
		}
		
		static function get_block_tune_main_menu($blocktype,$blockparams) {
			
			global $sql_executer;
			
			$result = array();
			
			$result['params'] = $blockparams;
			
			$sql_executer->query('
				select
					*
				from
					`sc_menu` `art`
			');
			$result['menu'] = $sql_executer->get_array();
			
			$sql_executer->query('
				SELECT
					"0" as `id`,
					"Корень" as `title`
				UNION
				SELECT
					`id`,
					`title`
				FROM `sc_partition`
				WHERE `menu_id`="'.$blockparams['p1'].'"
			');
			$result['partitions'] = $sql_executer->get_array();
			
			$sql_executer->query('
				SELECT *
				FROM `sc_blocktpl`
				WHERE `blocktype_alias`="'.$blocktype.'"
			');
			$result['templates'] = $sql_executer->get_array();
			
			return $result;
			
		}
		
		/**
		 * Выборка и обработка данных для добавления меню
		 */
		static function get_admin_menu_add() {
			
			global $sql_executer;
			
			$result = array();
			if ($_POST['sended']=='ok') {
				$sql_executer->query('
					insert into sc_menu
					(title,alias)
					values
					(
					"'.addslashes($_POST["title"]).'",
					"'.addslashes($_POST["alias"]).'"
					)
				');
				
				$menu_id = $sql_executer->get_last_insert_id();
				
				$result['action'] = 'edit';
				
				$sql_executer->query('select * from sc_menu where id='.$menu_id);
				$result['menu_data'] = $sql_executer->fetch();
				
			}
			
			$sql_executer->query('select * from sc_menu');
			$list = $sql_executer->get_array();
			
			$result['list'] = $list;
			
			return $result;
			
		}
		
		/**
		 * Выборка и обработка данных при изменении меню
		 */
		static function get_admin_menu_edit($menu_id=0) {
			
			global $sql_executer;
			
			if ($_POST['sended']=='ok') {
				$sql_executer->query('
					update sc_menu set
					title="'.addslashes($_POST["title"]).'",
					alias="'.addslashes($_POST["alias"]).'"
					where id='.$menu_id.'
				');
			}
			
			$sql_executer->query('select * from sc_menu');
			$list = $sql_executer->get_array();
			$result = array();
			$result['list'] = $list;
			
			$sql_executer->query('select * from sc_menu where id='.$menu_id);
			$result['menu_data'] = $sql_executer->fetch();
			
			return $result;
			
		}
		
		/**
		 * Выборка и обработка данных при удалении пункта меню
		 */
		static function get_admin_part_delete($menu_id,$part_id=0) {
			
			global $sql_executer;
			
			$sql_executer->query("select * from sc_partition where menu_id='$menu_id' and parent_id='$part_id'");
			$list = $sql_executer->get_array();
			
			foreach ($list as $partition) {
				
				Menu::get_admin_part_delete($menu_id,$partition['id']);
				
			}
			
			$sql_executer->query("delete from sc_partition where id='$part_id'");
			
		}
		
		/**
		 * Выборка списка меню
		 */
		static function get_admin_menu_list() {
			
			global $sql_executer;
			
			$sql_executer->query('select * from sc_menu');
			
			$list = $sql_executer->get_array();
			
			$result = array();
			
			$result['list'] = $list;
			
			return $result;
			
		}
		
		static public function get_all_menupartitions() {
			
			//$sql_executer;
			
			$result = Menu::get_admin_menu_list();
			$result = $result['list'];
			
			//$sql_executer
			
			foreach ($result as $k=>$menu) {
				$result[$k]['partition'] = Menu::get_subpartitions_array($menu['id']);
			}
			
			return $result;
			
		}
		
		/**
		 * Обработка удаления меню
		 */
		static function get_admin_menu_delete($menu_id) {
			
			global $sql_executer;
			
			Menu::get_admin_part_delete($menu_id);
			
			$sql_executer->query('delete from sc_menu where id='.$menu_id);
			$sql_executer->query('select * from sc_menu');
			
			$list = $sql_executer->get_array();
			
			$result = array();
			
			$result['list'] = $list;
			
			return $result;
			
		}
		
		/**
		 * Добавление пункта меню
		 */
		static function get_admin_add_partition($menu_id,$part_id=0) {
			
			global $sql_executer;
			
			if (!$part_id) {
				$part_id = 0;
				$parent_depth = 0;
			} else {
				$sql_executer->query('
					SELECT *
					FROM `sc_partition`
					WHERE `id`="'.$part_id.'"
				');
				$parent_part = $sql_executer->fetch();
				$parent_depth = $parent_part['depth'];
			}
			
			$sql_executer->query('
				SELECT `param_value`
				FROM `sc_option`
				WHERE `param_name`="'.$default_template_id.'"
			');
			$default_tpl = $sql_executer->fetch();
			
			$sql_executer->query('
				insert into `sc_partition`
				(`menu_id`,`parent_id`,`depth`,`visible`,`title`,`linktitle`,`alias`,`template_id`)
				values (
					'.$menu_id.',
					'.$part_id.',
					'.($parent_depth+1).',
					0,
					"Новый раздел",
					"Новый раздел",
					"new",
					"'.$default_tpl['param_value'].'"
				)
			');
			$new_part_id = $sql_executer->get_last_insert_id();
			
			$result = Menu::get_admin_partition_list($menu_id,$new_part_id);
			
			return $result;
		}
		
		/**
		 * Узнать полный псевдоним раздела (пункта меню)
		 */
		static function get_full_alias_by_id($part_id) {
			
			global $sql_executer;
			
			if ($part_id==0)
				return '';
			else {
				$sql_executer->query('
					select
						`parent_id`,
						`alias`
					from
						`sc_partition`
					where
						`id`='.$part_id.'
				');
				$info = $sql_executer->fetch();
				
				if ($info['parent_id'])
					return Menu::get_full_alias_by_id($info['parent_id']).'/'.$info['alias'];
				else
					return $info['alias'];
			}
			
		}
		
		/**
		 * Редактирование раздела
		 */
		static function get_admin_edit_partition($menu_id,$part_id=0) {
			
			global $sql_executer;
			
			if ($_POST['sended']) {
				
				if (!$part_id) {
					$part_id = 0;
					$parent_depth_id = 0;
				} else {
					$sql_executer->query('
						SELECT *
						FROM `sc_partition`
						WHERE `id`="'.$_POST['parent_id'].'"
					');
					$parent_part = $sql_executer->fetch();
					$parent_depth_id = $parent_part['depth'];
				}
				
				$sql_executer->query('
					UPDATE `sc_partition`
					SET
						`menu_id`="'.$_POST['menu_id'].'",
						`parent_id`="'.$_POST['parent_id'].'",
						`depth`="'.($parent_depth_id+1).'",
						`visible`="'.$_POST['visible'].'",
						`url`="'.$_POST['url'].'",
						`title`="'.addslashes($_POST['title']).'",
						`linktitle`="'.addslashes($_POST['linktitle']).'",
						`alias`="'.addslashes($_POST['alias']).'",
						`blocklist_id`="'.$_POST['blocklist_id'].'",
						`facetpl_id`="'.$_POST['facetpl_id'].'",
						`template_id`="'.$_POST['template_id'].'",
						`facetype_id`="'.$_POST['facetype_id'].'",
						`faceclass_alias`="'.$_POST['faceclass_alias'].'",
						`app_p1`="'.addslashes($_POST['app_p1']).'",
						`app_p2`="'.addslashes($_POST['app_p2']).'",
						`app_p3`="'.addslashes($_POST['app_p3']).'",
						`app_p4`="'.addslashes($_POST['app_p4']).'",
						`app_p5`="'.addslashes($_POST['app_p5']).'",
						`app_p6`="'.addslashes($_POST['app_p6']).'",
						`app_p7`="'.addslashes($_POST['app_p7']).'",
						`app_p8`="'.addslashes($_POST['app_p8']).'"
					where id='.$part_id.'
				');
				
				$full_alias = Menu::get_full_alias_by_id($part_id);
				
				$sql_executer->query('select * from `sc_facetype` where id="'.$_POST['facetype_id'].'"');
				$facetype = $sql_executer->fetch();
				$facetype_alias = $facetype['alias'];
				
				$sql_executer->query('select * from `sc_facetpl` where id="'.$_POST['facetpl_id'].'"');
				$facetpl = $sql_executer->fetch();
				$facetplfile = $facetpl['file'];
				
				$sql_executer->query('
					select
						`file`
					from
						`sc_pagetpl`
					where
						`id`='.$_POST['template_id'].'
				');
				$info = $sql_executer->fetch();
				
				$sql_executer->query('
					update `sc_partition`
					set
						`fullalias`=\''.$full_alias.'\',
 						`template_file`=\''.$info['file'].'\',
 						`facetype_alias`=\''.$facetype_alias.'\',
 						`facetpl_file`=\''.$facetplfile.'\'
					where
						`id`='.$part_id.'
				');
				
			}
			
			return Menu::get_admin_partition_list($menu_id,$part_id);
			
		}
		
		/**
		 * Получить список разделов
		 */
		static function get_admin_partition_list($menu_id,$part_id=0) {
			
			global $sql_executer;
			
			$result = array();
			
			$sql_executer->query('select * from sc_menu');
			$result['menu_list'] = $sql_executer->get_array();
			
			$result['partition_list'] = Menu::get_subpartitions_array($menu_id);
			
			$sql_executer->query('select * from sc_pagetpl');
			$result['page_tpls'] = $sql_executer->get_array();
			
			$sql_executer->query('select * from sc_facetype');
			$result['page_facetypes'] = $sql_executer->get_array();
			
			$sql_executer->query('select * from sc_blocklist');
			$result['page_blocklists'] = $sql_executer->get_array();
			
			$sql_executer->query("select * from sc_partition where menu_id='$menu_id' and parent_id='$part_id' order by id");
			$result['parts'] = $sql_executer->get_array();
			
			$result['menu_id'] = $menu_id;
			$result['part_id'] = $part_id;
			
			if ($part_id) {
				
				$sql_executer->query("select * from sc_partition where id='$part_id'");
				$result['part_data'] = $sql_executer->fetch();
				
			}
			
			return $result;
			
		}
		
		/**
		 * Удалить раздел
		 */
		static function get_admin_partition_delete($menu_id,$part_id,$delete_part_id) {
			
			global $sql_executer;
			
			Menu::get_admin_part_delete($menu_id,$delete_part_id);
			
			return Menu::get_admin_partition_list($menu_id,$part_id);
			
		}
		
		// Определение принадлежности текущего раздела
		// разделу определённого уровня глубины
		static function suppartition_current($menu_id,$part_id,$depth) {
			
			SQLExecuter::query('
				SELECT *
				FROM `sc_partition`
				WHERE `id`="'.$part_id.'"
			');
			$partition = SQLExecuter::fetch();
			
			if ($partition['depth']<=$depth) {
				return $partition['id'];
			} else {
				return Menu::suppartition_current($menu_id,$partition['parent_id'],$depth);
			}
			
		}
		
		static function get_b_main_menu($menu_id,$current_partition_id,$parent_partition_id) {
			
			$result = array();
			global $sql_executer;
			$sql_executer->query('
				SELECT * 
				FROM `sc_partition`
				WHERE
					`menu_id`="'.$menu_id.'"
					AND
					`parent_id`="'.$parent_partition_id.'"
					AND
					`visible`="1"
				ORDER BY `id`
			');
			$menu = $sql_executer->get_array();
			
			$result['supcurrent'] = Menu::suppartition_current($menu_id,$current_partition_id,$menu[0]['depth']);
			
			$result["current"] = $current_partition_id;
			$result["menu"] = $menu;
			
			return $result;
			
		}
		
		/**
		 * Получить рекурсивный список подразделов
		 */
		static function get_subpartitions_array($menu_id,$part_id=0) {
			
			$result = array();
			
			SQLExecuter::query('
				SELECT *
				FROM `sc_partition`
				WHERE
					`menu_id`="'.$menu_id.'"
					AND
					`parent_id`="'.$part_id.'"
					-- AND
					-- `visible`="1"
				ORDER BY `id`
			');
			$result = SQLExecuter::get_array();
			
			$c = count($result);
			
			if ($c) {
				$result[$c-1]['last'] = 1;
				$result[0]['first'] = 1;
			}
			
			foreach ($result as $key=>$item) {
				$result[$key]["subpart"] = Menu::get_subpartitions_array($menu_id,$item['id']);
			}
			
			return $result;
			
		}
		
		static function get_b_menu_with_sub($menu_id,$current_partition,$parent_partition_id) {
			
			$result = array();
			global $sql_executer;
			
			$parent_of_curent = $current_partition['parent_id'];
			
			$sql_executer->query('
				SELECT * 
				FROM `sc_partition`
				WHERE
					`menu_id`="'.$menu_id.'"
					AND
					`parent_id`="'.$parent_partition_id.'"
					AND
					`visible`="1"
				');
			$menu = $sql_executer->get_array();
			
			foreach ($menu as $k=>$part) {
				if (($part['id']==$current_partition['id'])or($part['id']==$current_partition['parent_id'])) {
					$menu[$k]['submenu'] = Menu::get_subpartitions_array($part['menu_id'],$part['id']);
				}
			}
			
			//print_r($menu);
			
			$result["current"] = $current_partition['id'];
			$result['parent_of_current'] = $current_partition['parent_id'];
			$result["menu"] = $menu;
			
			return $result;
			
		}
		
	}
	
	//$obtain_objects["menu"] = new Menu();
	
?>
