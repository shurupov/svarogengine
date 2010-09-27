<?
	
	class SitePage {
		
		//Добавить полный псевдоним в текущий раздел и подразделы
		public static function set_full_aliases_in_current_and_sub($element_id,$table) {
			
			SQLExecuter::query('SELECT `id`,`parent_id`,`alias` FROM `'.$table.'` WHERE `id`="'.$element_id.'"');
			
			$page_data = SQLExecuter::fetch();
			
			if ($page_data['parent_id']>0) {
				SQLExecuter::query('SELECT `fullalias` FROM `'.$table.'` WHERE `id`="'.$page_data['parent_id'].'"');
				$parent = SQLExecuter::fetch();
				$before_alias = $parent['fullalias'];
				$fullalias = $before_alias.'/'.$page_data['alias'];
			} else {
				$before_alias = '';
				$fullalias = $page_data['alias'];
			}
			
			SQLExecuter::query('UPDATE `'.$table.'` SET `fullalias`="'.addslashes($fullalias).'" WHERE `id`="'.$element_id.'"');
			SitePage::set_subpartitions_fullaliases($fullalias,$element_id,$table);
			
		}
		
		public static function set_subpartitions_fullaliases($before_alias,$parent_id,$table) {
			
			SQLExecuter::query('SELECT `id`,`alias` FROM `'.$table.'` WHERE `parent_id`="'.$parent_id.'"');
			
			$partitions = SQLExecuter::get_array();
			
			foreach ($partitions as $partition) {
				SQLExecuter::query('UPDATE `'.$table.'` SET `fullalias`="'.addslashes($before_alias.'/'.$partition['alias']).'" WHERE `id`="'.$partition['id'].'"');
				SitePage::set_subpartitions_fullaliases($before_alias.'/'.$partition['alias'],$partition['id'],$table);
			}
			
		}
		
	}
	
?>
