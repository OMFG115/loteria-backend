/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.22-MariaDB : Database - loteria_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`loteria_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `loteria_db`;

/*Table structure for table `cards` */

DROP TABLE IF EXISTS `cards`;

CREATE TABLE `cards` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

/*Data for the table `cards` */

insert  into `cards`(`id`,`name`,`image`) values 
(1,'El Gallo','/assets/cartas/1loteria.jpg'),
(2,'El Diablito','/assets/cartas/2loteria.jpg'),
(3,'La Dama','/assets/cartas/3loteria.jpg'),
(4,'El Catrin','/assets/cartas/4loteria.jpg'),
(5,'El Paraguas','/assets/cartas/5loteria.jpg'),
(6,'La Sirena','/assets/cartas/6loteria.jpg'),
(7,'La Escalera','/assets/cartas/7loteria.jpg'),
(8,'La Botella','/assets/cartas/8loteria.jpg'),
(9,'El Barril','/assets/cartas/9loteria.jpg'),
(10,'El Arbol','/assets/cartas/10loteria.jpg'),
(11,'El Melon','/assets/cartas/11loteria.jpg'),
(12,'El Valiente','/assets/cartas/12loteria.jpg'),
(13,'El Gorrito','/assets/cartas/13loteria.jpg'),
(14,'La Muerte','/assets/cartas/14loteria.jpg'),
(15,'La Pera','/assets/cartas/15loteria.jpg'),
(16,'La Bandera','/assets/cartas/16loteria.jpg'),
(17,'El Bandolon','/assets/cartas/17loteria.jpg'),
(18,'El Violoncello','/assets/cartas/18loteria.jpg'),
(19,'La Garza','/assets/cartas/19loteria.jpg'),
(20,'El Pajaro','/assets/cartas/20loteria.jpg'),
(21,'La Mano','/assets/cartas/21loteria.jpg'),
(22,'La Bota','/assets/cartas/22loteria.jpg'),
(23,'La Luna','/assets/cartas/23loteria.jpg'),
(24,'El Cotorro','/assets/cartas/24loteria.jpg'),
(25,'El Borracho','/assets/cartas/25loteria.jpg'),
(26,'El Negrito','/assets/cartas/26loteria.jpg'),
(27,'El Corazon','/assets/cartas/27loteria.jpg'),
(28,'La Sandia','/assets/cartas/28loteria.jpg'),
(29,'El Tambor','/assets/cartas/29loteria.jpg'),
(30,'El Camaron','/assets/cartas/30loteria.jpg'),
(31,'Las Jaras','/assets/cartas/31loteria.jpg'),
(32,'El Musico','/assets/cartas/32loteria.jpg'),
(33,'La Araña','/assets/cartas/33loteria.jpg'),
(34,'El Soldado','/assets/cartas/34loteria.jpg'),
(35,'La Estrella','/assets/cartas/35loteria.jpg'),
(36,'El Cazo','/assets/cartas/36loteria.jpg'),
(37,'El Mundo','/assets/cartas/37loteria.jpg'),
(38,'El Apache','/assets/cartas/38loteria.jpg'),
(39,'El Nopal','/assets/cartas/39loteria.jpg'),
(40,'El Alacran','/assets/cartas/40loteria.jpg'),
(41,'La Rosa','/assets/cartas/41loteria.jpg'),
(42,'La Calavera','/assets/cartas/42loteria.jpg'),
(43,'La Campana','/assets/cartas/43loteria.jpg'),
(44,'El Cantarito','/assets/cartas/44loteria.jpg'),
(45,'El Venado','/assets/cartas/45loteria.jpg'),
(46,'El Sol','/assets/cartas/46loteria.jpg'),
(47,'La Corona','/assets/cartas/47loteria.jpg'),
(48,'La Chalupa','/assets/cartas/48loteria.jpg'),
(49,'El Pino','/assets/cartas/49loteria.jpg'),
(50,'El Pescado','/assets/cartas/50loteria.jpg'),
(51,'La Palma','/assets/cartas/51loteria.jpg'),
(52,'La Maceta','/assets/cartas/52loteria.jpg'),
(53,'El Arpa','/assets/cartas/53loteria.jpg'),
(54,'La Rana','/assets/cartas/54loteria.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
