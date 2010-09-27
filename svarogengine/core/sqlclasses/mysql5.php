<?php
	
	
	$db_identifier = null;
	$request_identifier = null;
	
	/**
	 * Обработчик SQL-запросов
	 *
	 */
	class SQLExecuter {
		
		function init($db_host,$db_user,$db_pass,$db_base) {
			
			global $db_identifier;
			
			$db_identifier=mysql_connect($db_host,$db_user,$db_pass);
			mysql_select_db($db_base,$db_identifier);			
			mysql_query('SET NAMES utf8',$db_identifier);
			
		}
		
		/**
		 * Запрос к базе данных
		 */
		static public function query($query,$print=0) {
			
			global $request_identifier;
			global $db_identifier;
			
			if ($print) {
				echo '<pre>'.$query.'</pre>';
			}
			
			$request_identifier = mysql_query($query,$db_identifier);			
			
		}
		
		/**
		 * Выделить одну запись результата запроса
		 */
		static public function fetch() {
			
			global $request_identifier;
			
			if ($request_identifier)
				return mysql_fetch_assoc($request_identifier);
				
		}
		
		/**
		 * Выделить все найденные записи в массиве
		 */
		static public function get_array() {
			
			global $request_identifier;
			
			$result = array();
			
			if ($request_identifier)
				while ($el = SQLExecuter::fetch()) {
					$result[] = $el;
				}
			
			return $result; 
			
		}
		
		/**
		 * Узнать количество найденных записей
		 */
		static public function get_count() {
			
			global $request_identifier;
			
			if ($request_identifier)
				return mysql_num_rows($request_identifier);
			
		}
		
		/**
		 * Получить id последней добавленной записи
		 */
		static public function get_last_insert_id() {
			
			global $db_identifier;
			
			if ($db_identifier)
				return mysql_insert_id($db_identifier);
		}
		
	}


?>
