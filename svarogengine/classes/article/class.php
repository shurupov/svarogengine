<?php

	/**
	 * 
	 * Объект "Статьи"
	 * Объект, описывающий вывод и обработку класса контента "Статьи"
	 * 
	 */ 
	class Article {
		
		/**
		 * 
		 * Отображение блока
		 * наследуется от DefaultClass
		 * 
		 */ 
		static public function render_block($alias,$block_params,$template,$page_params,$face_params) {
			
			switch ($alias) {
				case "a_fullarticle" :
					$params = Article::get_b_article($block_params);
				break;
				
				case "a_articlelist" :
					$params = Article::get_b_articlelist($block_params);
				break;				
			}
			
			Article::render_from_template($params,$template,$alias,$block_params["btype_class_alias"]);
			
		}
		
		/**
		 * Отображение морды страницы
		 */
		static public function render_face($alias,$template,$face_params,$page_params) {
			
			switch ($alias) {
				case "a_f_article" :
					$params = Article::get_f_article($face_params);
				break;
				
				case "a_f_articlelist" :
					$params = Article::get_f_articlelist($face_params,$page_params);
				break;
			}
			
			Article::render_from_template($params,$face_params["facetpl_file"],$alias,$face_params["faceclass_alias"]);
			
		}
		
		/**
		 * Отображение морды админки  
		 */
		static public function render_admin_face($alias,$template,$classalias) {
			
			switch ($alias) {
				case "list" :
					$params = Article::get_admin_list($_GET["list_id"]);
				break;
				
				case "edit_theme" :
					$params = Article::get_admin_edit_theme($_GET["theme_id"]);
				break;
				
				case "add_theme" :
					$params = Article::get_admin_add_theme($_GET["theme_id"]);
				break;
				
				case "del_theme" :
					$params = Article::get_admin_del_theme($_GET["theme_id"]);
				break;
				
				case "edit_article" :
					$params = Article::get_admin_edit_article($_GET["article_id"]);
				break;
				
				case "del_article" :
					$params = Article::get_admin_del_article($_GET["article_id"]);
				break;				
				
				case "add_article" :
					$params = Article::get_admin_add_article($_GET["list_id"]);
				break;
			}
			
			Article::render_from_template($params,$template,"admin",$classalias);
			
		}
		
		/**
		 * Отображение настроек текущей морды сайта
		 */
		static public function render_admin_face_tune($facetype,$template,$faceparams,$classalias) {
			
			switch ($facetype) {
				
				case 'a_f_articlelist' :
					$params = Article::get_face_tune_article_list($facetype,$faceparams);
				break;
				
				case 'a_f_article' :
					$params = Article::get_face_tune_article($facetype,$faceparams);
				break;
				
			}
			
			Article::render_from_template($params,$template,'facetune',$classalias);
			
		}
		
		/**
		 * Отображение настроек блока
		 */
		static public function render_admin_block_tune($blocktype,$template,$blockparams,$classalias) {
			
			switch ($blocktype) {
				
				case 'a_articlelist' :
					$params = Article::get_block_tune_article_list($blocktype,$blockparams);
				break;
				
				case 'a_fullarticle' :
					$params = Article::get_block_tune_article($blocktype,$blockparams);
				break;
				
			}
			
			Article::render_from_template($params,$template,'blocktune',$classalias);
			
		}
		
		static function get_block_tune_article($blocktype,$blockparams) {
			
			global $sql_executer;
			
			$result = array();
			
			$result['params'] = $blockparams;
			
			$sql_executer->query('
				select
					`art`.*,
					`th`.`title` as `theme`
				from
					`sc_sa_article` `art`
					JOIN `sc_sa_theme` `th` ON `th`.`id`=`art`.`theme_id`
			');
			$result['articles'] = $sql_executer->get_array();
			
			$sql_executer->query('
				SELECT *
				FROM `sc_blocktpl`
				WHERE `blocktype_alias`="'.$blocktype.'"
			');
			$result['templates'] = $sql_executer->get_array();
			
			return $result;
			
		}
		
		static function get_block_tune_article_list($blocktype,$blockparams) {
			
			global $sql_executer;
			
			$result = array();
			
			$result['params'] = $blockparams;
			
			$sql_executer->query('select * from `sc_sa_theme`');
			$result['themes'] = $sql_executer->get_array();
			
			$sql_executer->query('
				SELECT *
				FROM `sc_blocktpl`
				WHERE `blocktype_alias`="'.$blocktype.'"
			');
			$result['templates'] = $sql_executer->get_array();
			
			return $result;
			
		}
		
		/**
		 * Получение данных настройки морды сайта в админке
		 * Морда "Статья"
		 */
		static function get_face_tune_article($facetype,$faceparams) {
			
			global $sql_executer;
			
			$result = $faceparams;//array();
			
			$sql_executer->query('
				select `ar`.`id`, `ar`.`title`, `th`.`title` as `theme`
				from `sc_sa_article` `ar`
				join `sc_sa_theme` `th` on `th`.`id`=`ar`.`theme_id`
				');
			$result['articles'] = $sql_executer->get_array();
			$result['face_id'] = $faceparams['face_id'];
			
			$result['template'] = Article::get_tpl_names($facetype);
			
			return $result;
			
		}
		
		/**
		 * Получение данных настройки морды сайта в админке
		 * Морда "Список статей"
		 */
		static function get_face_tune_article_list($facetype,$faceparams) {
			
			global $sql_executer;
			
			$result = $faceparams;//array();
			
			$sql_executer->query('select * from `sc_sa_theme`');
			$result['themes'] = $sql_executer->get_array();
			$result['face_id'] = $faceparams['face_id'];
			
			$result['template'] = Article::get_tpl_names($facetype);
			
			return $result;
			
		}
		
		/**
		 * Получение списка шаблонов для морды сайта текущего типа
		 */
		static function get_tpl_names($facetype) {
			
			global $sql_executer;
			
			$sql_executer->query('
				select * from `sc_facetpl`
				where `facetype_alias`="'.$facetype.'"
			');
			
			return $sql_executer->get_array();
			
		}
		
		//Рекурсивное удаление темы статей (вместе со статьями и вложенными подтемами)
		static function del_theme($id) {
			
			global $sql_executer;
			
			$sql_executer->query("select * from sc_sa_theme where parent_id='$id'");
			$themes = $sql_executer->get_array();
			foreach ($themes as $theme) {
				Article::del_theme($theme["id"]);
			}
			$sql_executer->query("delete from sc_sa_article where theme_id='$id'");
			$sql_executer->query("delete from sc_sa_theme where id='$id'");
		}
		
		//Удаление раздела статей
		static function get_admin_del_theme($id) {
			
			global $sql_executer;
			
			Article::del_theme($id);
			
			$menu_list = Article::get_subthemes_array();
			
			$sql_executer->query("select * from sc_sa_article where theme_id=$id order by id");
			$article_list = $sql_executer->get_array();
			
			$result = array();
			$result["menu_list"] = $menu_list;
			$result["article_list"] = $article_list;
			//$result["id"] = $id;*/
			
			return $result;
		}
		
		//Добавление темы статей в админке
		static function get_admin_add_theme($theme_id) {
			
			global $sql_executer;
			
			$result = array();
			$result["action"] = "add";			
			
			$theme_data['parent_id'] = $theme_id;
			
			if ($_POST["sended"]=="ok") {
				$sql_executer->query("
					insert into sc_sa_theme
					(title, article_alias, parent_id,`has_preview`,`w1`,`h1`,`w2`,`h2`,`w3`,`h3`)
					values
					('".addslashes($_POST["title"])."',
					'".addslashes($_POST["article_alias"])."',
					'".$_POST["parent_id"]."',
					'".addslashes($_POST["has_preview"])."',
					'".addslashes($_POST["w1"])."',
					'".addslashes($_POST["h1"])."',
					'".addslashes($_POST["w2"])."',
					'".addslashes($_POST["h2"])."',
					'".addslashes($_POST["w3"])."',
					'".addslashes($_POST["h3"])."')
				");
				$id = $sql_executer->get_last_insert_id();
				$result["action"] = "edit";
				$sql_executer->query("select * from sc_sa_theme where id='$id'");
				$theme_data = $sql_executer->fetch();				
			}
			
			$menu_list = Article::get_subthemes_array();
			
			$result["menu_list"] = $menu_list;
			$result["theme_data"] = $theme_data;
			$result["theme_id"] = $id;
			
			return $result;
			
		}
		
		//Редактирование темы статей в админке
		static function get_admin_edit_theme($id) {
			
			global $sql_executer;
			
			if ($_POST["sended"]=="ok") {
				$sql_executer->query("
					update `sc_sa_theme` set
					`title`='".addslashes($_POST["title"])."',
					`article_alias`='".addslashes($_POST["article_alias"])."',
					`has_preview`='".addslashes($_POST["has_preview"])."',
					`w1`='".addslashes($_POST["w1"])."',
					`h1`='".addslashes($_POST["h1"])."',
					`w2`='".addslashes($_POST["w2"])."',
					`h2`='".addslashes($_POST["h2"])."',
					`w3`='".addslashes($_POST["w3"])."',
					`h3`='".addslashes($_POST["h3"])."',
					`parent_id`='".$_POST["parent_id"]."'
					where `id`='$id'
				");
			}
			
			$menu_list = Article::get_subthemes_array();
			
			$sql_executer->query("select * from sc_sa_theme where id='$id'");
			$theme_data = $sql_executer->fetch();
			
			$result = array();
			$result["action"] = "edit";
			$result["menu_list"] = $menu_list;
			$result["theme_data"] = $theme_data;
			$result["theme_id"] = $id;
			
			return $result;
			
		}
		
		//Вывод в массив дерева тем статей для админки
		static function get_subthemes_array($id=0) {
			
			global $sql_executer;
			
			$result = array();
			
			$sql_executer->query("select * from sc_sa_theme where parent_id='$id' order by id");
			$result = $sql_executer->get_array();
			
			$c = count($result);
			if ($c) {
				$result[$c-1]['last'] = 1;
			}
			
			foreach ($result as $key=>$item) {
				$result[$key]["submenu"] = Article::get_subthemes_array($item["id"]);
			}
			
			return $result;
			
		}
		
		//Вывод статей текущей темы в админке
		static function get_admin_del_article($id=0) {
			
			global $sql_executer;
			
			$menu_list = Article::get_subthemes_array();
			
			$sql_executer->query("select * from sc_sa_article where id='$id'");
			$article_data = $sql_executer->fetch();
			
			$theme_id = $article_data["theme_id"];
			
			$sql_executer->query("delete from sc_sa_article where id='$id'");
			
			$sql_executer->query("select * from sc_sa_article where theme_id=$theme_id order by id");
			$article_list = $sql_executer->get_array();
			
			$result = array();
			$result["menu_list"] = $menu_list;
			$result["article_list"] = $article_list;
			$result["id"] = $theme_id;
			
			return $result;
		}		
		
		//Вывод статей текущей темы в админке
		static function get_admin_list($id=0) {
			
			global $sql_executer;
			
			$menu_list = Article::get_subthemes_array();
			
			$sql_executer->query("select * from sc_sa_article where theme_id=$id order by id");
			$article_list = $sql_executer->get_array();
			
			$result = array();
			$result["menu_list"] = $menu_list;
			$result["article_list"] = $article_list;
			$result["id"] = $id;
			
			return $result;
		}
		
		//добавление статьи в админке
		static function get_admin_add_article($theme_id) {
			
			global $sql_executer;
			
			$result = array();
			
			$result["action"] = "add";
						
			if ($_POST["sended"]=="ok") {
				$sql_executer->query("
					insert into sc_sa_article 
					(title, date, has_preview, pre_text, text, theme_id)
					values
					('".addslashes($_POST["title"])."',
					'".addslashes(strtotime($_POST["date"]))."',
					'".addslashes($_POST["has_preview"])."',
					'".addslashes($_POST["pre_text"])."',
					'".$_POST["text"]."',
					'".$_POST["theme_id"]."')
				");
				$id = $sql_executer->get_last_insert_id();
				$result["action"] = "edit";
				$sql_executer->query("select * from sc_sa_article where id='$id'");
				$article_data = $sql_executer->fetch();
				Article::upload_preview_image($id);
			}
			
			$menu_list = Article::get_subthemes_array();
			
			$article_data['date'] = date("d-m-Y");
			$result["menu_list"] = $menu_list;
			$result["article_data"] = $article_data;
			$result["theme_id"] = $theme_id;
			
			$sql_executer->query('
				SELECT *
				FROM `sc_sa_theme`
				WHERE `id`="'.$result["theme_id"].'"
			');
			$result['theme'] = $sql_executer->fetch();
			
			$sql_executer->query("select * from sc_sa_article where theme_id=".$result["theme_id"]." order by id");
			$result['article_list'] = $sql_executer->get_array();
			
			return $result;
			
		}
		
		//Редактирование статьи в админке
		static function get_admin_edit_article($id) {
			
			global $sql_executer;
			
			if ($_POST["sended"]=="ok") {
				$sql_executer->query("
					update sc_sa_article set
					title='".addslashes($_POST["title"])."',
					date='".addslashes(strtotime($_POST["date"]))."',
					has_preview='".addslashes($_POST["has_preview"])."',
					pre_text='".addslashes($_POST["pre_text"])."',
					text='".$_POST["text"]."',
					theme_id='".$_POST["theme_id"]."'
					where id='$id'
				");
				Article::upload_preview_image($id);
			}
			
			$menu_list = Article::get_subthemes_array();
			
			$sql_executer->query("select * from sc_sa_article where id='$id'");
			$article_data = $sql_executer->fetch();
			$article_data['date'] = date("d-m-Y",$article_data['date']);
			
			$result = array();
			$result["action"] = "edit";
			$result["menu_list"] = $menu_list;
			$result["article_data"] = $article_data;
			$result["theme_id"] = $article_data["theme_id"];
			
			$sql_executer->query('
				SELECT *
				FROM `sc_sa_theme`
				WHERE `id`="'.$result["theme_id"].'"
			');
			$result['theme'] = $sql_executer->fetch();
			
			$sql_executer->query("select * from sc_sa_article where theme_id=".$result["theme_id"]." order by id");
			$result['article_list'] = $sql_executer->get_array();
			
			return $result;
			
		}
		
		static function upload_preview_image($id) {
			
			global $_FILES;
			global $sql_executer;
			
			if ($_FILES['preview_image']) {
				$file = $_FILES['preview_image'];
				
				if ($file['error']) {
					echo '<div class="standarddiv" style="color: red; font-weight: bold;">Ошибка загрузки файла!</div><br>';
					return false;
				}
				
				$sql_executer->query('
					SELECT
						`t`.`w1`,
						`t`.`h1`,
						`t`.`w2`,
						`t`.`h2`,
						`t`.`w3`,
						`t`.`h3`,
						`t`.`leftcenter`
					FROM `sc_sa_article` `a`
					JOIN `sc_sa_theme` `t` ON `t`.`id`=`a`.`theme_id`
					WHERE `a`.`id`="'.$id.'"
					LIMIT 1
				');
				$info = $sql_executer->fetch();
				
				switch ($file['type']) {
					case 'image/jpeg'	: $image = imagecreatefromjpeg($file['tmp_name']); break;
					case 'image/png'	: $image = imagecreatefrompng($file['tmp_name']); break;
					case 'image/gif'	: $image = imagecreatefromgif($file['tmp_name']); break;
					default				: echo '<div class="standarddiv" style="color: red; font-weight: bold;">Ошибка загрузки файла!</div><br>'; return false;
				}
				
				$w = imagesx($image);
				$h = imagesy($image);
				$w1 = $info['w1'];
				$h1 = $info['h1'];
				$w2 = $info['w2'];
				$h2 = $info['h2'];
				$w3 = $info['w3'];
				$h3 = $info['h3'];
				$leftcenter = $info['leftceter'];
				
				$k = $w/$h;
				$k1 = $w1/$h1;
				
				if ($k!=$k1) {
					//echo $k.' '.$k1;
					//Пропорции изменены, надо обрезать
					//Смотрим, что надо обрезать (ширину или высоту)
					if ($k>$k1) {
						//Ширина изображения больше, её и надо уменьшить
						$ww = round($h*$w1/$h1);
						$hh = $h;
					} elseif ($k<$k1) {
						//Высота изображения больше, её и надо уменьшить
						$hh = round($w*$h1/$w1);
						$ww = $w;
					}
					
					//Смотрим как будем обрезать (по краям или справа, снизу)
					if ($leftcenter==1) {
						$x = 0;
						$y = 0;
					} else {
						$x = round(($w-$ww)/2);
						$y = round(($h-$hh)/2);
					}
					$newimage = imagecreatetruecolor($ww,$hh);
					imagecopy($newimage,$image,0,0,$x,$y,$ww,$hh);
					imagedestroy($image);
					$image = $newimage;
					//$newimage = null;
					$w = $ww;
					$h = $hh;
					
				}
				
				$path = $_SERVER['DOCUMENT_ROOT'].'/files/article/preview/';
				$image1 = imagecreatetruecolor($w1,$h1);
				imagecopyresampled($image1,$image,0,0,0,0,$w1,$h1,$w,$h);
				imagejpeg($image1, $path.$id.'_1.jpeg');
				
				$image2 = imagecreatetruecolor($w2,$h2);
				imagecopyresampled($image2,$image,0,0,0,0,$w2,$h2,$w,$h);
				imagejpeg($image2, $path.$id.'_2.jpeg');
				
				$image3 = imagecreatetruecolor($w3,$h3);
				imagecopyresampled($image3,$image,0,0,0,0,$w3,$h3,$w,$h);
				imagejpeg($image3, $path.$id.'_3.jpeg');
				
			}
		}
		
		//Вывод статьи
		static function get_b_article($block_params) {
		
			$result = array();
			
			global $sql_executer;
			
			$sql_executer->query("select * from sc_sa_article where id=".$block_params["p1"]);
			
			$article = $sql_executer->fetch();
			$result = $article;
			
			return $result;
		
		}
		
		//Вывод списка статей
		static function get_b_articlelist($block_params) {
			
			global $sql_executer;
			
			$sql_executer->query("select * from sc_sa_article where theme_id=".$block_params["p1"]." order by ".$block_params["p2"]." ".$block_params["p3"]." limit 0,".$block_params["p4"]);
			
			$result = $sql_executer->get_array();
			
			return $result;
			
		}
		
	}
	
	//$obtain_objects["article"] = new Article();
	
?>
