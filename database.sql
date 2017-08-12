-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.29-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL DEFAULT '',
  `password_hash` varchar(128) NOT NULL DEFAULT '',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_edited` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `U_email` (`email`),
  KEY `K_date_created_date_edited` (`date_created`,`date_edited`),
  KEY `K_is_active` (`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Дамп данных таблицы user: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `email`, `password_hash`, `is_active`, `date_created`, `date_edited`) VALUES
	(1, 'vitaliy@yandex.ru', '$2y$13$AHUQEITMB5AyUDNCngAbeeAVMqZBsjgFhbiBRP9JB7gnJS8/BmT3G', 1, '2016-04-24 11:29:23', '0000-00-00 00:00:00'),
	(2, 'ivan@yandex.ua', '$2y$13$GH39o2.tcPlx5I4g221Sa.tBj942IpCCTl3bjcoDaIJhAh9bAGJpK', 0, '2016-04-24 11:29:24', '2016-08-24 20:58:48'),
	(3, 'petya@gmail.com', '$2y$13$slZ4VggmwkEjGu07/D9HD.T9OVPBh67KLsqIxU627qlgGucX9SlJu', 1, '2016-04-24 11:29:25', '0000-00-00 00:00:00'),
	(4, 'andrew@gmail.com', '$2y$13$B6ixfDzuJmJjMYGaIrlB5erPy9ek2DBMO7oLyqzqfOoXTZ9uNChaS', 1, '2016-04-24 11:29:26', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Дамп структуры для таблица user_profile
CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `patronymic` varchar(128) NOT NULL DEFAULT '',
  `surname` varchar(128) NOT NULL DEFAULT '',
  `phone` varchar(128) NOT NULL DEFAULT '',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `date_birthday` date DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_edited` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `K_date_created_date_edited` (`date_created`,`date_edited`),
  KEY `K_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Дамп данных таблицы user_profile: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` (`id`, `name`, `patronymic`, `surname`, `phone`, `money`, `date_birthday`, `user_id`, `date_created`, `date_edited`) VALUES
	(1, 'Виталий', 'Виталиевич', 'Виталенко', '+38 099 111 11 11', 100.00, '1984-05-02', 1, '2016-04-24 11:29:24', '0000-00-00 00:00:00'),
	(2, 'Иван', 'Иванович', 'Иванов', '', 200.00, NULL, 2, '2016-04-24 11:29:26', '0000-00-00 00:00:00'),
	(3, 'Петр', 'Петрович', 'Петров', '', 300.00, '1988-05-24', 3, '2016-04-24 11:29:26', '0000-00-00 00:00:00'),
	(4, 'Андрей', 'Андреевич', 'Андреевский', '+38 099 444 44 44', 400.00, NULL, 4, '2016-04-24 11:29:26', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;

-- Дамп структуры для таблица user_token
CREATE TABLE IF NOT EXISTS `user_token` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `token` varchar(255) NOT NULL DEFAULT '',
  `date_expiry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_edited` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `K_date_created_date_edited` (`date_created`,`date_edited`),
  KEY `K_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Дамп данных таблицы user_token: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `user_token` DISABLE KEYS */;
INSERT INTO `user_token` (`id`, `user_id`, `token`, `date_expiry`, `date_created`, `date_edited`) VALUES
	(1, 1, '81D408F8-79C8-46DC-988E-5770CF325B91', '2016-07-24 21:07:15', '2016-08-24 21:07:15', '0000-00-00 00:00:00'),
	(2, 2, 'D4655B0C-3247-4A6B-9D1B-8E52EAF980C2', '2016-07-25 21:07:15', '2016-08-24 21:07:15', '0000-00-00 00:00:00'),
	(3, 2, 'CB7ED4EE-AA5C-46CE-B1F9-ACC191B3C1A5', '2016-10-11 21:07:15', '2016-08-24 21:07:15', '0000-00-00 00:00:00'),
	(4, 3, '4CA4388C-5684-4D8A-A406-B1946AD549F4', '2016-08-12 21:07:15', '2016-08-24 21:07:15', '0000-00-00 00:00:00'),
	(5, 3, '806A4DBB-EFD7-4C2D-B428-2E6C639B477E', '2016-10-01 21:07:15', '2016-08-24 21:07:15', '0000-00-00 00:00:00'),
	(6, 3, 'D0F45B0A-85B9-420B-99F0-18C3C02FEC4C', '2016-05-19 21:07:15', '2016-08-24 21:07:15', '0000-00-00 00:00:00'),
	(7, 4, '35CD8498-5982-4359-88E6-DD772E1B42C1', '2016-01-25 21:07:15', '2016-08-24 21:07:15', '0000-00-00 00:00:00'),
	(8, 4, '7F111047-B233-4B80-BB2E-CDF277841CEA', '2016-06-06 21:07:15', '2016-08-24 21:07:15', '0000-00-00 00:00:00'),
	(9, 4, '09BF684D-E981-4B5D-961A-DBED88A65430', '2016-09-04 21:07:15', '2016-08-24 21:07:15', '0000-00-00 00:00:00'),
	(10, 4, 'F5113033-0260-40C0-AF47-B2E25B1CB734', '2016-09-23 21:07:15', '2016-08-24 21:07:15', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `user_token` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
