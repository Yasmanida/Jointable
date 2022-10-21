/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.21-MariaDB : Database - db_universitas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_universitas` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_universitas`;

/*Table structure for table `ambil_mk` */

DROP TABLE IF EXISTS `ambil_mk`;

CREATE TABLE `ambil_mk` (
  `nip` int(20) DEFAULT NULL,
  `kd_mk` varchar(10) DEFAULT NULL,
  `ruangan` varchar(20) DEFAULT NULL,
  `jml_mhs` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `ambil_mk` */

insert  into `ambil_mk`(`nip`,`kd_mk`,`ruangan`,`jml_mhs`) values 
(3,'PTI101','H5211',40),
(2,'PTI102','H5212',45),
(2,'PTI103','H5206',40),
(1,'IS101','17312',30);

/*Table structure for table `instruktur` */

DROP TABLE IF EXISTS `instruktur`;

CREATE TABLE `instruktur` (
  `nip` int(20) NOT NULL AUTO_INCREMENT,
  `nama_ins` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `asal_kota` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `instruktur` */

insert  into `instruktur`(`nip`,`nama_ins`,`jurusan`,`asal_kota`) values 
(1,'Muhammad Akbar','Ilmu Sejarah','Malang'),
(2,'Saichul Fitrian A.','Ilmu Komputer','Malang'),
(3,'Annafia Oktafian','Ilmu Komputer','Klaten'),
(4,'Budy Pratama','Ilmu Komputer','Magelang');

/*Table structure for table `matakuliah` */

DROP TABLE IF EXISTS `matakuliah`;

CREATE TABLE `matakuliah` (
  `kd_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(50) DEFAULT NULL,
  `sks` int(10) DEFAULT NULL,
  PRIMARY KEY (`kd_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `matakuliah` */

insert  into `matakuliah`(`kd_mk`,`nama_mk`,`sks`) values 
('IS101','Sejarah Indonesia',3),
('PTI101','Algoritma dan Pemrograman',3),
('PTI102','Basis Data',3),
('PTI103','Visual Basic',3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
