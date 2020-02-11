-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Feb 11, 2020 alle 14:25
-- Versione del server: 8.0.18
-- Versione PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomphp`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'Vivek', 'Vengala', 'vivek@codingcyber.com', '26e0eca228b42a520565415246513c0d'),
(2, 'pippo', 'pluto', 'dderiso@gmail.com', 'dbfa726fb55fbe910834b1802785fa53'),
(3, 'admin', 'admin', 'admin@netcomgroup.eu', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struttura della tabella `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Mobiles'),
(2, 'Hardware'),
(3, 'Software');

-- --------------------------------------------------------

--
-- Struttura della tabella `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE IF NOT EXISTS `orderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `pquantity` varchar(255) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productprice` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `orderitems`
--

INSERT INTO `orderitems` (`id`, `pid`, `pquantity`, `orderid`, `productprice`) VALUES
(1, 19, '5', 1, '16'),
(2, 19, '5', 2, '16'),
(3, 1, '2', 2, '20990'),
(4, 1, '1', 3, '20990'),
(5, 20, '10', 3, '99'),
(6, 18, '1', 4, '12890'),
(7, 21, '1', 4, '75'),
(8, 2, '1', 5, '7590'),
(9, 19, '10', 5, '16');

-- --------------------------------------------------------

--
-- Struttura della tabella `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `totalprice` varchar(255) NOT NULL,
  `orderstatus` varchar(255) NOT NULL,
  `paymentmode` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `orders`
--

INSERT INTO `orders` (`id`, `uid`, `totalprice`, `orderstatus`, `paymentmode`, `timestamp`) VALUES
(1, 2, '80', 'Cancelled', 'cod', '2017-10-28 12:22:36'),
(2, 2, '42060', 'Cancelled', 'cod', '2017-10-28 12:27:16'),
(3, 6, '21980', 'Cancelled', 'cod', '2017-10-28 14:25:23'),
(4, 6, '12965', 'In Progress', 'cod', '2017-10-28 14:28:29'),
(5, 6, '7750', 'In Progress', 'cod', '2017-11-06 19:40:34'),
(6, 7, '0', 'Order Placed', '', '2020-02-05 16:34:02'),
(7, 2, '0', 'Cancelled', '', '2020-02-11 13:49:46');

-- --------------------------------------------------------

--
-- Struttura della tabella `ordertracking`
--

DROP TABLE IF EXISTS `ordertracking`;
CREATE TABLE IF NOT EXISTS `ordertracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `ordertracking`
--

INSERT INTO `ordertracking` (`id`, `orderid`, `status`, `message`, `timestamp`) VALUES
(1, 3, 'Cancelled', ' I don&#39;t want this item now.', '2017-10-28 17:54:18'),
(2, 4, 'In Progress', ' Order is in Progress', '2017-10-30 13:31:08'),
(3, 5, 'In Progress', ' Order is in Progress', '2017-11-06 19:45:11'),
(4, 1, 'Cancelled', ' ', '2020-02-10 14:55:34'),
(5, 2, 'Cancelled', ' ', '2020-02-10 14:55:37'),
(6, 7, 'Cancelled', ' ', '2020-02-11 13:49:52');

-- --------------------------------------------------------

--
-- Struttura della tabella `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `products`
--

INSERT INTO `products` (`id`, `name`, `catid`, `price`, `thumb`, `description`) VALUES
(1, 'MHIL - MICRO HARDWARE IN THE LOOP', 2, '1800', 'uploads/mhil-side.jpg', 'Micro Hardware in The Loop (MHIL) è un dispositivo elettromeccanico che permette di fare i test su unità di controllo elettronico generale. A seconda dell’obiettivo da raggiungere il sistema si collega ad una centralina: può essere collegato al controllo '),
(2, 'M3', 2, '1950', 'uploads/m3-side.jpg', 'M3 è un prodotto concepito per testare sia applicazioni destinate a sistemi operativi specifici (Android – IOS – Windows Mobile) che applicazioni per web eseguite su Tablet o Smartphone.'),
(3, 'EMS - Energy Monitoring System', 2, '4500', 'uploads/energy-monitoring-system-side.jpg', 'EMS è un sistema stand-alone pensato per il monitoraggio del consumo energetico rivolto sia ad aziende che privati. Tale dispositivo, attraverso un opportuno hardware pilotato da un microcontrollore, è in grado di rilevare i consumi di energia elettrica d'),
(4, 'TMS - TEMPERATURE MONITORING SYSTEM', 2, '2580', 'uploads/temperature-monitoring-system-side.jpg', 'TMS è un sistema stand-alone pensato per il monitoraggio della temperatura indoor rivolto sia ad aziende che privati. Tale dispositivo, attraverso un opportuno hardware pilotato da un microcontrollore, è in grado di rilevare la temperatura del luogo in cu'),
(5, 'C & P Utilities', 3, '1550', 'uploads/cep-utilities-side.jpg', 'C&P Utilities è un’applicazione per le aziende di gestione delle forniture acqua, elettricità e gas ai cittadini. Aziende caratterizzate da una struttura distribuita sul territorio che necessita di personale, in continuo movimento, che ne curi la manutenz'),
(6, 'Portale Comunicazione e Collaborazione', 3, '580', 'uploads/portale-comunicazione-collaborazione-side.jpg', 'PCC (Portale Comunicazione e Collaborazione) è un’applicazione software di Content Management System (CMS), sviluppata con il prodotto SharePoint di Microsoft.\r\nLa sua funzione è soddisfare le esigenze di un’azienda di condividere informazioni e documenti');

-- --------------------------------------------------------

--
-- Struttura della tabella `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `review` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `reviews`
--

INSERT INTO `reviews` (`id`, `pid`, `uid`, `review`, `timestamp`) VALUES
(1, 1, 6, 'It&#39;s an awesome Product...', '2017-10-30 15:18:42');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `timestamp`) VALUES
(1, 'user1@netcomgroup.eu', '$2y$10$KrKARXOKt/H.T6gV0RAxxOyzQk8QVZeop4t3Jq9mYziXA6GQDwXIq', '2020-02-11 12:20:48'),
(2, 'user2@netcomgroup.eu', '$2y$10$GvWtvxnhSgJH8abFe206qeDM/UrSmwFK1dnhtSrrmG4bX6PKmOq2m', '2020-02-11 13:22:44'),
(3, 'admin@netcomgroup.eu', '$2y$10$FYA7r6HyhQKhZ.w1PnxXgu4UecWDcbpZYgRsFAOQik6HU.cmFnsE.', '2020-02-11 13:56:11');

-- --------------------------------------------------------

--
-- Struttura della tabella `usersmeta`
--

DROP TABLE IF EXISTS `usersmeta`;
CREATE TABLE IF NOT EXISTS `usersmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `usersmeta`
--

INSERT INTO `usersmeta` (`id`, `uid`, `firstname`, `lastname`, `company`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `mobile`) VALUES
(1, 2, 'user', 'due', 'netcom', 'Hyd', 'Hyd', 'Hyderabad', 'Telangana', 'AU', '500060', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `wishlist`
--

INSERT INTO `wishlist` (`id`, `pid`, `uid`, `timestamp`) VALUES
(1, 1, 6, '2017-10-30 16:36:45'),
(2, 2, 6, '2017-10-30 16:38:07'),
(3, 21, 6, '2017-11-06 19:42:35'),
(4, 22, 2, '2020-02-05 19:24:31'),
(5, 24, 2, '2020-02-05 19:24:43'),
(6, 24, 2, '2020-02-05 20:03:14');

-- --------------------------------------------------------

--
-- Struttura della tabella `wishlistname`
--

DROP TABLE IF EXISTS `wishlistname`;
CREATE TABLE IF NOT EXISTS `wishlistname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `wishlistname`
--

INSERT INTO `wishlistname` (`id`, `pid`, `uid`, `nome`, `timestamp`) VALUES
(1, 1, 1, 'alfa', '2017-10-30 16:36:45'),
(3, 21, 1, 'beta', '2017-11-06 19:42:35'),
(4, 22, 2, 'alfa', '2020-02-05 19:24:31'),
(5, 24, 2, 'alfa', '2020-02-05 19:24:43'),
(6, 24, 2, 'alfa', '2020-02-05 20:03:14'),
(7, 22, 2, 'beta', '2020-02-06 19:58:27'),
(8, 24, 2, 'prova1', '2020-02-06 21:07:57'),
(9, 24, 2, 'gamma', '2020-02-06 21:10:21'),
(10, 23, 2, 'gamma', '2020-02-06 21:12:13'),
(11, 23, 2, 'beta', '2020-02-06 21:17:15'),
(12, 23, 2, 'prova1', '2020-02-07 10:10:44'),
(13, 23, 2, 'beta', '2020-02-07 10:12:02'),
(14, 23, 1, 'beta', '2020-02-11 13:46:37'),
(15, 23, 2, 'prova1', '2020-02-11 13:51:05'),
(16, 3, 1, 'beta', '2020-02-11 15:24:03');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
