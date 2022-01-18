-- --------------------------------------------------------
-- Hostiteľ:                     127.0.0.1
-- Verze serveru:                10.4.22-MariaDB - mariadb.org binary distribution
-- OS serveru:                   Win64
-- HeidiSQL Verzia:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Exportování struktury databáze pro
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;

-- Exportování struktury pro tabulka test.ciselnik
CREATE TABLE IF NOT EXISTS `ciselnik` (
  `id` int(11) DEFAULT NULL,
  `Pozicia_zamestnanca` varchar(255) DEFAULT NULL,
  `Narodnost` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportování dat pro tabulku test.ciselnik: ~7 rows (přibližně)
/*!40000 ALTER TABLE `ciselnik` DISABLE KEYS */;
INSERT INTO `ciselnik` (`id`, `Pozicia_zamestnanca`, `Narodnost`) VALUES
	(1, 'Pokladník', 'Slovák'),
	(2, 'Skladník', 'Nemec'),
	(3, 'Pokladník', 'Cech'),
	(4, 'Pokladník', 'Poliak'),
	(5, 'Pokladník', 'Slovák'),
	(6, 'Skladník', 'Nemec'),
	(7, 'Pokladník', 'Cech');
/*!40000 ALTER TABLE `ciselnik` ENABLE KEYS */;

-- Exportování struktury pro tabulka test.platba
CREATE TABLE IF NOT EXISTS `platba` (
  `Platba_id` int(11) DEFAULT NULL,
  `Zakaznik_id` int(11) DEFAULT NULL,
  `Celkova_platba` int(11) DEFAULT NULL,
  `Datum` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Zamestnanec_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportování dat pro tabulku test.platba: ~8 rows (přibližně)
/*!40000 ALTER TABLE `platba` DISABLE KEYS */;
INSERT INTO `platba` (`Platba_id`, `Zakaznik_id`, `Celkova_platba`, `Datum`, `Zamestnanec_id`) VALUES
	(3, 1, 300, '2022-11-18 23:14:00', 3),
	(6, 2, 700, '2015-11-20 20:13:13', 5),
	(2, 2, 2000, '2013-10-25 19:14:21', 4),
	(4, 3, 420, '2009-01-18 23:17:06', 6),
	(7, 5, 7500, '2017-11-19 22:12:24', 3),
	(8, 8, 8200, '2007-01-18 23:18:50', 5),
	(2, 4, 4500, '2015-01-18 23:23:47', 8),
	(9, 9, 9, '2020-11-16 13:28:19', 9);
/*!40000 ALTER TABLE `platba` ENABLE KEYS */;

-- Exportování struktury pro tabulka test.produkty
CREATE TABLE IF NOT EXISTS `produkty` (
  `Product_id` int(11) DEFAULT NULL,
  `Meno` varchar(255) DEFAULT NULL,
  `Dostupnost` varchar(50) DEFAULT NULL,
  `Cena` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportování dat pro tabulku test.produkty: ~10 rows (přibližně)
/*!40000 ALTER TABLE `produkty` DISABLE KEYS */;
INSERT INTO `produkty` (`Product_id`, `Meno`, `Dostupnost`, `Cena`) VALUES
	(1, 'Ponozky', '201', 7),
	(2, 'Red_Bull', '301', 1),
	(3, 'Chispy', '42', 2),
	(4, 'Bagetka', '192', 2),
	(5, 'Mast', '12', 2),
	(6, 'Klobaska', NULL, 3),
	(7, 'Sunka', NULL, 2),
	(8, 'Sushi', NULL, 5),
	(9, 'Pizza', NULL, 4),
	(10, 'Jogurt', NULL, 1);
/*!40000 ALTER TABLE `produkty` ENABLE KEYS */;

-- Exportování struktury pro tabulka test.zakaznik
CREATE TABLE IF NOT EXISTS `zakaznik` (
  `Zakaznik_id` int(11) DEFAULT NULL,
  `Meno` varchar(255) DEFAULT NULL,
  `Priezvisko` varchar(255) DEFAULT NULL,
  `Zakupeny_produkt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportování dat pro tabulku test.zakaznik: ~10 rows (přibližně)
/*!40000 ALTER TABLE `zakaznik` DISABLE KEYS */;
INSERT INTO `zakaznik` (`Zakaznik_id`, `Meno`, `Priezvisko`, `Zakupeny_produkt`) VALUES
	(1, 'Peter', 'Ignac', 'Horalka'),
	(2, 'Samuel', 'Kolek', 'Donuty'),
	(3, 'Jan', 'Ifor', 'Chipsy'),
	(4, 'Radoslav', 'Chikel', 'Pivo'),
	(5, 'Samuel', 'Urban', 'Mineralka_Budis'),
	(6, 'Igor', 'Korda', 'Red_Bull'),
	(7, 'Martin', 'Ifel', 'Rozok'),
	(8, 'Ivan', 'Nosta', 'Bagetka'),
	(9, 'Frantisek', 'Norbert', 'Jogurt'),
	(10, 'Kristian', 'Ulek', 'Kofola');
/*!40000 ALTER TABLE `zakaznik` ENABLE KEYS */;

-- Exportování struktury pro tabulka test.zamestnanci
CREATE TABLE IF NOT EXISTS `zamestnanci` (
  `Zamestnanec_id` int(11) NOT NULL,
  `Meno` varchar(255) DEFAULT NULL,
  `Den_nastupu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Plat` int(11) DEFAULT NULL,
  PRIMARY KEY (`Zamestnanec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportování dat pro tabulku test.zamestnanci: ~10 rows (přibližně)
/*!40000 ALTER TABLE `zamestnanci` DISABLE KEYS */;
INSERT INTO `zamestnanci` (`Zamestnanec_id`, `Meno`, `Den_nastupu`, `Plat`) VALUES
	(1, 'Samuel Duban', '1999-12-12 13:14:16', 1800),
	(2, 'Peter Bomba', '2013-02-18 23:28:00', 1700),
	(3, 'Jan Kulicka', '2022-01-18 23:29:28', 790),
	(4, 'Jacob Peteraj', '2020-01-18 23:29:54', 1200),
	(5, 'Ivan Kentela', '2005-01-18 23:30:41', 2000),
	(6, 'Radoslav Keprd', '2015-12-20 23:31:19', 2200),
	(7, 'Miroslav Mrkva', '2022-01-18 23:32:06', 3200),
	(8, 'Honza Ladvinka', '2011-01-18 23:32:24', 2300),
	(9, 'Erik Sekal', '2021-01-18 23:32:57', 1050),
	(10, 'Jakub Oris', '2018-01-18 23:33:22', 1500);
/*!40000 ALTER TABLE `zamestnanci` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
