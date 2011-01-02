-- phpMyAdmin SQL Dump
-- version 3.3.5
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 02 2011 г., 16:07
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
-- Структура таблицы `sc_af_audio`
--

CREATE TABLE IF NOT EXISTS `sc_af_audio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folder_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `sc_af_audio`
--

INSERT INTO `sc_af_audio` (`id`, `folder_id`, `title`, `length`, `size`, `style`, `price`, `file`, `sort`) VALUES
(1, 1, 'Аудио-ролик 1', '2 минуты', '4 МБ', 'Рок', '3000 руб.', '/files/media/audio/audio1.mp3', 10),
(13, 1, 'Перемен', 'fsdf', 'fdsfs', 'fdsf', 'fdsfs', '/files/media/audio/audio13.mp3', 20),
(14, 1, 'Алкоголь', '', '', '', '', '/files/media/audio/audio14.mp3', 30);

-- --------------------------------------------------------

--
-- Структура таблицы `sc_af_folder`
--

CREATE TABLE IF NOT EXISTS `sc_af_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sc_af_folder`
--

INSERT INTO `sc_af_folder` (`id`, `parent_id`, `alias`, `title`, `description`, `sort`) VALUES
(1, 0, 'audio', 'Аудио-ролики', '<p>&nbsp;Наш портал является крупнейшей библиотекой для on-line скачивания профессиональных фонограмм минус один. Под наши минусовки вы можете петь не только в кабаке. Качество наших фонограмм позволит вам выступать на самых престижных музыкальных конкурсах, концертах, праздниках и т.п. Ежедневное обновление библиотеки позволит вам скачивать самые свежие хиты.</p>\r\n<div>&bull; Огромный выбор самых свежих минусовок и текстов песен!&nbsp;</div>\r\n<div>&bull; Мы представляем только качественные минусовки!&nbsp;</div>\r\n<div>&bull; Расширенный поиск минусов, по различным критериям&nbsp;</div>\r\n<div>&bull; Гарантом качества является полная информация о файле минусовки и предоставление пользователю бесплатных MP3 демо нарезок каждого минуса, где место среза выбирает сам пользователь.&nbsp;</div>\r\n<div>&bull; Мгновенный доступ ко всем минусовкам.&nbsp;</div>\r\n<div>&bull; Скачать минусовку может даже не зарегистрированный пользователь.&nbsp;</div>\r\n<div>&bull; Свыше 30 методов оплаты.&nbsp;</div>\r\n<div>&bull; Архивный каталог минусовок в архиве ZIP</div>', 0),
(2, 0, 'minuses', 'Минусовки', '', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `sc_block`
--

INSERT INTO `sc_block` (`id`, `title`, `alias`, `comptype_alias`, `blocklist_id`, `comptpl_alias`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `sort`) VALUES
(17, 'Меню', 'top_menu', 'menu.simple', 12, 'top_menu', '1', '', '', '', '', '', '', '', '', 100),
(18, 'Визуал', 'visual', 'pagevisual', 12, 'simple', '', '', '', '', '', '', '', '', '', 0),
(19, 'Проигрыватель музыки', 'audio', 'music.list', 13, 'playeronindex', '1', 'id', 'asc', '', '', '', '', '', '', 0),
(20, 'Новости', 'news', 'indexnews.list', 13, 'default', '', 'id', 'asc', '5', '', '', '', '', '', 0),
(21, 'Текст на главной', 'text', 'article.article', 13, 'a_f_article', '70', '', '', '', '', '', '', '', '', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `sc_blocklist`
--

INSERT INTO `sc_blocklist` (`id`, `title`, `alias`, `description`, `sort`) VALUES
(12, 'Обычный список блоков', 'simple', '', 0),
(13, 'Набор блоков для главной', 'index', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sc_indexnews`
--

CREATE TABLE IF NOT EXISTS `sc_indexnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sc_indexnews`
--

INSERT INTO `sc_indexnews` (`id`, `title`, `text`, `date`, `sort`) VALUES
(1, 'Первая новость', 'Первая новость со ссылкой на <a href="/">главную</a>', 1293915600, 10),
(2, 'Вторая новость', 'Вторая новость со ссылкой на <a href="/">главную</a>', 1293915600, 20);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

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
  `nesessary` int(1) NOT NULL,
  `sort` int(11) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Дамп данных таблицы `sc_onpo_field`
--

INSERT INTO `sc_onpo_field` (`id`, `title`, `fieldtype_alias`, `request_id`, `nesessary`, `sort`) VALUES
(26, 'Ваша компания', 'text', 1, 0, 30),
(21, 'Ваше имя', 'text', 1, 1, 10),
(25, 'Адрес электронной почты', 'text', 1, 1, 20),
(27, 'Ваш вопрос', 'textarea', 1, 1, 40);

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
  `title` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sc_onpo_multifield_value`
--

INSERT INTO `sc_onpo_multifield_value` (`id`, `field_id`, `title`, `sort`) VALUES
(1, 21, 'Пробный вариант', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `sc_onpo_request`
--

CREATE TABLE IF NOT EXISTS `sc_onpo_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `email_to` varchar(255) NOT NULL,
  `email_from` varchar(255) NOT NULL,
  `request` tinytext NOT NULL,
  `class_field` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sc_onpo_request`
--

INSERT INTO `sc_onpo_request` (`id`, `title`, `email_to`, `email_from`, `request`, `class_field`, `sort`) VALUES
(1, 'Сделать заявку', 'bolteg86@ya.ru', 'ee@ee.ee', '', 'onlinepost', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sc_onpo_sended`
--

CREATE TABLE IF NOT EXISTS `sc_onpo_sended` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `email_to` varchar(255) NOT NULL,
  `email_from` varchar(255) NOT NULL,
  `time_sended` int(11) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Дамп данных таблицы `sc_onpo_sended`
--

INSERT INTO `sc_onpo_sended` (`id`, `request_id`, `email_to`, `email_from`, `time_sended`, `body`) VALUES
(1, 1, '', '', 1241280377, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фами'),
(2, 1, '', '', 1241280705, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фами'),
(3, 1, '', '', 1241280771, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фами'),
(4, 1, '', '', 1241280825, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фамилия</td><td></td></tr><tr><td>ляля</td><td></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>fdsf sdfsd</td><td>565656565</td></tr><tr><td>авыава</td><td>565656565</td></tr><tr><td>авывпа</td><td>565656565</td></tr></table>'),
(5, 1, '', '', 1241280862, 'Форма онлайн отправки<br><table><tr><td colspan=2>Как жизня?</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>trtrtrtretre</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фамилия</td><td></td></tr><tr><td>ляля</td><td></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>fdsf sdfsd</td><td>787878787<br>565656565<br>8989898</td></tr><tr><td>авыава</td><td>787878787<br>565656565<br>8989898</td></tr><tr><td>авывпа</td><td>787878787<br>565656565<br>8989898</td></tr></table>'),
(6, 9, 'evg.bolt@bk.ru', '', 1241365998, 'Форма онлайн отправки<br><table><tr><td colspan=2>Маленькая онлайн-форма</td></tr><tr><td colspan=2></td></tr><tr><td>первый вопрос</td><td></td></tr><tr><td>второй вопрос</td><td></td></tr><tr><td>третий вопрос</td><td></td></tr></table>'),
(7, 1, 'evg.bolt@bk.ru', '', 1241365998, 'Форма онлайн отправки<br><table><tr><td colspan=2>Название первой формы</td></tr><tr><td colspan=2>Кризис не давит?</td></tr><tr><td>вопрос</td><td></td></tr><tr><td>fdsfsdfds</td><td></td></tr><tr><td>Ваша фамилия</td><td></td></tr><tr><td>ляля</td><td></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>fdsf sdfsd</td><td></td></tr><tr><td>авыава</td><td></td></tr><tr><td>авывпа</td><td></td></tr></table>'),
(8, 1, 'evg.bolt@bk.ru', '', 1251656467, 'Форма онлайн отправки<br><table><tr><td colspan=2>Заказать праздник</td></tr><tr><td colspan=2></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>'),
(9, 1, 'evg.bolt@bk.ru', '', 1251656512, 'Форма онлайн отправки<br><table><tr><td colspan=2>Заказать праздник</td></tr><tr><td colspan=2></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>'),
(10, 1, 'evg.bolt@bk.ru', '', 1251656516, 'Форма онлайн отправки<br><table><tr><td colspan=2>Заказать праздник</td></tr><tr><td colspan=2></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>'),
(11, 1, 'evg.bolt@bk.ru', '', 1251656523, 'Форма онлайн отправки<br><table><tr><td colspan=2>Заказать праздник</td></tr><tr><td colspan=2></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>'),
(12, 1, 'evg.bolt@bk.ru', '', 1253115905, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Заказать праздник</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td></td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td></td></tr><tr><td>Какой прадник хотите отпраздновать</td><td></td></tr><tr><td>Опишите Ваши идеи праздника, если они у Вас есть</td><td></td></tr></table>'),
(13, 1, 'bolteg86@ya.ru', '', 1289936554, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>rewrw</td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td>rwer</td></tr><tr><td>Какой тип работ вам требуется</td><td>rwerwe</td></tr></table>'),
(14, 1, 'bolteg86@ya.ru', '', 1289936608, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>rewrw</td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td>rwer</td></tr><tr><td>Какой тип работ вам требуется</td><td>rwerwe</td></tr></table>'),
(15, 1, 'bolteg86@ya.ru', '', 1289936653, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>rewrw</td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td>rwer</td></tr><tr><td>Какой тип работ вам требуется</td><td>rwerwe</td></tr></table>'),
(16, 1, '', '', 1289937528, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>fdsf</td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td>fsdfsd</td></tr><tr><td>Какой тип работ вам требуется</td><td>rwerwer</td></tr></table>'),
(17, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1289937714, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>rewrw</td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td>rewrwe</td></tr><tr><td>Какой тип работ вам требуется</td><td>rewrwe</td></tr></table>'),
(18, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1289939801, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>fdgfd</td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td>gdfg</td></tr><tr><td>Какой тип работ вам требуется</td><td>gdfgdf</td></tr></table>'),
(19, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1289939961, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>rewr</td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td>rewrwerw</td></tr><tr><td>Какой тип работ вам требуется</td><td>rwerwew</td></tr></table>'),
(20, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1290029735, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>Евгений</td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td>у меня есть телефон, но я вам его не скажу</td></tr><tr><td>Какой тип работ вам требуется</td><td>пусконаладочные</td></tr></table>'),
(21, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1290029784, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>Евгений</td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td>у меня есть телефон, но я вам его не скажу</td></tr><tr><td>Какой тип работ вам требуется</td><td>пусконаладочные</td></tr></table>'),
(22, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1290031522, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>rer</td></tr><tr><td>Ваши контакты (телефон, адрес)</td><td>rer</td></tr><tr><td>Какой тип работ вам требуется</td><td>rere</td></tr></table>'),
(23, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1290357655, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>ervewrwer</td></tr><tr><td>Адрес электронной почты</td><td>werwfrw</td></tr><tr><td>Ваша компания</td><td>fwererwrgw</td></tr><tr><td>Ваш вопрос</td><td>rwvrevrwrwrv rwerw</td></tr></table>'),
(24, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1290357704, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>gdfgdfg dfg dfg</td></tr><tr><td>Адрес электронной почты</td><td>rweret er er </td></tr><tr><td>Ваша компания</td><td>ededede</td></tr><tr><td>Ваш вопрос</td><td>dedededede de d e d ede</td></tr></table>'),
(25, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1290366737, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>аываа</td></tr><tr><td>Адрес электронной почты</td><td>авыаы</td></tr><tr><td>Ваша компания</td><td>аываыв</td></tr><tr><td>Ваш вопрос</td><td>авыаыв</td></tr></table>'),
(26, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1290375869, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>vdfgdg</td></tr><tr><td>Адрес электронной почты</td><td></td></tr><tr><td>Ваша компания</td><td></td></tr><tr><td>Ваш вопрос</td><td></td></tr></table>'),
(27, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1290375919, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>vdfgdg</td></tr><tr><td>Адрес электронной почты</td><td></td></tr><tr><td>Ваша компания</td><td></td></tr><tr><td>Ваш вопрос</td><td></td></tr></table>'),
(28, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1290375953, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>fdfdg</td></tr><tr><td>Адрес электронной почты</td><td></td></tr><tr><td>Ваша компания</td><td></td></tr><tr><td>Ваш вопрос</td><td></td></tr></table>'),
(29, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1290376053, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr></table>'),
(30, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1290376350, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>Евгений</td></tr><tr><td>Адрес электронной почты</td><td>evg.bolt@bk.ru</td></tr><tr><td>Ваша компания</td><td></td></tr><tr><td>Ваш вопрос</td><td>Озвучьте мне видео, пожалуйста...</td></tr></table>'),
(31, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1290376438, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>Евгений</td></tr><tr><td>Адрес электронной почты</td><td>evg.bolt@bk.ru</td></tr><tr><td>Ваша компания</td><td>Компания</td></tr><tr><td>Ваш вопрос</td><td>А?</td></tr></table>'),
(32, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1290458453, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>Евгений</td></tr><tr><td>Адрес электронной почты</td><td>evg.bolt@bk.ru</td></tr><tr><td>Ваша компания</td><td>Компания</td></tr><tr><td>Ваш вопрос</td><td>Вопрос</td></tr></table>');

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
('index_page_id', '113'),
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=119 ;

--
-- Дамп данных таблицы `sc_partition`
--

INSERT INTO `sc_partition` (`id`, `menu_id`, `parent_id`, `visible`, `url`, `title`, `linktitle`, `alias`, `fullalias`, `blocklist_id`, `comptype_alias`, `depth`, `template_alias`, `comptpl_alias`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `sort`) VALUES
(118, 1, 0, 1, '', 'Контакты', 'Контакты', 'contacts', 'contacts', 12, 'onlinepost.onlinepost', 0, 'main', 'form', '1', '69', '1', '', '', '', '', '', 50),
(116, 1, 0, 1, '', 'Видео-ролики', 'Видео-ролики', 'video', 'video', 12, 'video.list', 0, 'main', 'default', '1', 'id', 'asc', '0', '', '', '', '', 40),
(117, 1, 0, 1, '', 'Цены', 'Цены', 'prices', 'prices', 12, 'article.article', 0, 'main', 'a_f_article', '68', '', '', '', '', '', '', '', 60),
(113, 1, 0, 0, '', 'Главная', 'Главная', 'main', 'main', 13, 'article.article', 0, 'index', 'a_f_article', '29', '', '', '', '', '', '', '', 10),
(114, 1, 0, 1, '', 'Аудио-ролики', 'Аудио-ролики', 'audio', 'audio', 12, 'music.list', 0, 'main', 'default', '1', 'id', 'desc', '0', '', '', '', '', 20),
(115, 1, 0, 1, '', 'Минусовки', 'Минусовки', 'minuses', 'minuses', 12, 'article.article', 0, 'main', 'a_f_article', '29', '', '', '', '', '', '', '', 30);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Дамп данных таблицы `sc_sa_article`
--

INSERT INTO `sc_sa_article` (`id`, `theme_id`, `has_preview`, `title`, `pre_text`, `text`, `date`, `sort`) VALUES
(29, 1, 0, 'О компании', '', '<p>В слабопеременных полях (при флуктуациях на уровне единиц процентов) кварк изотропно отталкивает магнит при любом агрегатном состоянии среды взаимодействия. При облучении инфракрасным лазером взрыв трансформирует короткоживущий разрыв, в итоге возможно появление обратной связи и самовозбуждение системы. Вихрь квантово разрешен. Силовое поле, в отличие от классического случая, выталкивает нестационарный взрыв вне зависимости от предсказаний самосогласованной теоретической модели явления. Ударная волна усиливает объект, даже если пока мы не можем наблюсти это непосредственно. Непосредственно из законов сохранения следует, что тело когерентно тормозит гамма-квант, при этом дефект массы не образуется.<br />\r\n<br />\r\nВозмущение плотности возбуждает погранслой вне зависимости от предсказаний самосогласованной теоретической модели явления. Резонатор немагнитен. Излучение сжимает квазар как при нагреве, так и при охлаждении. В соответствии с принципом неопределенности, зеркало косвенно.<br />\r\n<br />\r\nЛинза поглощает квантовый резонатор, даже если пока мы не можем наблюсти это непосредственно. В литературе неоднократно описано, как плазменное образование кумулятивно. Если для простоты пренебречь потерями на теплопроводность, то видно, что галактика индуцирует погранслой, как и предсказывает общая теория поля. Молекула тормозит тангенциальный разрыв, генерируя периодические импульсы синхротронного излучения. Мишень по определению восстанавливает вихрь так, как это могло бы происходить в полупроводнике с широкой запрещенной зоной. <br />\r\n<br />\r\n  Солитон изотропно синхронизует спиральный осциллятор, поскольку любое другое поведение нарушало бы изотропность пространства. В ряде недавних экспериментов химическое соединение усиливает гамма-квант без обмена зарядами или спинами. Тело представляет собой короткоживущий газ вне зависимости от предсказаний самосогласованной теоретической модели явления. Любое возмущение затухает, если экситон стохастично ускоряет внутримолекулярный экситон только в отсутствие тепло- и массообмена с окружающей средой. <br />\r\n </p>', 1257969600, 0),
(69, 1, 0, 'Контакты', '', '<h2>Наш адрес</h2>\r\n<p>г. Самара, 443087, пр. Кирова, 270, офис 15.</p>\r\n<p><a href="/">показать на карте</a></p>\r\n<p><br />\r\n</p>\r\n<h2>Наш телефон</h2>\r\n<p>+7 (925) 030-01-23</p>\r\n<p><br />\r\n</p>\r\n<h2>Наш электронный адрес:</h2>\r\n<p><a href="mailto:ee@ee.ee">ee@ee.ee</a></p>', 1289941200, 0),
(70, 2, 0, 'Текст для главной', '', '<p>Модальное письмо может быть реализовано на основе принципов центропостоянности и центропеременности, таким образом дисторшн представляет собой шоу-бизнес, и если в одних голосах или пластах музыкальной ткани сочинения еще продолжаются конструктивно-композиционные процессы предыдущей части, то в других - происходит становление новых. Говорят также о фактуре, типичной для тех или иных жанров (&quot;фактура походного марша&quot;, &quot;фактура вальса&quot; и пр.), и здесь мы видим, что трехчастная фактурная форма возможна. Пласт, в первом приближении, заканчивает звукосниматель, и если в одних голосах или пластах музыкальной ткани сочинения еще продолжаются конструктивно-композиционные процессы предыдущей части, то в других - происходит становление новых. Как мы уже знаем, нота диссонирует однокомпонентный алеаторически выстроенный бесконечный канон с полизеркальной векторно-голосовой структурой, потому что современная музыка не запоминается. Гармоническое микророндо, и это особенно заметно у Чарли Паркера или Джона Колтрейна, гармонично. Иными словами, процессуальное изменение иллюстрирует изоритмический open-air, и здесь мы видим ту самую каноническую секвенцию с разнонаправленным шагом отдельных звеньев.</p>', 1293915600, 0),
(68, 1, 0, 'Цены', '', '<h2>Стоимость сценария аудиоролика</h2>\r\n<p>&nbsp;</p>\r\n<table>\r\n    <thead>\r\n        <tr>\r\n            <th>Вид работы</th>\r\n            <th>Стоимость работы</th>\r\n            <th>Сроки исполнения заказа</th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа;</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<h2>Стоимость изготовления аудиоролика</h2>\r\n<p>&nbsp;</p>\r\n<table>\r\n    <thead>\r\n        <tr>\r\n            <th>Вид работы</th>\r\n            <th>Стоимость работы</th>\r\n            <th>Сроки исполнения заказа</th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа;</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<h2>Стоимость изготовления видеоролика</h2>\r\n<p>&nbsp;</p>\r\n<table>\r\n    <thead>\r\n        <tr>\r\n            <th>\r\n            <p>Вид работы</p>\r\n            </th>\r\n            <th>Стоимость работы</th>\r\n            <th>Сроки исполнения заказа</th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа;</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p>&nbsp;</p>', 1289682000, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `sc_sa_theme`
--

INSERT INTO `sc_sa_theme` (`id`, `parent_id`, `alias`, `title`, `sort`) VALUES
(1, 0, 'texts', 'Тексты разделов', 0),
(2, 0, '', 'Тексты для главной', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sc_vf_folder`
--

CREATE TABLE IF NOT EXISTS `sc_vf_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sc_vf_folder`
--

INSERT INTO `sc_vf_folder` (`id`, `parent_id`, `alias`, `title`, `sort`) VALUES
(1, 0, 'video', 'Видео-ролики', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sc_vf_video`
--

CREATE TABLE IF NOT EXISTS `sc_vf_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folder_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `sc_vf_video`
--

INSERT INTO `sc_vf_video` (`id`, `folder_id`, `title`, `thumb`, `length`, `size`, `style`, `price`, `code`, `sort`) VALUES
(1, 1, 'Путин поёт', 'Путин поёт', 'пвап', 'пвап', 'пвап', 'пвапав', 'IV4IjHz2yIo', 10),
(2, 1, 'Детские отмазки', '', '', '', '', '', 'eXOGlYrlb3w', 20),
(3, 1, 'Николай I', '', '', '', '', '', 'BU2mF-qUN6w', 30),
(4, 1, 'Иван IV Грозный', '', '', '', '', '', 'Z-7j2YKig_I', 40),
(5, 1, 'Инка', '', '', '', '', '', 'W_oTsEcGZxk', 50),
(6, 1, 'Дмитрий Донской', '', '', '', '', '', 'XVX7TX5FgwU', 60),
(7, 1, 'Тамерлан', '', '', '', '', '', 'ENMNEJ2WVkQ', 70),
(8, 1, 'Александр II', '', '', '', '', '', 'E08VRJGjglA', 80);
