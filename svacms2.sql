-- phpMyAdmin SQL Dump
-- version 3.3.5
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 22 2011 г., 21:46
-- Версия сервера: 5.1.49
-- Версия PHP: 5.3.3-1ubuntu9.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `elfoff_net`
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Дамп данных таблицы `sc_af_audio`
--

INSERT INTO `sc_af_audio` (`id`, `folder_id`, `title`, `length`, `size`, `style`, `price`, `file`, `sort`) VALUES
(37, 1, 'Спутниковые Телесистемы', '10 сек', '', '', '', '/files/media/audio/audio37.mp3', 0),
(38, 1, 'Запчасти', '10 сек', '', '', '', '/files/media/audio/audio38.mp3', 0),
(39, 1, 'Магазин Техники', '10 сек', '', '', '', '/files/media/audio/audio39.mp3', 0),
(56, 2, 'france', '', '', '', '', '/files/media/audio/audio56.mp3', 0),
(27, 1, 'Пассаж', '10 cek', '', '', '', '/files/media/audio/audio27.mp3', 0),
(28, 1, 'Билеты с доставкой', '20 сек', '', '', '', '/files/media/audio/audio28.mp3', 0),
(44, 2, 'Минус', '', '', 'Реп Минус', '', '/files/media/audio/audio44.mp3', 0),
(40, 1, 'Колор', '10 сек', '', '', '', '/files/media/audio/audio40.mp3', 0),
(41, 1, 'Центр Инструмента', '15 сек', '', '', '', '/files/media/audio/audio41.mp3', 0),
(42, 1, 'Стоматология', '15 сек', '', '', '', '/files/media/audio/audio42.mp3', 0),
(43, 1, 'Оконные Технологии', '10 сек', '', '', '', '/files/media/audio/audio43.mp3', 0),
(45, 2, 'ElenaDayatakaya mp3', '', '', '', '', '/files/media/audio/audio45.mp3', 0),
(57, 2, 'gorod obezyan', '', '', '', '', '/files/media/audio/audio57.mp3', 0),
(59, 2, 'imperial', '', '', '', '', '/files/media/audio/audio59.mp3', 0),
(60, 2, 'karim', '', '', '', '', '/files/media/audio/audio60.mp3', 0),
(61, 2, 'karim new', '', '', '', '', '/files/media/audio/audio61.mp3', 0),
(62, 2, 'minusss', '', '', '', '', '/files/media/audio/audio62.mp3', 0),
(63, 2, 'po gorodu idu ya', '', '', '', '', '/files/media/audio/audio63.mp3', 0),
(64, 2, 'repitna bit', '', '', '', '', '/files/media/audio/audio64.mp3', 0),
(65, 2, 'skazka', '', '', '', '', '/files/media/audio/audio65.mp3', 0),
(66, 2, 'zlo liric', '', '', '', '', '/files/media/audio/audio66.mp3', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `sc_af_folder`
--

INSERT INTO `sc_af_folder` (`id`, `parent_id`, `alias`, `title`, `description`, `sort`) VALUES
(1, 0, 'audio', 'Аудио-ролики', '<p style=\\"\\"><big>производство рекламных роликов и озвучивание рекламы - очень увлекательное занятие. эфир в наше время удовольствие не из дешевых, и потому, приходится в 20 секунд отведенного времени, а то и&nbsp; меньше, запаковать самодостаточную идею. чтоб она еще и распаковывалась в голове потенциального клиента при стечении определенных условий здесь и сейчас. нужно создать своего рода созревшую карму )) посадить семя на возделаную землю и ждать урожая. пакетные данные одним словом. задача не из легчайших, потому что критерием оценки результата является не количественный, а качественный аспект результата умственных и физических&nbsp; манипуляций над проэктом. </big></p>\r\n<p style=\\"\\"><big>рекламному ролику тоже можно добавить глянца, гламурчика</big>, романтики. все как у взрослых .<big>нужно только постараться выдержать определенный баланс, золотую середину, во всем.&nbsp; чтоб рекламный ролик не терял </big><big><del>коммерческой жилки</del>, своего &quot;рекламного&quot; характера.&nbsp;&nbsp; но так же не мало важно пресекать в некоторых случах создание очередной &quot;базарной кричали&quot;. приятного от прослушивания чересчур нарочитого и торчащего рекламного сообщения мало, такими же тонами будет окрашено&nbsp; отношение потребителя к рекламируемому товару.<br />\r\n</big></p>\r\n<p style=\\"\\"><big>космонавты отдыхают в общем...&nbsp; <br />\r\nя встречался с очень крутыми, с художественной точки зрения, по содержанию роликами, но спустя короткое время не мог вспомнить, о чем речь...ради чего все это? <br />\r\n<br />\r\nздесь же хочу показать некоторые примеры реализованных нами рекламных роликов.</big><big> сознаю, что конечно не фонтан, зато есть куда расти. во многих из представленных роликов использовал свой голос. практически полная свобода действий </big><big>на поле боя, на свободную тему так сказать. когда нужно сделать рекламу определенного типа товара или услуги, а у рекламного агенства нет идей, или куча других забот, и со штурмом как то креативщики не соберутся. показать заказчику что работа кипит важно! в лучшем случае показывают ему видео и какая то концепция. все гуд...<br />\r\n<br />\r\nвсем всё нравится<br />\r\nтеперь нужен звук<br />\r\nначинается самое интересное</big><big>...<br />\r\n</big></p>\r\n<p style=\\"\\">&nbsp;</p>\r\n<pre style=\\"\\"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;<strong>эльфов нет</strong>&quot; - <strong>естественно</strong></em></pre>\r\n<p>&nbsp;</p>', 0),
(2, 0, 'minuses', 'Минусовки', '<p>&nbsp;&nbsp;</p>\n<p>Выбираем минус. Если ничего не приглянулось, можете воспользоваться формой обратной связи или же телефончиком. Там можно будет обкашлять всю тему&nbsp; и что то придумать поинтереснее, что более подходит к вашей прическе.</p>\n<p>можно воспользоваться услугами ICQ:</p>\n<p>445-162-573</p>\n<p><strong>elfoff</strong></p>', 0),
(6, 0, '', 'Дикторы', '', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `sc_block`
--

INSERT INTO `sc_block` (`id`, `title`, `alias`, `comptype_alias`, `blocklist_id`, `comptpl_alias`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `sort`) VALUES
(17, 'Меню', 'top_menu', 'menu.simple', 12, 'top_menu', '1', '', '', '', '', '', '', '', '', 100),
(19, 'Проигрыватель музыки', 'audio', 'music.list', 13, 'playeronindex', '1', 'sort', 'asc', '0', '', '', '', '', '', 0),
(20, 'Новости', 'news', 'indexnews.list', 13, 'default', '', 'id', 'asc', '5', '', '', '', '', '', 0),
(21, 'Текст на главной', 'text', 'article.article', 13, 'a_f_article', '70', '', '', '', '', '', '', '', '', 0),
(22, 'Меню', 'top_menu', 'menu.simple', 13, 'top_menu', '1', '', '', '', '', '', '', '', '', 0),
(23, 'Текст на главной сверху', 'top_text', 'article.article', 13, 'a_f_article', '71', '', '', '', '', '', '', '', '', 0);

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
(1, 'Первая новость', '', 1298149200, 10);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sc_menu`
--

INSERT INTO `sc_menu` (`id`, `alias`, `title`, `sort`) VALUES
(1, 'main_menu', 'Главное меню', 0),
(0, 'empty', 'Разделы не в меню', 0);

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
(1, 'Сделать заявку', 'studio@elfoff.net', 'elfoff.net', '', 'onlinepost', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

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
(32, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1290458453, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>Евгений</td></tr><tr><td>Адрес электронной почты</td><td>evg.bolt@bk.ru</td></tr><tr><td>Ваша компания</td><td>Компания</td></tr><tr><td>Ваш вопрос</td><td>Вопрос</td></tr></table>'),
(33, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1294864730, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>эльвин</td></tr><tr><td>Адрес электронной почты</td><td>fokenefo@ramber.ru</td></tr><tr><td>Ваша компания</td><td>studio</td></tr><tr><td>Ваш вопрос</td><td>привет чел</td></tr></table>'),
(34, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1294866040, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>эльвин</td></tr><tr><td>Адрес электронной почты</td><td>fokenefo@ramber.ru</td></tr><tr><td>Ваша компания</td><td>studio</td></tr><tr><td>Ваш вопрос</td><td>привет чел</td></tr></table>'),
(35, 1, 'bolteg86@ya.ru', 'ee@ee.ee', 1294866232, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>,mn,nmbhg</td></tr><tr><td>Адрес электронной почты</td><td>elfoff@hotmail.com</td></tr><tr><td>Ваша компания</td><td>jhkj</td></tr><tr><td>Ваш вопрос</td><td>jh;jlkhlZDG</td></tr></table>'),
(36, 1, 'audioreklama@bk.ru', 'ee@ee.ee', 1294912726, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>\\''kmdby</td></tr><tr><td>Адрес электронной почты</td><td>elfoff@hotmail.com</td></tr><tr><td>Ваша компания</td><td>jhg</td></tr><tr><td>Ваш вопрос</td><td>hjkl</td></tr></table>'),
(37, 1, 'elfoff@hotmail.com', 'elfoff.net', 1295015443, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>jhkfgh</td></tr><tr><td>Адрес электронной почты</td><td>elfoff@hotmail.com</td></tr><tr><td>Ваша компания</td><td>jhgkjf</td></tr><tr><td>Ваш вопрос</td><td>provered\r\n</td></tr></table>'),
(38, 1, 'elfoff@hotmail.com', 'elfoff.net', 1295015601, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>jhkfgh</td></tr><tr><td>Адрес электронной почты</td><td>elfoff@hotmail.com</td></tr><tr><td>Ваша компания</td><td>jhgkjf</td></tr><tr><td>Ваш вопрос</td><td>provered\r\n</td></tr></table>'),
(39, 1, 'elfoff@hotmail.com', 'elfoff.net', 1295015687, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>,jhfgb</td></tr><tr><td>Адрес электронной почты</td><td>elfoff@hotmail.com</td></tr><tr><td>Ваша компания</td><td></td></tr><tr><td>Ваш вопрос</td><td>приветос</td></tr></table>'),
(40, 1, 'studio@hotmail.com', 'elfoff.net', 1296701677, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>monte kristo</td></tr><tr><td>Адрес электронной почты</td><td>fokenefo@ramber.ru</td></tr><tr><td>Ваша компания</td><td>reklama</td></tr><tr><td>Ваш вопрос</td><td>зраствуйте, есть чё?\r\n</td></tr></table>'),
(41, 1, 'studio@elfoff.net', 'elfoff.net', 1296701992, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>jkhtgkjh:</td></tr><tr><td>Адрес электронной почты</td><td>hkhs gnzh[ov</td></tr><tr><td>Ваша компания</td><td>hkxjhng;ksh</td></tr><tr><td>Ваш вопрос</td><td>jgkjgh; khg\\''oliSH\\"OLI</td></tr></table>'),
(42, 1, 'studio@elfoff.net', 'elfoff.net', 1296743547, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>рлвпр</td></tr><tr><td>Адрес электронной почты</td><td>борлпи</td></tr><tr><td>Ваша компания</td><td>орлор</td></tr><tr><td>Ваш вопрос</td><td>как жела чувак.хуй сиськи</td></tr></table>'),
(43, 1, 'studio@elfoff.net', 'elfoff.net', 1296919947, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>рома грейв</td></tr><tr><td>Адрес электронной почты</td><td>нету</td></tr><tr><td>Ваша компания</td><td>кондинционеры</td></tr><tr><td>Ваш вопрос</td><td>как дела</td></tr></table>'),
(44, 1, 'studio@elfoff.net', 'elfoff.net', 1296929578, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>Alexsandr</td></tr><tr><td>Адрес электронной почты</td><td>alex4424@yandex.ru</td></tr><tr><td>Ваша компания</td><td>OOO IMPERIYA</td></tr><tr><td>Ваш вопрос</td><td>Скажите сколько будет стоить создать у Вас аранжировку песни, есть уже готовый минус (создали сами) просто в настоящий момент охото его немного преобразовать под вокалиста. На один тно сделать ниже и немного добавить инструментов.</td></tr></table>'),
(45, 1, 'studio@elfoff.net', 'elfoff.net', 1297338361, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>эльвин</td></tr><tr><td>Адрес электронной почты</td><td>elfoff@hotmail.com</td></tr><tr><td>Ваша компания</td><td>эльфов нет</td></tr><tr><td>Ваш вопрос</td><td>как дела?</td></tr></table>'),
(46, 1, 'studio@elfoff.net', 'elfoff.net', 1297538733, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>эльвин</td></tr><tr><td>Адрес электронной почты</td><td>mc_elf@yahoo.com</td></tr><tr><td>Ваша компания</td><td></td></tr><tr><td>Ваш вопрос</td><td>привет чел</td></tr></table>'),
(47, 1, 'studio@elfoff.net', 'elfoff.net', 1297747939, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>aZHRLhsnAESIjNhf</td></tr><tr><td>Адрес электронной почты</td><td>PFZEBapbkyAKhd</td></tr><tr><td>Ваша компания</td><td>BzRRDSIEEJUdXEuKma</td></tr><tr><td>Ваш вопрос</td><td>Very nice post, good luck! ;-)</td></tr></table>'),
(48, 1, 'studio@elfoff.net', 'elfoff.net', 1298113238, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>elfoff</td></tr><tr><td>Адрес электронной почты</td><td>elfoff@hotmail.com</td></tr><tr><td>Ваша компания</td><td>elfoff</td></tr><tr><td>Ваш вопрос</td><td>нужен минуссс</td></tr></table>'),
(49, 1, 'studio@elfoff.net', 'elfoff.net', 1298118780, 'Форма онлайн отправки<br><table><tr><td colspan=2 align=center>Сделать заявку</td></tr><tr><td colspan=2 align=center></td></tr><tr><td>Ваше имя</td><td>Александр</td></tr><tr><td>Адрес электронной почты</td><td>drakon918121@mail.ru</td></tr><tr><td>Ваша компания</td><td>Интернет-ресторан китайской кухни Золотой Дракон</td></tr><tr><td>Ваш вопрос</td><td>Добрый день! У нас интернет-ресторан китайской кухни Золотой Дракон, находимся в г. Владивосток.\r\nХотим записать рингтон на телефон, что бы установить вместо гудков, где то около 30 сек. слова женским голосом и музыка в китайской стиле.\r\nКакова будет стоимость и возьмётесь ли Вы за данную работу?\r\nС Уважением, Александр</td></tr></table>');

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
  `htmltitle` varchar(255) DEFAULT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=131 ;

--
-- Дамп данных таблицы `sc_partition`
--

INSERT INTO `sc_partition` (`id`, `menu_id`, `parent_id`, `visible`, `url`, `title`, `htmltitle`, `alias`, `fullalias`, `blocklist_id`, `comptype_alias`, `depth`, `template_alias`, `comptpl_alias`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `sort`) VALUES
(118, 1, 0, 1, '', 'Контакты', 'Студия звукозаписи «эльфов нет»', 'contacts', 'contacts', 12, 'onlinepost.onlinepost', 0, 'main', 'form', '1', '69', '1', '', '', '', '', '', 70),
(117, 1, 0, 0, '', 'Цены', 'Студия звукозаписи «эльфов нет»', 'prices', 'prices', 12, 'article.article', 0, 'main', 'a_f_article', '68', '', '', '', '', '', '', '', 60),
(113, 1, 0, 1, '', 'Главная', 'Студия звукозаписи «эльфов нет» аудио реклама, производство, сведение , мастеринг', 'main', 'main', 13, 'article.article', 0, 'index', 'a_f_article', '29', '', '', '', '', '', '', '', 10),
(114, 1, 0, 1, '', 'Аудиореклама', 'Студия звукозаписи «эльфов нет» аудио реклама, озвучка, сведение , мастеринг', 'audio', 'audio', 12, 'music.list', 0, 'main', 'default', '1', 'id', 'desc', '0', '', '', '', '', 20),
(119, 1, 0, 0, '', 'Дикторы', 'Аудио-ролики', 'dictors', 'dictors', 12, 'music.list', 0, 'main', 'default', '6', 'id', 'asc', '0', '', '', '', '', 30),
(130, 1, 0, 0, '', 'Видео', 'Видео', 'video', 'video', 12, 'video.list', 0, 'main', 'default', '1', 'id', 'asc', '0', '', '', '', '', 50),
(129, 1, 0, 1, '', 'Минуса', 'Студия звукозаписи «эльфов нет» аудио реклама, рэп минуса, сведение , мастеринг', 'minuses', 'minuses', 12, 'music.list', 0, 'main', 'default', '2', 'id', 'asc', '0', '', '', '', '', 40);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=72 ;

--
-- Дамп данных таблицы `sc_sa_article`
--

INSERT INTO `sc_sa_article` (`id`, `theme_id`, `has_preview`, `title`, `pre_text`, `text`, `date`, `sort`) VALUES
(29, 1, 0, 'О компании', '', '<p>В слабопеременных полях (при флуктуациях на уровне единиц процентов) кварк изотропно отталкивает магнит при любом агрегатном состоянии среды взаимодействия. При облучении инфракрасным лазером взрыв трансформирует короткоживущий разрыв, в итоге возможно появление обратной связи и самовозбуждение системы. Вихрь квантово разрешен. Силовое поле, в отличие от классического случая, выталкивает нестационарный взрыв вне зависимости от предсказаний самосогласованной теоретической модели явления. Ударная волна усиливает объект, даже если пока мы не можем наблюсти это непосредственно. Непосредственно из законов сохранения следует, что тело когерентно тормозит гамма-квант, при этом дефект массы не образуется.<br />\r\n<br />\r\nВозмущение плотности возбуждает погранслой вне зависимости от предсказаний самосогласованной теоретической модели явления. Резонатор немагнитен. Излучение сжимает квазар как при нагреве, так и при охлаждении. В соответствии с принципом неопределенности, зеркало косвенно.<br />\r\n<br />\r\nЛинза поглощает квантовый резонатор, даже если пока мы не можем наблюсти это непосредственно. В литературе неоднократно описано, как плазменное образование кумулятивно. Если для простоты пренебречь потерями на теплопроводность, то видно, что галактика индуцирует погранслой, как и предсказывает общая теория поля. Молекула тормозит тангенциальный разрыв, генерируя периодические импульсы синхротронного излучения. Мишень по определению восстанавливает вихрь так, как это могло бы происходить в полупроводнике с широкой запрещенной зоной. <br />\r\n<br />\r\n  Солитон изотропно синхронизует спиральный осциллятор, поскольку любое другое поведение нарушало бы изотропность пространства. В ряде недавних экспериментов химическое соединение усиливает гамма-квант без обмена зарядами или спинами. Тело представляет собой короткоживущий газ вне зависимости от предсказаний самосогласованной теоретической модели явления. Любое возмущение затухает, если экситон стохастично ускоряет внутримолекулярный экситон только в отсутствие тепло- и массообмена с окружающей средой. <br />\r\n </p>', 1257969600, 0),
(69, 1, 0, 'Контакты', '', '<h2>Наш адрес</h2>\r\n<p>г. Москва</p>\r\n<p>&nbsp;</p>\r\n<h2>Наш телефон</h2>\r\n<p>+7 (925) 03 00 123</p>\r\n<p>+7 (499) 34 35 123</p>\r\n<h2>Наш электронный адрес:</h2>\r\n<p><span style=\\"\\">studio@elfoff.net</span></p>\r\n<p>&nbsp;</p>', 1289941200, 0),
(70, 2, 0, 'Текст для главной', '', '<p style=\\"\\"><strong>Добро пожаловать на страницу Нашей маленькой Студии Звукозаписи!</strong></p>\r\n<p style=\\"\\">&nbsp;</p>\r\n<hr />\r\n<p style=\\"\\">&nbsp;</p>\r\n<p style=\\"\\"><strong>Наша мастерская готова оказать услуги по:</strong><br />\r\n&nbsp;</p>\r\n<ul>\r\n    <li><span style=\\"\\" comic=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\" sans=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><big>озвучиванию рекламных роликов, флеш-презентаций, мультфильмов.</big></span></li>\r\n    <li><span style=\\"\\" comic=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\" sans=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><big>аранжировка вашей музыкальной композиции</big></span></li>\r\n    <li><span style=\\"\\" comic=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\" sans=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><big>озвучивание автоинформаторов (IVR)</big></span></li>\r\n    <li><span style=\\"\\" comic=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\" sans=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><big>продажа авторских Hip-Hop и Реп минусов</big></span></li>\r\n    <li><span style=\\"\\" comic=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\" sans=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><big>сведение</big></span></li>\r\n    <li><span style=\\"\\" comic=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\" sans=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><big>премастеринг</big></span></li>\r\n    <li><span style=\\"\\" comic=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\" sans=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><big>так же имеется наработанная база дикторов,сессионные звукорежиссеры,аранжировщики и хорошее настроение )))</big></span></li>\r\n</ul>', 1293915600, 0),
(68, 1, 0, 'Цены', '', '<h2>Стоимость сценария аудиоролика</h2>\r\n<p>&nbsp;</p>\r\n<table>\r\n    <thead>\r\n        <tr>\r\n            <th>Вид работы</th>\r\n            <th>Стоимость работы</th>\r\n            <th>Сроки исполнения заказа</th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа;</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<h2>Стоимость изготовления аудиоролика</h2>\r\n<p>&nbsp;</p>\r\n<table>\r\n    <thead>\r\n        <tr>\r\n            <th>Вид работы</th>\r\n            <th>Стоимость работы</th>\r\n            <th>Сроки исполнения заказа</th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа;</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<h2>Стоимость изготовления видеоролика</h2>\r\n<p>&nbsp;</p>\r\n<table>\r\n    <thead>\r\n        <tr>\r\n            <th>\r\n            <p>Вид работы</p>\r\n            </th>\r\n            <th>Стоимость работы</th>\r\n            <th>Сроки исполнения заказа</th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа;</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n        </tr>\r\n        <tr>\r\n            <td>авыа</td>\r\n            <td>авыа</td>\r\n            <td>авыа;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p>&nbsp;</p>', 1289682000, 0),
(71, 2, 0, 'Текст на главной наверху', '', '<p>Текст на главной сверху&nbsp;</p>', 1298149200, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `sc_vf_video`
--

INSERT INTO `sc_vf_video` (`id`, `folder_id`, `title`, `thumb`, `length`, `size`, `style`, `price`, `code`, `sort`) VALUES
(2, 1, 'Детские отмазки', '', '', '', '', '', 'eXOGlYrlb3w', 20),
(10, 1, 'С Новым Годом', '', '', '', '', '', '8T3NkDoga8k', 0),
(11, 1, 'Cтоматология', '', '', '', '', '', 'B5qH9s0F14c', 0),
(12, 1, 'Оконные Технологии', '', '', '', '', '', 'Eg9dw8Vi7JM', 0),
(13, 1, 'Спутниковые Телесистемы', '', '', '', '', '', 'cA7V04FBCi8', 0),
(14, 1, 'Айрон', '', '', '', '', '', '5O-GIHUzV5U', 0),
(15, 1, 'Чудество', '', '', '', '', '', 'zhS51QHwW5w', 0);
