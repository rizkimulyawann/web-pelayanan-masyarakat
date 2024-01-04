/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.24-MariaDB : Database - pengaduan_masyarakat
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pengaduan_masyarakat` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `pengaduan_masyarakat`;

/*Table structure for table `masyarakat` */

DROP TABLE IF EXISTS `masyarakat`;

CREATE TABLE `masyarakat` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(13) NOT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `masyarakat` */

insert  into `masyarakat`(`nik`,`nama`,`username`,`password`,`telp`) values 
('1173021303030002','Agus Setiawan','Agus Setiawan','827ccb0eea8a706c4c34a16891f84e7b','082453371821'),
('1173021303030003','Hafizal','Hafizal','827ccb0eea8a706c4c34a16891f84e7b','084735462516'),
('1173021303030004','Randi','Randi','827ccb0eea8a706c4c34a16891f84e7b','083134526171'),
('1173021303030005','Mahira','Mahira','827ccb0eea8a706c4c34a16891f84e7b','084756573615'),
('1173021303030006','Putri','Putri','827ccb0eea8a706c4c34a16891f84e7b','083425361719'),
('1173021303030007','Ismail','Ismail','827ccb0eea8a706c4c34a16891f84e7b','086475462571'),
('1173021303030008','Maryam','Maryam','827ccb0eea8a706c4c34a16891f84e7b','082637289138'),
('1173021303030010','Sulaiman','Sulaiman','827ccb0eea8a706c4c34a16891f84e7b','082256764736');

/*Table structure for table `pengaduan` */

DROP TABLE IF EXISTS `pengaduan`;

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(5) NOT NULL AUTO_INCREMENT,
  `tgl_pengaduan` varchar(20) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('proses','selesai') NOT NULL,
  PRIMARY KEY (`id_pengaduan`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `pengaduan` */

insert  into `pengaduan`(`id_pengaduan`,`tgl_pengaduan`,`nik`,`isi_laporan`,`foto`,`status`) values 
(1,'2020-02-13','1376012310010005','pak itiak urang masuak rumah wak','130220204341itiak.png','selesai'),
(2,'2023-12-17','1376012310010001','Saya ingin melaporkan tindak pidana korupsi','1712202350241.png','selesai'),
(3,'2023-12-17','1173021303030010','','1712202323403.jpg','selesai'),
(6,'2023-12-30','1173021303030001','Pada Hari ini tepatnya di desa Buloh Panggoi terdapat Pencurian yang mengakibatkan kehilangannya 1 buah Laptop mohon di tindak lanjuti','301220231228pencurian laptop.jpeg','selesai'),
(8,'2023-12-30','1173021303030002','Pada Hari ini tepatnya di desa Buloh Panggoi terdapat Pencurian yang mengakibatkan kehilangannya 1 buah Laptop mohon di tindak lanjuti','301220232516pencurian laptop.jpeg','proses'),
(9,'2023-12-30','1173021303030004','Pada Hari ini tepatnya di desa Buloh Panggoi terdapat Pencurian yang mengakibatkan kehilangannya 1 buah Laptop mohon di tindak lanjuti','301220232539pencurian laptop.jpeg','selesai'),
(10,'2023-12-30','1173021303030003','Pada Hari ini tepatnya di desa Buloh Panggoi terdapat Pencurian yang mengakibatkan kehilangannya 1 buah Laptop mohon di tindak lanjuti','301220232558pencurian.jpeg','selesai'),
(11,'2023-12-30','1173021303030003','Pada Hari ini tepatnya di desa Buloh Panggoi terdapat Pencurian yang mengakibatkan kehilangannya 1 buah Laptop mohon di tindak lanjuti','301220232728pencurian.jpeg','selesai'),
(12,'2023-12-30','1173021303030005','Pada Hari ini tepatnya di desa Buloh Panggoi terdapat Pencurian yang mengakibatkan kehilangannya 1 buah Laptop mohon di tindak lanjuti','301220233101maling.jpeg','proses'),
(13,'2023-12-30','1173021303030006','Pada Hari ini tepatnya di desa Buloh Panggoi terdapat Pencurian yang mengakibatkan kehilangannya 1 buah Laptop mohon di tindak lanjuti','301220233344maling 1.jpeg','selesai');

/*Table structure for table `petugas` */

DROP TABLE IF EXISTS `petugas`;

CREATE TABLE `petugas` (
  `id_petugas` int(5) NOT NULL AUTO_INCREMENT,
  `nama_petugas` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp_petugas` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL,
  PRIMARY KEY (`id_petugas`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `petugas` */

insert  into `petugas`(`id_petugas`,`nama_petugas`,`username`,`password`,`telp_petugas`,`level`) values 
(1,'ANDRIA ZULFA, S.E., M.Si., Ph.D., CGCAE','admin','21232f297a57a5a743894a0e4a801fc3','081215951492','admin'),
(5,'MASHURI, S.Kom','Mashuri','827ccb0eea8a706c4c34a16891f84e7b','082385764625','petugas'),
(6,'FAUZIANA, SH. MH','Fauzianah','827ccb0eea8a706c4c34a16891f84e7b','085276684657','petugas'),
(7,'T. ZULFIKAR, S.KH','Zulfikar','827ccb0eea8a706c4c34a16891f84e7b','086456471931','petugas'),
(8,'BAHARUDDIN, SP.,MSM','Baharuddin','827ccb0eea8a706c4c34a16891f84e7b','084657281928','petugas'),
(9,'MARTINA, S.STP.,MSP','Martina','827ccb0eea8a706c4c34a16891f84e7b','084235372847','petugas'),
(10,'FAKHMY BASYIR, ST, M.S','Fahmi','827ccb0eea8a706c4c34a16891f84e7b','083584920124','petugas'),
(11,'KARTIWIYATI, S.Sos','Kartiwiyati','827ccb0eea8a706c4c34a16891f84e7b','086372814938','petugas'),
(12,'DEWI HANIFAH, S.Sos, MSM','Dewi','827ccb0eea8a706c4c34a16891f84e7b','081257389281','petugas'),
(13,'CUT ELOK FARIANI, SP','Cut Elok','827ccb0eea8a706c4c34a16891f84e7b','085278578329','petugas');

/*Table structure for table `tanggapan` */

DROP TABLE IF EXISTS `tanggapan`;

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(5) NOT NULL AUTO_INCREMENT,
  `id_pengaduan` int(5) NOT NULL,
  `tgl_tanggapan` varchar(20) NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(5) NOT NULL,
  PRIMARY KEY (`id_tanggapan`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tanggapan` */

insert  into `tanggapan`(`id_tanggapan`,`id_pengaduan`,`tgl_tanggapan`,`tanggapan`,`id_petugas`) values 
(1,1,'2020-02-13','berarti awak nan punyo tu mah',2),
(2,2,'2023-12-17','Baik Segera di tindak lanjuti',1),
(4,3,'2023-12-30','BAIK SEGERA AKAN KAMI PROSES TINDAK LANJUTNYA',6),
(5,6,'2023-12-30','Baik Terimakasih Atas Laporannya Badrul,, kami akan segera menindak lanjuti masalah terkait',7),
(6,10,'2023-12-30','Baiklah akan segera kita tangani',5),
(7,11,'2023-12-30','baik]\r\n',12),
(8,9,'2023-12-30','Baik akan segera kami tindak lanjuti',8),
(9,13,'2024-01-02','hasil tindak lanjut telah di invesigasi',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
