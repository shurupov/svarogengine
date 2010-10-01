
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE IF NOT EXISTS `sc_admin_face` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(20) DEFAULT NULL,
  `classalias` varchar(20) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `visible` int(1) DEFAULT NULL,
  `template` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_admin_face` VALUES(1, 'list', 'article', 'Список статей', 'Список статей', 1, 'list.php');
INSERT INTO `sc_admin_face` VALUES(2, 'edit_article', 'article', 'Редактировать статью', 'Редактировать статью', 0, 'edit_article.php');
INSERT INTO `sc_admin_face` VALUES(3, 'add_article', 'article', 'Добавить статью', 'Добавить статью', 1, 'edit_article.php');
INSERT INTO `sc_admin_face` VALUES(4, 'del_article', 'article', 'Удаление статьи', 'Удаление статьи', 0, 'list.php');
INSERT INTO `sc_admin_face` VALUES(5, 'edit_theme', 'article', 'Редактировать тему статьи', 'Редактировать тему статьи', 0, 'edit_theme.php');
INSERT INTO `sc_admin_face` VALUES(6, 'add_theme', 'article', 'Добавить раздел статей', 'Добавить раздел статей', 1, 'edit_theme.php');
INSERT INTO `sc_admin_face` VALUES(7, 'del_theme', 'article', 'Удаление раздела статей', 'Удаление раздела статей', 0, 'list.php');
INSERT INTO `sc_admin_face` VALUES(8, 'menu_list', 'menu', 'Список меню', 'Список меню', 1, 'menu_list.php');
INSERT INTO `sc_admin_face` VALUES(9, 'part_list', 'menu', 'Список разделов', 'Список разделов', 0, 'partition_list.php');
INSERT INTO `sc_admin_face` VALUES(10, 'menu_edit', 'menu', 'Редактировать меню', 'Редактировать меню', 0, 'menu_edit.php');
INSERT INTO `sc_admin_face` VALUES(11, 'menu_add', 'menu', 'Добавить меню', 'Добавить меню', 1, 'menu_edit.php');
INSERT INTO `sc_admin_face` VALUES(12, 'menu_delete', 'menu', 'Удалить меню', 'Удалить меню', 0, 'menu_list.php');
INSERT INTO `sc_admin_face` VALUES(13, 'del_part', 'menu', 'Удаление раздела', 'Удаление раздела', 0, 'partition_list.php');
INSERT INTO `sc_admin_face` VALUES(14, 'add_part', 'menu', 'Добавить раздел', 'Добавить раздел', 1, 'partition_list.php');
INSERT INTO `sc_admin_face` VALUES(15, 'list', 'blockset', 'Список наборов блоков', 'Список наборов блоков', 1, 'list.php');
INSERT INTO `sc_admin_face` VALUES(16, 'edit_set', 'blockset', 'Редактирование блока', 'Редактирование блока', 0, 'edit_set.php');
INSERT INTO `sc_admin_face` VALUES(17, 'add_set', 'blockset', 'Добавление набора блоков', 'Добавление набора блоков', 1, 'edit_set.php');
INSERT INTO `sc_admin_face` VALUES(18, 'del_set', 'blockset', 'Удалить набор', 'Удалить набор', 0, 'list.php');
INSERT INTO `sc_admin_face` VALUES(19, 'edit_block', 'blockset', 'Редактирование блока', 'Редактирование блока', 0, 'edit_block.php');
INSERT INTO `sc_admin_face` VALUES(20, 'del_block', 'blockset', 'Удаление блока', 'Удаление блока', 0, 'edit_set.php');
INSERT INTO `sc_admin_face` VALUES(21, 'edit_options', 'option', 'Редактировать настройки', 'Редактировать настройки сайта', 1, 'edit_options.php');
INSERT INTO `sc_admin_face` VALUES(22, 'show_userlist', 'user_adm', 'Список пользователей', 'Список пользователей админки', 1, 'list.php');
INSERT INTO `sc_admin_face` VALUES(23, 'user_del', 'user_adm', 'Удаление пользователя', 'Удаление пользователя', 0, 'list.php');
INSERT INTO `sc_admin_face` VALUES(24, 'user_edit', 'user_adm', 'Редактирование пользователя', 'Редактирование пользователя', 0, 'edit_user.php');
INSERT INTO `sc_admin_face` VALUES(25, 'user_add', 'user_adm', 'Добавить пользователя', 'Добавить пользователя', 1, 'edit_user.php');
INSERT INTO `sc_admin_face` VALUES(26, 'usergroup_list', 'user_adm', 'Список групп пользователей', 'Список групп пользователей', 1, 'group_list.php');
INSERT INTO `sc_admin_face` VALUES(27, 'usergroup_del', 'user_adm', 'Удалить группу', 'Удалить группу пользователей', 0, 'group_list.php');
INSERT INTO `sc_admin_face` VALUES(28, 'usergroup_edit', 'user_adm', 'Редактировать группу', 'Редактировать группу пользователей', 0, 'group_edit.php');
INSERT INTO `sc_admin_face` VALUES(29, 'usergroup_add', 'user_adm', 'Добавить группу', 'Добавить группу пользователей', 1, 'group_edit.php');
INSERT INTO `sc_admin_face` VALUES(31, 'request_list', 'onlinepost', 'Список форм для отправки', 'Список форм для отправки', 1, 'request_list.php');
INSERT INTO `sc_admin_face` VALUES(32, 'delete_request', 'onlinepost', 'Удаление онлайн-формы отправки', 'Удаление онлайн-формы отправки', 0, 'request_list.php');
INSERT INTO `sc_admin_face` VALUES(33, 'edit_request', 'onlinepost', 'Редактировать форму', 'Редактировать форму', 0, 'edit_request.php');
INSERT INTO `sc_admin_face` VALUES(34, 'new_request', 'onlinepost', 'Добавить форму', 'Добавить форму', 1, 'edit_request.php');
INSERT INTO `sc_admin_face` VALUES(35, 'add_block', 'blockset', 'Добавить блок', 'Добавить блок', 0, 'edit_block.php');

CREATE TABLE IF NOT EXISTS `sc_admin_rights_face` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup_id` int(11) NOT NULL,
  `adminface_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_admin_rights_face` VALUES(23, 2, 28);
INSERT INTO `sc_admin_rights_face` VALUES(22, 2, 27);
INSERT INTO `sc_admin_rights_face` VALUES(17, 4, 22);
INSERT INTO `sc_admin_rights_face` VALUES(16, 4, 21);
INSERT INTO `sc_admin_rights_face` VALUES(21, 2, 11);
INSERT INTO `sc_admin_rights_face` VALUES(20, 2, 10);
INSERT INTO `sc_admin_rights_face` VALUES(19, 2, 9);
INSERT INTO `sc_admin_rights_face` VALUES(18, 2, 8);
INSERT INTO `sc_admin_rights_face` VALUES(24, 2, 29);

CREATE TABLE IF NOT EXISTS `sc_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_admin_user` VALUES(1, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', '', '', '', 1);
INSERT INTO `sc_admin_user` VALUES(2, 'moder1', '1a1dc91c907325c69271ddf0c944bc72', '', '', '', 2);
INSERT INTO `sc_admin_user` VALUES(3, 'moder2', '1a1dc91c907325c69271ddf0c944bc72', '', '', '', 3);
INSERT INTO `sc_admin_user` VALUES(4, 'moder3', '1a1dc91c907325c69271ddf0c944bc72', '', '', '', 4);
INSERT INTO `sc_admin_user` VALUES(5, 'user2', '1a1dc91c907325c69271ddf0c944bc72', '', '', '', 5);

CREATE TABLE IF NOT EXISTS `sc_admin_usergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `rights` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_admin_usergroup` VALUES(1, 'Администраторы', 'Им доступно всё!', 'all');
INSERT INTO `sc_admin_usergroup` VALUES(2, 'moderator', '', 'some');
INSERT INTO `sc_admin_usergroup` VALUES(3, 'moderator2', '', 'some');
INSERT INTO `sc_admin_usergroup` VALUES(4, 'moderator3', '', 'some');
INSERT INTO `sc_admin_usergroup` VALUES(5, 'users1', '', 'none');

CREATE TABLE IF NOT EXISTS `sc_admin_usergroup_rights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup_id` int(11) NOT NULL,
  `panel_alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_admin_usergroup_rights` VALUES(1, 2, 'structure');
INSERT INTO `sc_admin_usergroup_rights` VALUES(2, 3, 'dataedit');
INSERT INTO `sc_admin_usergroup_rights` VALUES(3, 4, 'dataedit');
INSERT INTO `sc_admin_usergroup_rights` VALUES(4, 4, 'structure');

CREATE TABLE IF NOT EXISTS `sc_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `comptype_alias` varchar(255) NOT NULL,
  `blocklist_id` int(11) NOT NULL,
  `comptpl_alias` varchar(255) NOT NULL,
  `p1` varchar(255) NOT NULL,
  `p2` varchar(255) NOT NULL,
  `p3` varchar(255) NOT NULL,
  `p4` varchar(255) NOT NULL,
  `p5` varchar(255) NOT NULL,
  `p6` varchar(255) NOT NULL,
  `p7` varchar(255) NOT NULL,
  `p8` varchar(255) NOT NULL,
  `p9` varchar(255) NOT NULL,
  `sort` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_block` VALUES(17, 'Меню', 'top_menu', 'menu.simple', 12, 'top_menu', '1', '', '', '', '', '', '', '', '', 100);

CREATE TABLE IF NOT EXISTS `sc_blocklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_blocklist` VALUES(12, 'Обычный список блоков', 'simple', '', 0);

CREATE TABLE IF NOT EXISTS `sc_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_menu` VALUES(1, 'main_menu', 'Главное меню', 0);

CREATE TABLE IF NOT EXISTS `sc_onpo_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `fieldtype_alias` varchar(20) NOT NULL,
  `request_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_onpo_field` VALUES(24, 'Какой тип работ вам требуется', 'textarea', 1, 40);
INSERT INTO `sc_onpo_field` VALUES(21, 'Ваше имя', 'text', 1, 10);
INSERT INTO `sc_onpo_field` VALUES(22, 'Ваши контакты (телефон, адрес)', 'textarea', 1, 20);

CREATE TABLE IF NOT EXISTS `sc_onpo_fieldtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `alias` varchar(20) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_onpo_fieldtype` VALUES(1, 'Однострочный текст', 'text');
INSERT INTO `sc_onpo_fieldtype` VALUES(2, 'Многострочный текст', 'textarea');
INSERT INTO `sc_onpo_fieldtype` VALUES(3, 'Выпадающий список', 'select');
INSERT INTO `sc_onpo_fieldtype` VALUES(4, 'Точки выбора (radiobutton)', 'radiobutton');
INSERT INTO `sc_onpo_fieldtype` VALUES(5, 'Галочка', 'checkbox');
INSERT INTO `sc_onpo_fieldtype` VALUES(6, 'Многострочный множественный выбор', 'multiselect');

CREATE TABLE IF NOT EXISTS `sc_onpo_multifield_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `value` varchar(100) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_onpo_multifield_value` VALUES(350, 17, 'павпв');
INSERT INTO `sc_onpo_multifield_value` VALUES(334, 12, '8585858');
INSERT INTO `sc_onpo_multifield_value` VALUES(333, 12, '123456789');
INSERT INTO `sc_onpo_multifield_value` VALUES(338, 13, '65755756');
INSERT INTO `sc_onpo_multifield_value` VALUES(337, 13, '567565756');
INSERT INTO `sc_onpo_multifield_value` VALUES(349, 17, '432423');
INSERT INTO `sc_onpo_multifield_value` VALUES(348, 17, 'уцйуц');
INSERT INTO `sc_onpo_multifield_value` VALUES(340, 5, '3333333333333');
INSERT INTO `sc_onpo_multifield_value` VALUES(339, 5, '444444444');
INSERT INTO `sc_onpo_multifield_value` VALUES(346, 15, 'пвапва');
INSERT INTO `sc_onpo_multifield_value` VALUES(345, 15, 'павппав');
INSERT INTO `sc_onpo_multifield_value` VALUES(344, 15, 'павппав');
INSERT INTO `sc_onpo_multifield_value` VALUES(343, 14, '8989898');
INSERT INTO `sc_onpo_multifield_value` VALUES(347, 17, 'екеке');
INSERT INTO `sc_onpo_multifield_value` VALUES(342, 14, '787878787');
INSERT INTO `sc_onpo_multifield_value` VALUES(341, 14, '565656565');
INSERT INTO `sc_onpo_multifield_value` VALUES(335, 12, 'ответ');
INSERT INTO `sc_onpo_multifield_value` VALUES(336, 12, 'ответ2');
INSERT INTO `sc_onpo_multifield_value` VALUES(377, 20, 'третий вариант');
INSERT INTO `sc_onpo_multifield_value` VALUES(376, 20, 'первый вариант ответа');
INSERT INTO `sc_onpo_multifield_value` VALUES(375, 20, 'второй вариант');
INSERT INTO `sc_onpo_multifield_value` VALUES(530, 0, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(529, 0, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(528, 0, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(527, 0, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(526, 0, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(513, 21, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(512, 21, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(511, 21, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(510, 21, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(509, 21, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(508, 21, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(519, 22, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(518, 22, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(517, 22, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(516, 22, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(515, 22, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(514, 22, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(496, 23, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(495, 23, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(494, 23, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(493, 23, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(492, 23, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(491, 23, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(525, 24, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(524, 24, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(523, 24, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(522, 24, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(521, 24, '');
INSERT INTO `sc_onpo_multifield_value` VALUES(520, 24, '');

CREATE TABLE IF NOT EXISTS `sc_onpo_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `request` tinytext NOT NULL,
  `class_field` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_onpo_request` VALUES(1, 'Сделать заявку', 'evg.bolt@bk.ru', '', 'onlinepost');

CREATE TABLE IF NOT EXISTS `sc_onpo_sended` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `time_sended` int(11) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_onpo_sended` VALUES(1, 1, '', 1241280377, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фами');
INSERT INTO `sc_onpo_sended` VALUES(2, 1, '', 1241280705, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фами');
INSERT INTO `sc_onpo_sended` VALUES(3, 1, '', 1241280771, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фами');
INSERT INTO `sc_onpo_sended` VALUES(4, 1, '', 1241280825, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фамилия</td><td></td></tr><tr><td>ляля</td><td></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>fdsf sdfsd</td><td>565656565</td></tr><tr><td>авыава</td><td>565656565</td></tr><tr><td>авывпа</td><td>565656565</td></tr></table>');
INSERT INTO `sc_onpo_sended` VALUES(5, 1, '', 1241280862, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фамилия</td><td></td></tr><tr><td>ляля</td><td></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>fdsf sdfsd</td><td>787878787<br>565656565<br>8989898</td></tr><tr><td>авыава</td><td>787878787<br>565656565<br>8989898</td></tr><tr><td>авывпа</td><td>787878787<br>565656565<br>8989898</td></tr></table>');
INSERT INTO `sc_onpo_sended` VALUES(6, 9, 'evg.bolt@bk.ru', 1241365998, 'Форма онлайн отправки<br><table><tr><td colspan=2>Маленькая онлайн-форма</td></tr><tr><td colspan=2></td></tr><tr><td>первый вопрос</td><td></td></tr><tr><td>второй вопрос</td><td></td></tr><tr><td>третий вопрос</td><td></td></tr></table>');
INSERT INTO `sc_onpo_sended` VALUES(7, 1, 'evg.bolt@bk.ru', 1241365998, 'Форма онлайн отправки<br><table><tr><td colspan=2>Название первой формы</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>вопрос</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фамилия</td><td></td></tr><tr><td>ляля</td><td></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>fdsf sdfsd</td><td></td></tr><tr><td>авыава</td><td></td></tr><tr><td>авывпа</td><td></td></tr></table>');
INSERT INTO `sc_onpo_sended` VALUES(8, 1, 'evg.bolt@bk.ru', 1251656467, 'Форма онлайн отправки<br><table><tr><td colspan=2>Заказать праздник</td></tr><tr><td colspan=2></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>');
INSERT INTO `sc_onpo_sended` VALUES(9, 1, 'evg.bolt@bk.ru', 1251656512, 'Форма онлайн отправки<br><table><tr><td colspan=2>Заказать праздник</td></tr><tr><td colspan=2></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>');
INSERT INTO `sc_onpo_sended` VALUES(10, 1, 'evg.bolt@bk.ru', 1251656516, 'Форма онлайн отправки<br><table><tr><td colspan=2>Заказать праздник</td></tr><tr><td colspan=2></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>');
INSERT INTO `sc_onpo_sended` VALUES(11, 1, 'evg.bolt@bk.ru', 1251656523, 'Форма онлайн отправки<br><table><tr><td colspan=2>Заказать праздник</td></tr><tr><td colspan=2></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>');
INSERT INTO `sc_onpo_sended` VALUES(12, 1, 'evg.bolt@bk.ru', 1253115905, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Заказать праздник</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>');

CREATE TABLE IF NOT EXISTS `sc_option` (
  `param_name` varchar(255) NOT NULL,
  `param_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `sc_option` VALUES('index_page_id', '92');
INSERT INTO `sc_option` VALUES('default_template_id', '1');

CREATE TABLE IF NOT EXISTS `sc_partition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `visible` int(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `linktitle` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `fullalias` varchar(255) NOT NULL,
  `blocklist_id` int(11) NOT NULL,
  `comptype_alias` varchar(255) NOT NULL,
  `depth` int(11) NOT NULL,
  `template_alias` varchar(255) NOT NULL,
  `comptpl_alias` varchar(255) DEFAULT NULL,
  `p1` varchar(255) NOT NULL,
  `p2` varchar(255) NOT NULL,
  `p3` varchar(255) NOT NULL,
  `p4` varchar(255) NOT NULL,
  `p5` varchar(255) NOT NULL,
  `p6` varchar(255) NOT NULL,
  `p7` varchar(255) NOT NULL,
  `p8` varchar(255) NOT NULL,
  `sort` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_partition` VALUES(94, 1, 0, 1, '', 'Контакты', 'Контакты', 'contacts', 'contacts', 12, 'article.article', 1, 'main', 'a_f_article', '38', '', '', '', '', '', '', 'date', 0);
INSERT INTO `sc_partition` VALUES(92, 1, 0, 1, '', 'Прайс-лист', 'Цены', 'price', 'price', 12, 'article.list', 1, 'main', 'a_f_articlelist', '9', 'id', 'asc', '1', '', '', '', 'title', 0);
INSERT INTO `sc_partition` VALUES(93, 1, 0, 1, '', 'Заказать', 'Заказать', 'order', 'order', 12, 'onlinepost.onlinepost', 1, 'main', 'form', '1', '', '', '', '', '', '', '', 0);
INSERT INTO `sc_partition` VALUES(111, 1, 0, 1, '', 'Ещё раздел', 'Ещё раздел', 'else', 'else', 12, 'article.list', 0, 'main', 'a_f_articlelist', '1', 'id', 'asc', '', '', '', '', '', 0);
INSERT INTO `sc_partition` VALUES(110, 1, 0, 1, '', 'О компании', 'О компании', 'about', 'about', 12, 'article.article', 0, 'main', 'a_f_article', '29', '', '', '', '', '', '', 'id', 0);

CREATE TABLE IF NOT EXISTS `sc_sa_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_id` int(11) NOT NULL,
  `has_preview` int(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `pre_text` text NOT NULL,
  `text` text NOT NULL,
  `date` int(11) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_sa_article` VALUES(29, 1, 0, 'О компании', '', '<p>В слабопеременных полях (при флуктуациях на уровне единиц процентов) кварк изотропно отталкивает магнит при любом агрегатном состоянии среды взаимодействия. При облучении инфракрасным лазером взрыв трансформирует короткоживущий разрыв, в итоге возможно появление обратной связи и самовозбуждение системы. Вихрь квантово разрешен. Силовое поле, в отличие от классического случая, выталкивает нестационарный взрыв вне зависимости от предсказаний самосогласованной теоретической модели явления. Ударная волна усиливает объект, даже если пока мы не можем наблюсти это непосредственно. Непосредственно из законов сохранения следует, что тело когерентно тормозит гамма-квант, при этом дефект массы не образуется.<br />\r\n<br />\r\nВозмущение плотности возбуждает погранслой вне зависимости от предсказаний самосогласованной теоретической модели явления. Резонатор немагнитен. Излучение сжимает квазар как при нагреве, так и при охлаждении. В соответствии с принципом неопределенности, зеркало косвенно.<br />\r\n<br />\r\nЛинза поглощает квантовый резонатор, даже если пока мы не можем наблюсти это непосредственно. В литературе неоднократно описано, как плазменное образование кумулятивно. Если для простоты пренебречь потерями на теплопроводность, то видно, что галактика индуцирует погранслой, как и предсказывает общая теория поля. Молекула тормозит тангенциальный разрыв, генерируя периодические импульсы синхротронного излучения. Мишень по определению восстанавливает вихрь так, как это могло бы происходить в полупроводнике с широкой запрещенной зоной. <br />\r\n<br />\r\n  Солитон изотропно синхронизует спиральный осциллятор, поскольку любое другое поведение нарушало бы изотропность пространства. В ряде недавних экспериментов химическое соединение усиливает гамма-квант без обмена зарядами или спинами. Тело представляет собой короткоживущий газ вне зависимости от предсказаний самосогласованной теоретической модели явления. Любое возмущение затухает, если экситон стохастично ускоряет внутримолекулярный экситон только в отсутствие тепло- и массообмена с окружающей средой. <br />\r\n </p>', 1257969600, 0);
INSERT INTO `sc_sa_article` VALUES(36, 1, 0, 'Контакты', '', '<p>Возмущение плотности возбуждает погранслой вне зависимости от предсказаний самосогласованной теоретической модели явления. Резонатор немагнитен. Излучение сжимает квазар как при нагреве, так и при охлаждении. В соответствии с принципом неопределенности, зеркало косвенно.<br />\n<br />\nЛинза поглощает квантовый резонатор, даже если пока мы не можем наблюсти это непосредственно. В литературе неоднократно описано, как плазменное образование кумулятивно. Если для простоты пренебречь потерями на теплопроводность, то видно, что галактика индуцирует погранслой, как и предсказывает общая теория поля. Молекула тормозит тангенциальный разрыв, генерируя периодические импульсы синхротронного излучения. Мишень по определению восстанавливает вихрь так, как это могло бы происходить в полупроводнике с широкой запрещенной зоной.<br />\n<br />\nСолитон изотропно синхронизует спиральный осциллятор, поскольку любое другое поведение нарушало бы изотропность пространства. В ряде недавних экспериментов химическое соединение усиливает гамма-квант без обмена зарядами или спинами. Тело представляет собой короткоживущий газ вне зависимости от предсказаний самосогласованной теоретической модели явления. Любое возмущение затухает, если экситон стохастично ускоряет внутримолекулярный экситон только в отсутствие тепло- и массообмена с окружающей средой.<br />\n<br />\nСиловое поле отражает экранированный сверхпроводник без обмена зарядами или спинами. Квантовое состояние, несмотря на некоторую вероятность коллапса, мгновенно восстанавливает осциллятор, как и предсказывает общая теория поля. Эксимер вращает коллапсирующий лептон так, как это могло бы происходить в полупроводнике с широкой запрещенной зоной. Сингулярность поглощает торсионный электрон, что лишний раз подтверждает правоту Эйнштейна.<br />\n<br />\nВещество, как того требуют законы термодинамики, испускает гравитационный гамма-квант, хотя этот факт нуждается в дальнейшей тщательной экспериментальной проверке. При облучении инфракрасным лазером темная материя синхронизует коллапсирующий электрон, однозначно свидетельствуя о неустойчивости процесса в целом.<br />\n&nbsp;</p>', 1257969600, 0);
INSERT INTO `sc_sa_article` VALUES(37, 3, 0, 'Ещё одна статья триро', '', '<p>а ввы аыв аыва&nbsp;</p>', NULL, 0);
INSERT INTO `sc_sa_article` VALUES(38, 3, 0, 'Статейка', '', '<p><img height="375" width="500" src="/files/image/IMG031-01.jpg" alt="" /></p>\r\n<p>s dgfdgfdgfdhg h fdfgfdg gfdgfdf &quot;gfdhfhfg&quot;</p>', NULL, 0);
INSERT INTO `sc_sa_article` VALUES(39, 2, 0, 'Ещё тут статья', '', '', NULL, 0);
INSERT INTO `sc_sa_article` VALUES(41, 4, 0, 'Ещё статья', '', 'првоарпловарплвап п ав пвапваоповарпоавп павповлфплатпоиегккш ммукфгтмукшмкпнфкуграуа в авриавп ав пва п ав пв', NULL, 0);
INSERT INTO `sc_sa_article` VALUES(67, 9, 0, 'статеечка', '', '<p>&nbsp;па впвапав павп ва</p>', 1284840000, 0);
INSERT INTO `sc_sa_article` VALUES(66, 9, 0, 'Ещё статейка', '', '', 1284667200, 0);
INSERT INTO `sc_sa_article` VALUES(61, 4, 0, 'опрорпопррарпарап', '', 'п о попоа', NULL, 0);

CREATE TABLE IF NOT EXISTS `sc_sa_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `sc_sa_theme` VALUES(1, 0, 'Тексты разделов', 0);
INSERT INTO `sc_sa_theme` VALUES(2, 0, 'ещё тексты', 0);
INSERT INTO `sc_sa_theme` VALUES(3, 1, 'Подраздел текстов', 0);
INSERT INTO `sc_sa_theme` VALUES(4, 1, 'Ещё подраздел текстов', 0);
INSERT INTO `sc_sa_theme` VALUES(9, 3, 'dsfdsfsd', 0);
