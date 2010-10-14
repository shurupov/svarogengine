-- phpMyAdmin SQL Dump
-- version 3.3.5
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 14 2010 г., 23:33
-- Версия сервера: 5.1.41
-- Версия PHP: 5.3.2-1ubuntu4.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `svacms2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sc_admin_face`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Дамп данных таблицы `sc_admin_face`
--

INSERT INTO `sc_admin_face` (`id`, `alias`, `classalias`, `title`, `description`, `visible`, `template`) VALUES
(1, 'list', 'article', 'Список статей', 'Список статей', 1, 'list.php'),
(2, 'edit_article', 'article', 'Редактировать статью', 'Редактировать статью', 0, 'edit_article.php'),
(3, 'add_article', 'article', 'Добавить статью', 'Добавить статью', 1, 'edit_article.php'),
(4, 'del_article', 'article', 'Удаление статьи', 'Удаление статьи', 0, 'list.php'),
(5, 'edit_theme', 'article', 'Редактировать тему статьи', 'Редактировать тему статьи', 0, 'edit_theme.php'),
(6, 'add_theme', 'article', 'Добавить раздел статей', 'Добавить раздел статей', 1, 'edit_theme.php'),
(7, 'del_theme', 'article', 'Удаление раздела статей', 'Удаление раздела статей', 0, 'list.php'),
(8, 'menu_list', 'menu', 'Список меню', 'Список меню', 1, 'menu_list.php'),
(9, 'part_list', 'menu', 'Список разделов', 'Список разделов', 0, 'partition_list.php'),
(10, 'menu_edit', 'menu', 'Редактировать меню', 'Редактировать меню', 0, 'menu_edit.php'),
(11, 'menu_add', 'menu', 'Добавить меню', 'Добавить меню', 1, 'menu_edit.php'),
(12, 'menu_delete', 'menu', 'Удалить меню', 'Удалить меню', 0, 'menu_list.php'),
(13, 'del_part', 'menu', 'Удаление раздела', 'Удаление раздела', 0, 'partition_list.php'),
(14, 'add_part', 'menu', 'Добавить раздел', 'Добавить раздел', 1, 'partition_list.php'),
(15, 'list', 'blockset', 'Список наборов блоков', 'Список наборов блоков', 1, 'list.php'),
(16, 'edit_set', 'blockset', 'Редактирование блока', 'Редактирование блока', 0, 'edit_set.php'),
(17, 'add_set', 'blockset', 'Добавление набора блоков', 'Добавление набора блоков', 1, 'edit_set.php'),
(18, 'del_set', 'blockset', 'Удалить набор', 'Удалить набор', 0, 'list.php'),
(19, 'edit_block', 'blockset', 'Редактирование блока', 'Редактирование блока', 0, 'edit_block.php'),
(20, 'del_block', 'blockset', 'Удаление блока', 'Удаление блока', 0, 'edit_set.php'),
(21, 'edit_options', 'option', 'Редактировать настройки', 'Редактировать настройки сайта', 1, 'edit_options.php'),
(22, 'show_userlist', 'user_adm', 'Список пользователей', 'Список пользователей админки', 1, 'list.php'),
(23, 'user_del', 'user_adm', 'Удаление пользователя', 'Удаление пользователя', 0, 'list.php'),
(24, 'user_edit', 'user_adm', 'Редактирование пользователя', 'Редактирование пользователя', 0, 'edit_user.php'),
(25, 'user_add', 'user_adm', 'Добавить пользователя', 'Добавить пользователя', 1, 'edit_user.php'),
(26, 'usergroup_list', 'user_adm', 'Список групп пользователей', 'Список групп пользователей', 1, 'group_list.php'),
(27, 'usergroup_del', 'user_adm', 'Удалить группу', 'Удалить группу пользователей', 0, 'group_list.php'),
(28, 'usergroup_edit', 'user_adm', 'Редактировать группу', 'Редактировать группу пользователей', 0, 'group_edit.php'),
(29, 'usergroup_add', 'user_adm', 'Добавить группу', 'Добавить группу пользователей', 1, 'group_edit.php'),
(31, 'request_list', 'onlinepost', 'Список форм для отправки', 'Список форм для отправки', 1, 'request_list.php'),
(32, 'delete_request', 'onlinepost', 'Удаление онлайн-формы отправки', 'Удаление онлайн-формы отправки', 0, 'request_list.php'),
(33, 'edit_request', 'onlinepost', 'Редактировать форму', 'Редактировать форму', 0, 'edit_request.php'),
(34, 'new_request', 'onlinepost', 'Добавить форму', 'Добавить форму', 1, 'edit_request.php'),
(35, 'add_block', 'blockset', 'Добавить блок', 'Добавить блок', 0, 'edit_block.php');

-- --------------------------------------------------------

--
-- Структура таблицы `sc_admin_rights_face`
--

CREATE TABLE IF NOT EXISTS `sc_admin_rights_face` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup_id` int(11) NOT NULL,
  `adminface_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Дамп данных таблицы `sc_admin_rights_face`
--

INSERT INTO `sc_admin_rights_face` (`id`, `usergroup_id`, `adminface_id`) VALUES
(23, 2, 28),
(22, 2, 27),
(17, 4, 22),
(16, 4, 21),
(21, 2, 11),
(20, 2, 10),
(19, 2, 9),
(18, 2, 8),
(24, 2, 29);

-- --------------------------------------------------------

--
-- Структура таблицы `sc_admin_user`
--

CREATE TABLE IF NOT EXISTS `sc_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `sc_admin_user`
--

INSERT INTO `sc_admin_user` (`id`, `username`, `password`, `name`, `email`, `position`, `usergroup_id`) VALUES
(1, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', '', '', '', 1),
(2, 'moder1', '1a1dc91c907325c69271ddf0c944bc72', '', '', '', 2),
(3, 'moder2', '1a1dc91c907325c69271ddf0c944bc72', '', '', '', 3),
(4, 'moder3', '1a1dc91c907325c69271ddf0c944bc72', '', '', '', 4),
(5, 'user2', '1a1dc91c907325c69271ddf0c944bc72', '', '', '', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `sc_admin_usergroup`
--

CREATE TABLE IF NOT EXISTS `sc_admin_usergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `rights` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `sc_admin_usergroup`
--

INSERT INTO `sc_admin_usergroup` (`id`, `title`, `description`, `rights`) VALUES
(1, 'Администраторы', 'Им доступно всё!', 'all'),
(2, 'moderator', '', 'some'),
(3, 'moderator2', '', 'some'),
(4, 'moderator3', '', 'some'),
(5, 'users1', '', 'none');

-- --------------------------------------------------------

--
-- Структура таблицы `sc_admin_usergroup_rights`
--

CREATE TABLE IF NOT EXISTS `sc_admin_usergroup_rights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup_id` int(11) NOT NULL,
  `panel_alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `sc_admin_usergroup_rights`
--

INSERT INTO `sc_admin_usergroup_rights` (`id`, `usergroup_id`, `panel_alias`) VALUES
(1, 2, 'structure'),
(2, 3, 'dataedit'),
(3, 4, 'dataedit'),
(4, 4, 'structure');

-- --------------------------------------------------------

--
-- Структура таблицы `sc_block`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `sc_block`
--

INSERT INTO `sc_block` (`id`, `title`, `alias`, `comptype_alias`, `blocklist_id`, `comptpl_alias`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `sort`) VALUES
(17, 'Меню', 'top_menu', 'menu.simple', 12, 'top_menu', '1', '', '', '', '', '', '', '', '', 100);

-- --------------------------------------------------------

--
-- Структура таблицы `sc_blocklist`
--

CREATE TABLE IF NOT EXISTS `sc_blocklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `sc_blocklist`
--

INSERT INTO `sc_blocklist` (`id`, `title`, `alias`, `description`, `sort`) VALUES
(12, 'Обычный список блоков', 'simple', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sc_menu`
--

CREATE TABLE IF NOT EXISTS `sc_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sc_menu`
--

INSERT INTO `sc_menu` (`id`, `alias`, `title`, `sort`) VALUES
(1, 'main_menu', 'Главное меню', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sc_onpo_field`
--

CREATE TABLE IF NOT EXISTS `sc_onpo_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `fieldtype_alias` varchar(20) NOT NULL,
  `request_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Дамп данных таблицы `sc_onpo_field`
--

INSERT INTO `sc_onpo_field` (`id`, `title`, `fieldtype_alias`, `request_id`, `order`) VALUES
(24, 'Какой тип работ вам требуется', 'textarea', 1, 40),
(21, 'Ваше имя', 'text', 1, 10),
(22, 'Ваши контакты (телефон, адрес)', 'textarea', 1, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `sc_onpo_fieldtype`
--

CREATE TABLE IF NOT EXISTS `sc_onpo_fieldtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `alias` varchar(20) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `sc_onpo_fieldtype`
--

INSERT INTO `sc_onpo_fieldtype` (`id`, `title`, `alias`) VALUES
(1, 'Однострочный текст', 'text'),
(2, 'Многострочный текст', 'textarea'),
(3, 'Выпадающий список', 'select'),
(4, 'Точки выбора (radiobutton)', 'radiobutton'),
(5, 'Галочка', 'checkbox'),
(6, 'Многострочный множественный выбор', 'multiselect');

-- --------------------------------------------------------

--
-- Структура таблицы `sc_onpo_multifield_value`
--

CREATE TABLE IF NOT EXISTS `sc_onpo_multifield_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `value` varchar(100) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=531 ;

--
-- Дамп данных таблицы `sc_onpo_multifield_value`
--

INSERT INTO `sc_onpo_multifield_value` (`id`, `field_id`, `value`) VALUES
(350, 17, 'павпв'),
(334, 12, '8585858'),
(333, 12, '123456789'),
(338, 13, '65755756'),
(337, 13, '567565756'),
(349, 17, '432423'),
(348, 17, 'уцйуц'),
(340, 5, '3333333333333'),
(339, 5, '444444444'),
(346, 15, 'пвапва'),
(345, 15, 'павппав'),
(344, 15, 'павппав'),
(343, 14, '8989898'),
(347, 17, 'екеке'),
(342, 14, '787878787'),
(341, 14, '565656565'),
(335, 12, 'ответ'),
(336, 12, 'ответ2'),
(377, 20, 'третий вариант'),
(376, 20, 'первый вариант ответа'),
(375, 20, 'второй вариант'),
(530, 0, ''),
(529, 0, ''),
(528, 0, ''),
(527, 0, ''),
(526, 0, ''),
(513, 21, ''),
(512, 21, ''),
(511, 21, ''),
(510, 21, ''),
(509, 21, ''),
(508, 21, ''),
(519, 22, ''),
(518, 22, ''),
(517, 22, ''),
(516, 22, ''),
(515, 22, ''),
(514, 22, ''),
(496, 23, ''),
(495, 23, ''),
(494, 23, ''),
(493, 23, ''),
(492, 23, ''),
(491, 23, ''),
(525, 24, ''),
(524, 24, ''),
(523, 24, ''),
(522, 24, ''),
(521, 24, ''),
(520, 24, '');

-- --------------------------------------------------------

--
-- Структура таблицы `sc_onpo_request`
--

CREATE TABLE IF NOT EXISTS `sc_onpo_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `request` tinytext NOT NULL,
  `class_field` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sc_onpo_request`
--

INSERT INTO `sc_onpo_request` (`id`, `title`, `email`, `request`, `class_field`) VALUES
(1, 'Сделать заявку', 'evg.bolt@bk.ru', '', 'onlinepost');

-- --------------------------------------------------------

--
-- Структура таблицы `sc_onpo_sended`
--

CREATE TABLE IF NOT EXISTS `sc_onpo_sended` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `time_sended` int(11) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `sc_onpo_sended`
--

INSERT INTO `sc_onpo_sended` (`id`, `request_id`, `email`, `time_sended`, `body`) VALUES
(1, 1, '', 1241280377, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фами'),
(2, 1, '', 1241280705, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фами'),
(3, 1, '', 1241280771, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фами'),
(4, 1, '', 1241280825, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фамилия</td><td></td></tr><tr><td>ляля</td><td></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>fdsf sdfsd</td><td>565656565</td></tr><tr><td>авыава</td><td>565656565</td></tr><tr><td>авывпа</td><td>565656565</td></tr></table>'),
(5, 1, '', 1241280862, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фамилия</td><td></td></tr><tr><td>ляля</td><td></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>fdsf sdfsd</td><td>787878787<br>565656565<br>8989898</td></tr><tr><td>авыава</td><td>787878787<br>565656565<br>8989898</td></tr><tr><td>авывпа</td><td>787878787<br>565656565<br>8989898</td></tr></table>'),
(6, 9, 'evg.bolt@bk.ru', 1241365998, 'Форма онлайн отправки<br><table><tr><td colspan=2>Маленькая онлайн-форма</td></tr><tr><td colspan=2></td></tr><tr><td>первый вопрос</td><td></td></tr><tr><td>второй вопрос</td><td></td></tr><tr><td>третий вопрос</td><td></td></tr></table>'),
(7, 1, 'evg.bolt@bk.ru', 1241365998, 'Форма онлайн отправки<br><table><tr><td colspan=2>Название первой формы</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>вопрос</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фамилия</td><td></td></tr><tr><td>ляля</td><td></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>fdsf sdfsd</td><td></td></tr><tr><td>авыава</td><td></td></tr><tr><td>авывпа</td><td></td></tr></table>'),
(8, 1, 'evg.bolt@bk.ru', 1251656467, 'Форма онлайн отправки<br><table><tr><td colspan=2>Заказать праздник</td></tr><tr><td colspan=2></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>'),
(9, 1, 'evg.bolt@bk.ru', 1251656512, 'Форма онлайн отправки<br><table><tr><td colspan=2>Заказать праздник</td></tr><tr><td colspan=2></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>'),
(10, 1, 'evg.bolt@bk.ru', 1251656516, 'Форма онлайн отправки<br><table><tr><td colspan=2>Заказать праздник</td></tr><tr><td colspan=2></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>'),
(11, 1, 'evg.bolt@bk.ru', 1251656523, 'Форма онлайн отправки<br><table><tr><td colspan=2>Заказать праздник</td></tr><tr><td colspan=2></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>'),
(12, 1, 'evg.bolt@bk.ru', 1253115905, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Заказать праздник</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>');

-- --------------------------------------------------------

--
-- Структура таблицы `sc_option`
--

CREATE TABLE IF NOT EXISTS `sc_option` (
  `param_name` varchar(255) NOT NULL,
  `param_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sc_option`
--

INSERT INTO `sc_option` (`param_name`, `param_value`) VALUES
('index_page_id', '92'),
('default_template_id', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `sc_partition`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- Дамп данных таблицы `sc_partition`
--

INSERT INTO `sc_partition` (`id`, `menu_id`, `parent_id`, `visible`, `url`, `title`, `linktitle`, `alias`, `fullalias`, `blocklist_id`, `comptype_alias`, `depth`, `template_alias`, `comptpl_alias`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `sort`) VALUES
(94, 1, 0, 1, '', 'Контакты', 'Контакты', 'contacts', 'contacts', 12, 'article.article', 1, 'main', 'a_f_article', '38', '', '', '', '', '', '', 'date', 0),
(92, 1, 0, 1, '', 'Прайс-лист', 'Цены', 'price', 'price', 12, 'article.list', 1, 'main', 'a_f_articlelist', '4', 'id', 'asc', '5', '', '', '', '', 0),
(93, 1, 0, 0, '', 'Заказать', 'Заказать', 'order', 'order', 12, 'onlinepost.onlinepost', 1, 'main', 'form', '1', '', '', '', '', '', '', '', 0),
(111, 1, 0, 1, '', 'Ещё раздел', 'Ещё раздел', 'else', 'else', 12, 'article.list', 0, 'main', 'a_f_articlelist', '1', 'id', 'asc', '5', '', '', '', '', 0),
(110, 1, 0, 1, '', 'О компании', 'О компании', 'about', 'about', 12, 'article.article', 0, 'main', 'a_f_article', '29', '', '', '', '', '', '', 'id', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sc_sa_article`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Дамп данных таблицы `sc_sa_article`
--

INSERT INTO `sc_sa_article` (`id`, `theme_id`, `has_preview`, `title`, `pre_text`, `text`, `date`, `sort`) VALUES
(29, 1, 0, 'О компании', '', '<p>В слабопеременных полях (при флуктуациях на уровне единиц процентов) кварк изотропно отталкивает магнит при любом агрегатном состоянии среды взаимодействия. При облучении инфракрасным лазером взрыв трансформирует короткоживущий разрыв, в итоге возможно появление обратной связи и самовозбуждение системы. Вихрь квантово разрешен. Силовое поле, в отличие от классического случая, выталкивает нестационарный взрыв вне зависимости от предсказаний самосогласованной теоретической модели явления. Ударная волна усиливает объект, даже если пока мы не можем наблюсти это непосредственно. Непосредственно из законов сохранения следует, что тело когерентно тормозит гамма-квант, при этом дефект массы не образуется.<br />\r\n<br />\r\nВозмущение плотности возбуждает погранслой вне зависимости от предсказаний самосогласованной теоретической модели явления. Резонатор немагнитен. Излучение сжимает квазар как при нагреве, так и при охлаждении. В соответствии с принципом неопределенности, зеркало косвенно.<br />\r\n<br />\r\nЛинза поглощает квантовый резонатор, даже если пока мы не можем наблюсти это непосредственно. В литературе неоднократно описано, как плазменное образование кумулятивно. Если для простоты пренебречь потерями на теплопроводность, то видно, что галактика индуцирует погранслой, как и предсказывает общая теория поля. Молекула тормозит тангенциальный разрыв, генерируя периодические импульсы синхротронного излучения. Мишень по определению восстанавливает вихрь так, как это могло бы происходить в полупроводнике с широкой запрещенной зоной. <br />\r\n<br />\r\n  Солитон изотропно синхронизует спиральный осциллятор, поскольку любое другое поведение нарушало бы изотропность пространства. В ряде недавних экспериментов химическое соединение усиливает гамма-квант без обмена зарядами или спинами. Тело представляет собой короткоживущий газ вне зависимости от предсказаний самосогласованной теоретической модели явления. Любое возмущение затухает, если экситон стохастично ускоряет внутримолекулярный экситон только в отсутствие тепло- и массообмена с окружающей средой. <br />\r\n </p>', 1257969600, 0),
(36, 1, 0, 'Контакты', '', '<p>Возмущение плотности возбуждает погранслой вне зависимости от предсказаний самосогласованной теоретической модели явления. Резонатор немагнитен. Излучение сжимает квазар как при нагреве, так и при охлаждении. В соответствии с принципом неопределенности, зеркало косвенно.<br />\n<br />\nЛинза поглощает квантовый резонатор, даже если пока мы не можем наблюсти это непосредственно. В литературе неоднократно описано, как плазменное образование кумулятивно. Если для простоты пренебречь потерями на теплопроводность, то видно, что галактика индуцирует погранслой, как и предсказывает общая теория поля. Молекула тормозит тангенциальный разрыв, генерируя периодические импульсы синхротронного излучения. Мишень по определению восстанавливает вихрь так, как это могло бы происходить в полупроводнике с широкой запрещенной зоной.<br />\n<br />\nСолитон изотропно синхронизует спиральный осциллятор, поскольку любое другое поведение нарушало бы изотропность пространства. В ряде недавних экспериментов химическое соединение усиливает гамма-квант без обмена зарядами или спинами. Тело представляет собой короткоживущий газ вне зависимости от предсказаний самосогласованной теоретической модели явления. Любое возмущение затухает, если экситон стохастично ускоряет внутримолекулярный экситон только в отсутствие тепло- и массообмена с окружающей средой.<br />\n<br />\nСиловое поле отражает экранированный сверхпроводник без обмена зарядами или спинами. Квантовое состояние, несмотря на некоторую вероятность коллапса, мгновенно восстанавливает осциллятор, как и предсказывает общая теория поля. Эксимер вращает коллапсирующий лептон так, как это могло бы происходить в полупроводнике с широкой запрещенной зоной. Сингулярность поглощает торсионный электрон, что лишний раз подтверждает правоту Эйнштейна.<br />\n<br />\nВещество, как того требуют законы термодинамики, испускает гравитационный гамма-квант, хотя этот факт нуждается в дальнейшей тщательной экспериментальной проверке. При облучении инфракрасным лазером темная материя синхронизует коллапсирующий электрон, однозначно свидетельствуя о неустойчивости процесса в целом.<br />\n&nbsp;</p>', 1257969600, 0),
(37, 3, 0, 'Ещё одна статья триро', '', '<p>а ввы аыв аыва&nbsp;</p>', NULL, 0),
(38, 3, 0, 'Статейка', '', '<p><img height="375" width="500" src="/files/image/IMG031-01.jpg" alt="" /></p>\r\n<p>s dgfdgfdgfdhg h fdfgfdg gfdgfdf &quot;gfdhfhfg&quot;</p>', NULL, 0),
(39, 2, 0, 'Ещё тут статья', '', '', NULL, 0),
(41, 4, 0, 'Ещё статья', '', 'првоарпловарплвап п ав пвапваоповарпоавп павповлфплатпоиегккш ммукфгтмукшмкпнфкуграуа в авриавп ав пва п ав пв', NULL, 0),
(67, 9, 0, 'статеечка', '', '<p>&nbsp;па впвапав павп ва</p>', 1284840000, 0),
(66, 9, 0, 'Ещё статейка', '', '', 1284667200, 0),
(61, 4, 0, 'опрорпопррарпарап', '', 'п о попоа', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sc_sa_theme`
--

CREATE TABLE IF NOT EXISTS `sc_sa_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `sc_sa_theme`
--

INSERT INTO `sc_sa_theme` (`id`, `parent_id`, `alias`, `title`, `sort`) VALUES
(1, 0, 'texts', 'Тексты разделов', 0),
(2, 0, '', 'ещё тексты', 0),
(3, 1, '', 'Подраздел текстов', 0),
(4, 1, 'else', 'Ещё подраздел текстов', 0),
(9, 3, 'dsfdsfsd', 'dsfdsfsd', 0);
