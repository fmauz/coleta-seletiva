# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.16)
# Database: coleta_seletiva
# Generation Time: 2014-02-11 01:07:38 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table oficio_prefeituras
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oficio_prefeituras`;

CREATE TABLE `oficio_prefeituras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `data_registro` date DEFAULT NULL,
  `name_resp` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `county_id` int(11) DEFAULT NULL,
  `archive_file_name` varchar(255) DEFAULT NULL,
  `archive_content_type` varchar(255) DEFAULT NULL,
  `archive_file_size` int(11) DEFAULT NULL,
  `archive_updated_at` datetime DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `oficio_prefeituras` WRITE;
/*!40000 ALTER TABLE `oficio_prefeituras` DISABLE KEYS */;

INSERT INTO `oficio_prefeituras` (`id`, `name`, `description`, `data_registro`, `name_resp`, `created_at`, `updated_at`, `county_id`, `archive_file_name`, `archive_content_type`, `archive_file_size`, `archive_updated_at`, `cargo`)
VALUES
	(7,'Jair Filho','Solicitação de assessoria técnica para implantação do PCSS','2013-08-28','Renan Vinicius Santos de Oliveira ','2013-12-18 18:29:09','2013-12-23 16:29:48',91,'Vassouras.PDF','application/pdf',141556,'2013-12-18 18:29:09','Prefeito'),
	(9,'Juliana','Solicitação de assessoria técnica para implantação do PCSS','2013-08-20','Alfredo Paulo Marques Rodrigues','2013-12-23 16:28:52','2013-12-23 16:28:52',33,'Itaperuna.PDF','application/pdf',166912,'2013-12-23 16:28:52','Prefeito'),
	(10,'Rose ','Solicitação de assessoria técnica para implantação do PCSS','2013-08-12','Arlei de Oliveira Rosa','2013-12-23 16:31:33','2013-12-23 16:33:11',86,'Teresópolis.PDF','application/pdf',125058,'2013-12-23 16:31:33','Prefeito'),
	(11,'Rose','Solicitação de assessoria técnica para implantação do PCSS','2013-09-12','Juarez Gonçalves Corguinha','2013-12-23 16:35:43','2013-12-23 16:35:43',84,'Sumidouro.PDF','application/pdf',215851,'2013-12-23 16:35:43','Prefeito'),
	(12,'Rose ','Solicitação de assessoria técnica para implantação do PCSS','2013-04-01','Waldeth Brasiel Rinaldi','2013-12-23 16:42:28','2013-12-23 16:42:28',4,'Areal.PDF','application/pdf',178077,'2013-12-23 16:42:28','Prefeito'),
	(13,'Jair Filho','Solicitação de assessoria técnica para implantação do PCSS','2013-08-16','João Carlos do Rego Pereira','2013-12-23 16:45:18','2013-12-23 16:45:18',26,'Engenheiro_Paulo_de_Frontin.PDF','application/pdf',180342,'2013-12-23 16:45:18','Prefeito'),
	(14,'Rosane','Solicitação de assessoria técnica para implantação do PCSS','2013-05-15','Grasiella Magalhães','2013-12-23 16:47:19','2013-12-23 16:47:19',28,'Iguaba_Grande.PDF','application/pdf',154195,'2013-12-23 16:47:19','Prefeito'),
	(17,'Raphael','Solicitação de assessoria técnica para implantação do PCSS','2013-01-18','Felix Monteiro Lengruber','2013-12-27 16:02:48','2013-12-27 16:02:48',38,'Macuco.PDF','application/pdf',162402,'2013-12-27 16:02:48','Prefeito'),
	(18,'Juliana','Solicitação de assessoria técnica para implantação do PCSS','2013-05-02','Octávio Carneiro da silva','2013-12-27 16:05:29','2013-12-27 16:05:29',62,'Quissamã.PDF','application/pdf',159544,'2013-12-27 16:05:29','Prefeito'),
	(19,'Betiza','Solicitação de assessoria técnica para implantação do PCSS','2013-04-02','Josias Quintal de Oliveira','2013-12-27 16:12:52','2013-12-27 16:12:52',70,'Santo_Antônio_de_Pádua.PDF','application/pdf',140176,'2013-12-27 16:12:52','Prefeito'),
	(20,'Juliana','Solicitação de assessoria técnica para implantação do PCSS','2013-04-05','Juedyr Orsay Silva ','2013-12-27 16:20:06','2013-12-27 16:20:06',45,'Miracema.PDF','application/pdf',188910,'2013-12-27 16:20:06','Prefeito'),
	(21,'Maíra','Solicitação de assessoria técnica para implantação do PCSS','2013-04-15','Evandro Bertino Jorge','2013-12-27 16:21:26','2013-12-27 16:21:26',40,'Mangaratiba.PDF','application/pdf',137633,'2013-12-27 16:21:26','Prefeito'),
	(22,'Maíra','Solicitação de assessoria técnica para implantação do PCSS','2013-06-17','Carlos José Gama Miranda','2013-12-27 16:22:48','2013-12-27 16:22:48',53,'Paraty.PDF','application/pdf',151690,'2013-12-27 16:22:48','Prefeito'),
	(23,'Rose','Solicitação de assessoria técnica para implantação do PCSS','2013-08-05','Nathália Mafra Garbois Zacaron','2013-12-27 16:24:32','2013-12-27 16:24:32',52,'Paraíba_do_Sul.PDF','application/pdf',161861,'2013-12-27 16:24:32','Secretário'),
	(24,'Juliana','Solicitação de assessoria técnica para implantação do PCSS','2013-04-10','Gean Marcos Pereira da Silva','2013-12-27 16:27:27','2013-12-27 16:27:27',76,'São_José_de_Ubá.PDF','application/pdf',131354,'2013-12-27 16:27:27','Prefeito'),
	(25,'Rose ','Solicitação de assessoria técnica para implantação do PCSS','2013-04-12','Marco Antônio Teixeira Francisco','2013-12-27 16:29:50','2013-12-27 16:29:50',80,'Sapucaia.PDF','application/pdf',183954,'2013-12-27 16:29:50','Secretário'),
	(26,'Betiza','Solicitação de assessoria técnica para implantação do PCSS','2012-03-28','Carlos Alberto Silva Azevedo','2013-12-27 16:31:45','2013-12-27 16:31:45',71,'São_Francisco_de_Itabapoana.PDF','application/pdf',182301,'2013-12-27 16:31:45','Prefeito'),
	(29,'Nilmar','Solicitação de assessoria técnica para implantação do PCSS','2013-10-10','Claudia de Oliveira Neves Saraiva','2014-01-08 12:19:37','2014-01-08 12:19:37',48,'Niterói.PDF','application/pdf',123886,'2014-01-08 12:19:37',NULL),
	(30,'Carol','Solicitação de assessoria técnica para implantação do PCSS','2013-11-11','Rogelson Sanches Fontoura','2014-01-08 12:43:31','2014-01-08 12:43:31',43,'Mesquita.PDF','application/pdf',267377,'2014-01-08 12:43:31','Prefeito'),
	(31,'Jair Filho','Solicitação de assessoria técnica para implantação do PCSS','2013-11-08','Jorge Augusto Babo Pedroso de Lima','2014-01-08 13:00:37','2014-01-08 13:00:37',7,'Barra_do_Piraí.PDF','application/pdf',274187,'2014-01-08 13:00:36','Prefeito'),
	(32,'Rosane','Continuidade da assessoria técnica para implantação do PCSS','2013-10-10','Wanderson Cardoso de Brito','2014-01-08 13:04:47','2014-01-08 13:04:47',6,'Arraial_do_Cabo.PDF','application/pdf',262131,'2014-01-08 13:04:47','Prefeito'),
	(33,'Carol','Solicitação de assessoria técnica para implantação do PCSS','2013-11-19',' Nelson Roberto Bornier de Oliveira','2014-01-08 13:07:13','2014-01-08 13:07:13',50,'Nova_Iguaçu.PDF','application/pdf',265036,'2014-01-08 13:07:13','Prefeito'),
	(34,'Lucia','Solicitação de assessoria técnica para implantação do PCSS','2009-09-15','Marco Arthur da S. Chiesse','2014-01-23 13:30:53','2014-01-23 13:30:53',8,'Barra_Mansa_-_2009.pdf','application/pdf',258564,'2014-01-23 13:30:53','Secretário'),
	(35,'Betiza','Solicitação de assessoria técnica para implantação do PCSS','2010-09-22','Geraldo Pietrani','2014-01-23 13:48:10','2014-01-23 13:48:10',79,'São_Sebastião_do_Alto_-_2010.pdf','application/pdf',263424,'2014-01-23 13:48:10','Prefeito'),
	(36,'Rosane','Solicitação de assessoria técnica para implantação do PCSS','2011-03-16','Adriana Miguel SA','2014-01-23 13:52:40','2014-01-23 13:53:01',5,'Armação_dos_búzios_-_2011.pdf','application/pdf',222454,'2014-01-23 13:52:40','Secretário'),
	(37,'Juliana','Solicitação de assessoria técnica para implantação do PCSS','2011-12-06','Maria das Graças Ferreira Motta','2014-01-23 13:55:28','2014-01-23 13:55:28',11,'Bom_Jesus_do_itabapoana_-_2011.pdf','application/pdf',260583,'2014-01-23 13:55:28','Prefeito'),
	(38,'Betiza','Solicitação de assessoria técnica para implantação do PCSS','2011-02-07','Alcione Correa de Araujo','2014-01-23 14:08:08','2014-01-23 14:08:08',32,'Itaocara_-_2011.pdf','application/pdf',576876,'2014-01-23 14:08:08','Prefeito'),
	(39,'Jair Filho','Solicitação de assessoria técnica para implantação do PCSS','2009-09-11','Roberto Daniel Campos de Almeida','2014-01-30 13:33:52','2014-01-30 13:33:52',44,'Miguel_Pereira_-_2009.pdf','application/pdf',335084,'2014-01-30 13:33:52','Prefeito'),
	(40,'Nilmar','Solicitação de assessoria técnica para implantação do PCSS','2010-02-02','José Luiz de Oliveira','2014-01-30 13:46:51','2014-01-30 13:46:51',51,'Paracambi_-_2009.pdf','application/pdf',389798,'2014-01-30 13:46:51','Secretário'),
	(41,'Maíra','Solicitação de assessoria técnica para implantação do PCSS','2010-05-07','Artur Otávio Scapin Jordão Costa','2014-01-30 18:26:45','2014-01-30 18:26:45',1,'Angra_dos_Reis_-_2010.pdf','application/pdf',290639,'2014-01-30 18:26:45','Prefeito'),
	(42,'Rosane','Solicitação de assessoria técnica para implantação do PCSS','2010-05-04','Leonildo da Costa e Silva','2014-01-30 18:30:47','2014-01-30 18:30:47',3,'Araruama_-_2010.pdf','application/pdf',289909,'2014-01-30 18:30:47','Secretário'),
	(43,'Raphael','Solicitação de assessoria técnica para implantação do PCSS','2010-05-24','Allan Daniel Fernandes Rocha Azevedo','2014-01-30 18:33:05','2014-01-30 18:33:05',23,'Cordeiro_-_2010.pdf','application/pdf',458089,'2014-01-30 18:33:05','Secretário'),
	(44,'Lucia','Solicitação de assessoria técnica para implantação do PCSS','2010-03-31','Luiz Carlos Ferreira Bastos','2014-01-30 18:36:14','2014-01-30 18:36:14',34,'Itatiaia_-_2010.pdf','application/pdf',269764,'2014-01-30 18:36:14','Prefeito'),
	(45,'Jair Filho','Solicitação de assessoria técnica para implantação do PCSS','2010-08-12','Ivaldo Barbosa dos Santos','2014-01-30 18:50:42','2014-01-30 18:50:42',35,'Japeri_-_2010.pdf','application/pdf',259357,'2014-01-30 18:50:42','Prefeito'),
	(46,'Lucia','Solicitação de assessoria técnica para implantação do PCSS','2010-04-05','Paulo José Fontanezzi','2014-01-30 18:55:34','2014-01-30 18:55:34',63,'Resende_-_2010.pdf','application/pdf',314983,'2014-01-30 18:55:34',NULL),
	(47,'Nilmar','Solicitação de assessoria técnica para implantação do PCSS','2010-04-20','Carmen Luica K de Souza Motta','2014-01-30 18:58:04','2014-01-30 18:58:04',64,'Rio_Bonito_-_2010.pdf','application/pdf',305621,'2014-01-30 18:58:04','Secretário'),
	(48,'Raphael','Solicitação de assessoria técnica para implantação do PCSS','2010-10-07','Paulo Roberto de Araujo Silva','2014-01-30 19:00:03','2014-01-30 19:00:03',69,'Santa_Maria_Madalena_-_2010.pdf','application/pdf',307892,'2014-01-30 19:00:03','Assessor'),
	(49,'Lucia','Solicitação de assessoria técnica para implantação do PCSS','2010-07-20','Raquel do Carmo Cardoso','2014-01-30 19:03:03','2014-01-30 19:03:03',92,'Volta_Redonda_-_2010.pdf','application/pdf',300434,'2014-01-30 19:03:03','Assessor'),
	(50,'Rose ','Solicitação de assessoria técnica para implantação do PCSS','2012-02-15','Maxwell Souto Vaz','2014-01-30 19:09:59','2014-01-30 19:09:59',37,'Macaé.PDF','application/pdf',185775,'2014-01-30 19:09:59','Secretário'),
	(51,'Betiza','Solicitação de assessoria técnica para implantação do PCSS','2012-03-21','Antônio Nicolau Monteiro Velasco ','2014-01-30 19:12:00','2014-01-30 19:12:00',14,'Cambuci.PDF','application/pdf',215730,'2014-01-30 19:12:00','Prefeito');

/*!40000 ALTER TABLE `oficio_prefeituras` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
