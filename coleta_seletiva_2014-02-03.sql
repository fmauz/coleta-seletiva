# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.16)
# Database: coleta_seletiva
# Generation Time: 2014-02-03 21:08:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table answer_collections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `answer_collections`;

CREATE TABLE `answer_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_id` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `event_js` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_answer_collections_on_answer_id` (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `answer_collections` WRITE;
/*!40000 ALTER TABLE `answer_collections` DISABLE KEYS */;

INSERT INTO `answer_collections` (`id`, `answer_id`, `text`, `value`, `created_at`, `updated_at`, `event_js`)
VALUES
	(1,21,'Sim -> Ir para GM01.1','true','2013-11-20 19:45:57','2013-11-20 19:45:57','show( \'GM01.1\' ); setFocus( \'GM01.1\' );'),
	(2,21,'Não-> Ir para GM02','false','2013-11-20 19:45:57','2013-11-20 19:45:57','hide( \'GM01.1\' ); setFocus( \'GM02\' );'),
	(3,23,'Sim -> Ir para GM02.1.','true','2013-11-20 19:46:58','2013-11-20 19:46:58','show( \'GM02.1\' ); setFocus( \'GM02.1\' );'),
	(4,23,'Não -> Ir para GM03.','false','2013-11-20 19:46:58','2013-11-20 19:46:58','hide( \'GM02.1\' ); setFocus( \'GM03\' );'),
	(5,25,'Sim -> Ir para GM03.1','true','2013-11-20 19:47:54','2013-11-20 19:47:54','show( \'GM03.1\' ); setFocus( \'GM03.1\' );'),
	(6,25,'Não -> Ir para GM04','false','2013-11-20 19:47:54','2013-11-20 19:47:54','hide( \'GM03.1\' ); setFocus( \'GM04\' );'),
	(7,27,'Sim -> Ir para GM04.1','true','2013-11-20 19:48:33','2013-11-20 19:48:33','show( \'GM04.1\' ); setFocus( \'GM04.1\' );'),
	(8,27,'Não -> Ir para GM05.','false','2013-11-20 19:48:33','2013-11-20 19:48:33','hide( \'GM04.1\' ); setFocus( \'GM05\' );'),
	(9,29,'Sim -> Ir para GM05.1.','true','2013-11-20 19:49:11','2013-11-20 19:49:11','show( \'GM05.1\' ); setFocus( \'GM05.1\' ); show( \'GM05.1.1\' ); show( \'GM05.2\' ); show( \'GM05.2.1\' ); show( \'GM05.3\' ); show( \'GM05.3.1\' );'),
	(10,29,'Não -> Ir para o Bloco 3.','false','2013-11-20 19:49:11','2013-11-20 19:49:11','hide( \'GM05.1\' ); hide( \'GM05.1.1\' ); hide( \'GM05.2\' ); hide( \'GM05.2.1\' ); hide( \'GM05.3\' ); hide( \'GM05.3.1\' ); setFocus( \'QF01\' );'),
	(11,30,'Sim -> Ir para GM05.1.1','true','2013-11-20 19:51:29','2013-11-20 19:51:29',NULL),
	(12,30,'Não -> Ir para o Bloco 3.','false','2013-11-20 19:51:29','2013-11-20 19:51:29',NULL),
	(13,32,'Sim -> Ir para GM05.2.1','true','2013-11-20 19:52:20','2013-11-20 19:52:20',NULL),
	(14,32,'Não -> Ir para o Bloco 3','false','2013-11-20 19:52:20','2013-11-20 19:52:20',NULL),
	(15,34,'Sim -> Ir para GM05.3.1','true','2013-11-20 19:53:08','2013-11-20 19:53:08',NULL),
	(16,34,'Não -> Ir para o Bloco 3','false','2013-11-20 19:53:08','2013-11-20 19:53:08',NULL),
	(17,39,'Extra-quadro','true','2013-11-21 17:06:07','2013-11-21 17:06:07',NULL),
	(18,39,'Servidor efetivo','false','2013-11-21 17:06:07','2013-11-21 17:06:07',NULL),
	(19,45,'Sim -> Ir para CS01.1.1','true','2013-11-21 17:16:08','2013-11-21 17:16:08',NULL),
	(20,45,'Não -> Ir para CS01.2','false','2013-11-21 17:16:08','2013-11-21 17:16:08',NULL),
	(21,46,'Telefone da Secretaria','Telefone da Secretaria','2013-11-21 17:17:11','2013-11-21 17:17:11',NULL),
	(22,46,'Telefone exclusivo','Telefone exclusivo','2013-11-21 17:17:11','2013-11-21 17:17:11',NULL),
	(23,46,'E-mail exclusivo','E-mail exclusivo','2013-11-21 17:17:11','2013-11-21 17:17:11',NULL),
	(24,46,'Telefone e e-mail exclusivo','Telefone e e-mail exclusivo','2013-11-21 17:17:11','2013-11-21 17:17:11',NULL),
	(25,47,'Sim -> Ir para CS01.2.1','true','2013-11-21 17:18:41','2013-11-21 17:18:41',NULL),
	(26,47,'Não -> Ir para CS03','false','2013-11-21 17:18:41','2013-11-21 17:18:41',NULL),
	(27,48,'Telefone da Secretaria','Telefone da Secretaria','2013-11-21 17:19:22','2013-11-21 17:19:22',NULL),
	(28,48,'Telefone exclusivo','Telefone exclusivo','2013-11-21 17:19:22','2013-11-21 17:19:22',NULL),
	(29,48,'E-mail exclusivo','E-mail exclusivo','2013-11-21 17:19:22','2013-11-21 17:19:22',NULL),
	(30,48,'Telefone e e-mail exclusivo','Telefone e e-mail exclusivo','2013-11-21 17:19:22','2013-11-21 17:19:22',NULL),
	(31,49,'Sim -> Ir para CS02.1.','true','2013-11-21 17:20:21','2013-11-21 17:20:21',NULL),
	(32,49,'Não -> Ir para CS03','false','2013-11-21 17:20:21','2013-11-21 17:20:21',NULL),
	(33,53,'Contrato','Contrato','2013-11-21 17:21:35','2013-11-21 17:21:35',NULL),
	(34,53,'Convênio','Convênio','2013-11-21 17:21:35','2013-11-21 17:21:35',NULL),
	(35,53,'Servidor efetivo','Servidor efetivo','2013-11-21 17:21:35','2013-11-21 17:21:35',NULL),
	(36,54,'Fórum de Resíduos Sólidos','Fórum de Resíduos Sólidos','2013-11-21 17:25:35','2013-11-21 17:25:35',NULL),
	(37,54,'Conselhos Municipais de Meio Ambiente','Conselhos Municipais de Meio Ambiente','2013-11-21 17:25:35','2013-11-21 17:25:35',NULL),
	(38,54,'ONG’s de ação local','ONG’s de ação local','2013-11-21 17:25:35','2013-11-21 17:25:35',NULL),
	(39,54,'Instituições de Ensino e/ou Pesquisa','Instituições de Ensino e/ou Pesquisa','2013-11-21 17:25:35','2013-11-21 17:25:35',NULL),
	(40,54,'Associações de Moradores','Associações de Moradores','2013-11-21 17:25:35','2013-11-21 17:25:35',NULL),
	(41,54,'Igrejas','Igrejas','2013-11-21 17:25:35','2013-11-21 17:25:35',NULL),
	(42,54,'Sindicatos','Sindicatos','2013-11-21 17:25:35','2013-11-21 17:25:35',NULL),
	(43,54,'Federação de catadores','Federação de catadores','2013-11-21 17:25:35','2013-11-21 17:25:35',NULL),
	(44,54,'Movimento de catadores','Movimento de catadores','2013-11-21 17:25:35','2013-11-21 17:25:35',NULL),
	(45,54,'Outros','Outros','2013-11-21 17:25:35','2013-11-21 17:25:35',NULL),
	(46,56,'Sim -> Ir para RSU01.1','true','2013-11-21 17:36:30','2013-11-21 17:36:30',NULL),
	(47,56,'Não -> Ir para RSU02','false','2013-11-21 17:36:30','2013-11-21 17:36:30',NULL),
	(48,58,'Gestão de resíduos','Gestão de resíduos','2013-11-21 17:37:26','2013-11-21 17:37:26',NULL),
	(49,58,'Disposição final de RSU','Disposição final de RSU','2013-11-21 17:37:26','2013-11-21 17:37:26',NULL),
	(50,58,'De meio ambiente','De meio ambiente','2013-11-21 17:37:26','2013-11-21 17:37:26',NULL),
	(51,59,'Em discussão -> Ir para RSU02','Em discussão -> Ir para RSU02','2013-11-21 17:38:31','2013-11-21 17:38:31',NULL),
	(52,59,'Em formalização -> Ir para RSU02','Em formalização -> Ir para RSU02','2013-11-21 17:38:31','2013-11-21 17:38:31',NULL),
	(53,59,'Formalizado -> Ir para RSU01.4.; RSU01.5.','Formalizado -> Ir para RSU01.4.; RSU01.5.','2013-11-21 17:38:31','2013-11-21 17:38:31',NULL),
	(54,67,'Secretaria Municipal-> Ir para RSU05','Secretaria Municipal-> Ir para RSU05','2013-11-21 17:41:30','2013-11-21 17:41:30',NULL),
	(55,67,'Empresa mista-> Ir para RSU04.1.','Empresa mista-> Ir para RSU04.1.','2013-11-21 17:41:30','2013-11-21 17:41:30',NULL),
	(56,67,'Empresa pública -> Ir para RSU04.1.','Empresa pública -> Ir para RSU04.1.','2013-11-21 17:41:30','2013-11-21 17:41:30',NULL),
	(57,67,'Empresa terceirizada -> Ir para RSU04.1.','Empresa terceirizada -> Ir para RSU04.1.','2013-11-21 17:41:30','2013-11-21 17:41:30',NULL),
	(58,67,'Outros-> Ir para RSU04.1.','Outros-> Ir para RSU04.1.','2013-11-21 17:41:30','2013-11-21 17:41:30',NULL),
	(59,77,'Sim, ainda em andamento -> Ir para CS01.1','Sim, ainda em andamento -> Ir para CS01.1','2013-11-22 11:21:38','2013-11-22 11:21:38',NULL),
	(60,77,'Sim, mas foi interrompida-> Ir para CS01.1','Sim, mas foi interrompida-> Ir para CS01.1','2013-11-22 11:21:38','2013-11-22 11:21:38',NULL),
	(61,77,'Não-> Ir para CS02.','Não-> Ir para CS02.','2013-11-22 11:21:38','2013-11-22 11:21:38',NULL),
	(62,77,'Não sabe-> Ir para CS02.','Não sabe-> Ir para CS02.','2013-11-22 11:21:38','2013-11-22 11:21:38',NULL),
	(63,81,'Secretaria Municipal','Secretaria Municipal','2013-11-22 11:23:57','2013-11-22 11:23:57',NULL),
	(64,81,'Empresa pública','Empresa pública','2013-11-22 11:23:57','2013-11-22 11:23:57',NULL),
	(65,81,'Autarquia','Autarquia','2013-11-22 11:23:57','2013-11-22 11:23:57',NULL),
	(66,81,'Empresa privada','Empresa privada','2013-11-22 11:23:57','2013-11-22 11:23:57',NULL),
	(67,81,'ONG','ONG','2013-11-22 11:23:57','2013-11-22 11:23:57',NULL),
	(68,81,'Associações de Moradores','Associações de Moradores','2013-11-22 11:23:57','2013-11-22 11:23:57',NULL),
	(69,81,'Outros -> Ir para CS01.2.1.','Outros -> Ir para CS01.2.1.','2013-11-22 11:23:57','2013-11-22 11:23:57',NULL),
	(70,83,'Porta a porta com caminhão -> Ir para CS01.4.; CS01.5','Porta a porta com caminhão -> Ir para CS01.4.; CS01.5','2013-11-22 11:27:04','2013-11-22 11:27:04',NULL),
	(71,83,'Porta a porta com carrinho de mão -> Ir para CS01.4.; CS01.5','Porta a porta com carrinho de mão -> Ir para CS01.4.; CS01.5','2013-11-22 11:27:04','2013-11-22 11:27:04',NULL),
	(72,83,'Locais de Entrega Voluntária (LEVs)','Locais de Entrega Voluntária (LEVs)','2013-11-22 11:27:04','2013-11-22 11:27:04',NULL),
	(73,83,'Pontos de Entrega Voluntária','Pontos de Entrega Voluntária','2013-11-22 11:27:04','2013-11-22 11:27:04',NULL),
	(74,83,'Áreas de Transbordo e Triagem (ATTs)','Áreas de Transbordo e Triagem (ATTs)','2013-11-22 11:27:04','2013-11-22 11:27:04',NULL),
	(75,83,'Ponto a ponto (estabelecimentos comerciais, escolas, etc.)','Ponto a ponto (estabelecimentos comerciais, escolas, etc.)','2013-11-22 11:27:04','2013-11-22 11:27:04',NULL),
	(76,83,'Outros','Outros','2013-11-22 11:27:04','2013-11-22 11:27:04',NULL),
	(77,87,'Não','Não','2013-11-22 11:28:11','2013-11-22 11:28:11',NULL),
	(78,87,'Sim, apenas em Lixão e/ou área de transbordo','Sim, apenas em Lixão e/ou área de transbordo','2013-11-22 11:28:11','2013-11-22 11:28:11',NULL),
	(79,87,'Sim, apenas em Logradouros públicos','Sim, apenas em Logradouros públicos','2013-11-22 11:28:11','2013-11-22 11:28:11',NULL),
	(80,87,'Sim, tanto em Lixão e/ou área de transbordo como em Logradouros públicos','Sim, tanto em Lixão e/ou área de transbordo como em Logradouros públicos','2013-11-22 11:28:11','2013-11-22 11:28:11',NULL),
	(81,88,'Sim, cadastradas na Prefeitura -> Ir para CS03.1.','Sim, cadastradas na Prefeitura -> Ir para CS03.1.','2013-11-22 11:28:42','2013-11-22 11:28:42',NULL),
	(82,88,'Sim mas sem cadastro na Prefeitura','Sim mas sem cadastro na Prefeitura','2013-11-22 11:28:42','2013-11-22 11:28:42',NULL),
	(83,88,'Não foram identificadas -> Ir para CS04.','Não foram identificadas -> Ir para CS04.','2013-11-22 11:28:42','2013-11-22 11:28:42',NULL),
	(84,90,'Sim -> Ir para CS04.1.','Sim -> Ir para CS04.1.','2013-11-22 11:29:36','2013-11-22 11:29:36',NULL),
	(85,90,'Não -> Ir para CS05.','Não -> Ir para CS05.','2013-11-22 11:29:36','2013-11-22 11:29:36',NULL),
	(86,91,'Contrato de prestação de serviço','Contrato de prestação de serviço','2013-11-22 11:30:24','2013-11-22 11:30:24',NULL),
	(87,91,'Convênio','Convênio','2013-11-22 11:30:24','2013-11-22 11:30:24',NULL),
	(88,91,'Termo de cooperação técnica','Termo de cooperação técnica','2013-11-22 11:30:24','2013-11-22 11:30:24',NULL),
	(89,91,'Outro','Outro','2013-11-22 11:30:24','2013-11-22 11:30:24',NULL),
	(90,93,'Sim','true','2013-11-22 11:31:13','2013-11-22 11:31:13',NULL),
	(91,93,'Não','false','2013-11-22 11:31:13','2013-11-22 11:31:13',NULL),
	(92,95,'Sim -> Ir para CS06.1.','true','2013-11-22 11:31:51','2013-11-22 11:31:51',NULL),
	(93,95,'Não -> Ir para o Bloco 7','false','2013-11-22 11:31:51','2013-11-22 11:31:51',NULL),
	(94,96,'Secretaria Municipal','Secretaria Municipal','2013-11-22 11:34:30','2013-11-22 11:34:30',NULL),
	(95,96,'Empresa pública','Empresa pública','2013-11-22 11:34:30','2013-11-22 11:34:30',NULL),
	(96,96,'Empresa mista','Empresa mista','2013-11-22 11:34:30','2013-11-22 11:34:30',NULL),
	(97,96,'Empresa privada','Empresa privada','2013-11-22 11:34:30','2013-11-22 11:34:30',NULL),
	(98,96,'ONG','ONG','2013-11-22 11:34:30','2013-11-22 11:34:30',NULL),
	(99,96,'Associações de Moradores','Associações de Moradores','2013-11-22 11:34:30','2013-11-22 11:34:30',NULL),
	(100,96,'Cooperativas/Associação','Cooperativas/Associação','2013-11-22 11:34:30','2013-11-22 11:34:30',NULL),
	(101,96,'Ainda não definido','Ainda não definido','2013-11-22 11:34:30','2013-11-22 11:34:30',NULL),
	(102,97,'Porta a porta com caminhão','Porta a porta com caminhão','2013-11-22 11:35:40','2013-11-22 11:35:40',NULL),
	(103,97,'Porta a porta com carrinho de mão','Porta a porta com carrinho de mão','2013-11-22 11:35:40','2013-11-22 11:35:40',NULL),
	(104,97,'Locais de Entrega Voluntária (LEVs)','Locais de Entrega Voluntária (LEVs)','2013-11-22 11:35:40','2013-11-22 11:35:40',NULL),
	(105,97,'Pontos de Entrega Voluntária','Pontos de Entrega Voluntária','2013-11-22 11:35:40','2013-11-22 11:35:40',NULL),
	(106,97,'Áreas de Transbordo e Triagem (ATTs)','Áreas de Transbordo e Triagem (ATTs)','2013-11-22 11:35:40','2013-11-22 11:35:40',NULL),
	(107,97,'Ponto a ponto (estabelecimentos comerciais, escolas, órgãos públicos, etc.)','Ponto a ponto (estabelecimentos comerciais, escolas, órgãos públicos, etc.)','2013-11-22 11:35:40','2013-11-22 11:35:40',NULL),
	(108,97,'Outros','Outros','2013-11-22 11:35:40','2013-11-22 11:35:40',NULL),
	(109,99,'Sim, já foi escolhido -> Ir para CSS02.1.1.','Sim, já foi escolhido -> Ir para CSS02.1.1.','2013-11-22 11:36:36','2013-11-22 11:36:36',NULL),
	(110,99,'Ainda não foi escolhido -> Ir para CSS02.1.1.','Ainda não foi escolhido -> Ir para CSS02.1.1.','2013-11-22 11:36:36','2013-11-22 11:36:36',NULL),
	(111,99,'Já existe uma rota de coleta em andamento -> Ir para o Bloco 8.','Já existe uma rota de coleta em andamento -> Ir para o Bloco 8.','2013-11-22 11:36:36','2013-11-22 11:36:36',NULL),
	(112,101,'Sim -> Ir para IEA02.','Sim -> Ir para IEA02.','2013-11-22 11:39:03','2013-11-22 11:39:03',NULL),
	(113,101,'Não -> Ir para IEA03.','Não -> Ir para IEA03.','2013-11-22 11:39:03','2013-11-22 11:39:03',NULL),
	(114,113,'Município','Município','2013-11-22 11:47:54','2013-11-22 11:47:54',NULL),
	(115,113,'Organização de Catadores (Assoc/Coop)','Organização de Catadores (Assoc/Coop)','2013-11-22 11:47:54','2013-11-22 11:47:54',NULL),
	(116,113,'Iniciativa Privada','Iniciativa Privada','2013-11-22 11:47:54','2013-11-22 11:47:54',NULL),
	(117,113,'Outros','Outros','2013-11-22 11:47:54','2013-11-22 11:47:54',NULL),
	(118,146,'Sim -> Ir para FDR01.1.','true','2013-11-22 12:05:03','2013-11-22 12:05:03',NULL),
	(119,146,'Não-> Ir para o Bloco 10','false','2013-11-22 12:05:03','2013-11-22 12:05:03',NULL),
	(120,147,'Resíduos Sólidos Industriais','Resíduos Sólidos Industriais','2013-11-22 12:05:51','2013-11-22 12:05:51',NULL),
	(121,147,'Pilhas e baterias','Pilhas e baterias','2013-11-22 12:05:51','2013-11-22 12:05:51',NULL),
	(122,147,'Pneumáticos inservíveis','Pneumáticos inservíveis','2013-11-22 12:05:51','2013-11-22 12:05:51',NULL),
	(123,147,'Resíduos eletroeletrônicos','Resíduos eletroeletrônicos','2013-11-22 12:05:51','2013-11-22 12:05:51',NULL),
	(124,147,'Resíduos de serviço de saúde','Resíduos de serviço de saúde','2013-11-22 12:05:51','2013-11-22 12:05:51',NULL);

/*!40000 ALTER TABLE `answer_collections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table answer_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `answer_types`;

CREATE TABLE `answer_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `answer_types` WRITE;
/*!40000 ALTER TABLE `answer_types` DISABLE KEYS */;

INSERT INTO `answer_types` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Input Text','2013-11-20 18:32:08','2013-11-20 18:32:08'),
	(2,'CheckBoxes','2013-11-20 18:32:08','2013-11-20 18:32:08'),
	(3,'Radios','2013-11-20 18:32:08','2013-11-20 18:32:08'),
	(4,'Select','2013-11-20 18:32:08','2013-11-20 18:32:08');

/*!40000 ALTER TABLE `answer_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table answers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_type_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `label_text` varchar(255) DEFAULT NULL,
  `help_block` varchar(255) DEFAULT NULL,
  `css_class` varchar(255) DEFAULT NULL,
  `query_string` varchar(255) DEFAULT NULL,
  `element_ajax` varchar(255) DEFAULT NULL,
  `ajax_url` varchar(255) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `min_length` int(11) DEFAULT '1',
  `max_length` int(11) DEFAULT '25',
  `disabled` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `number_only` tinyint(1) DEFAULT NULL,
  `currency_only` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_answers_on_answer_type_id` (`answer_type_id`),
  KEY `index_answers_on_question_id` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;

INSERT INTO `answers` (`id`, `answer_type_id`, `question_id`, `placeholder`, `label_text`, `help_block`, `css_class`, `query_string`, `element_ajax`, `ajax_url`, `required`, `min_length`, `max_length`, `disabled`, `created_at`, `updated_at`, `number_only`, `currency_only`)
VALUES
	(2,1,2,'','','','col-sm-12','','','',1,1,25,0,'2013-11-20 18:48:53','2013-11-20 18:48:53',NULL,NULL),
	(3,1,3,'','','','col-sm-12','','county.code','',1,1,25,1,'2013-11-20 19:06:13','2013-11-20 19:06:13',NULL,NULL),
	(4,1,4,'','','','col-sm-12','county_code','','/counties.json?code={value}',1,1,25,1,'2013-11-20 19:06:34','2013-11-20 19:06:34',NULL,NULL),
	(5,1,5,'','','','col-sm-12','','county.cnpj','',1,1,25,1,'2013-11-20 19:14:15','2013-11-21 18:15:53',NULL,NULL),
	(7,1,7,'','','','col-sm-12','','county.logradouro_prefeitura','',1,1,25,1,'2013-11-20 19:14:50','2013-11-20 19:14:50',NULL,NULL),
	(8,1,8,'','','','col-sm-12','','county.numero_prefeitura','',1,1,25,1,'2013-11-20 19:14:58','2013-11-20 19:14:58',NULL,NULL),
	(9,1,9,'','','','col-sm-12','','county.complemento_prefeitura','',1,1,25,1,'2013-11-20 19:15:04','2013-11-20 19:15:04',NULL,NULL),
	(10,1,10,'','','','col-sm-12','','county.bairro_prefeitura','',1,1,25,1,'2013-11-20 19:15:11','2013-11-20 19:15:11',NULL,NULL),
	(11,1,12,'','','','col-sm-12','','county.populacao_total_municipio','',1,1,25,1,'2013-11-20 19:31:57','2013-11-20 19:31:57',NULL,NULL),
	(12,1,13,'','','','col-sm-12','','county.populacao_urbana','',1,1,25,1,'2013-11-20 19:32:04','2013-11-20 19:32:04',NULL,NULL),
	(13,1,14,'','','','col-sm-12','','county.extensao_territorial','',1,1,25,1,'2013-11-20 19:34:15','2013-11-20 19:34:15',NULL,NULL),
	(14,1,16,'','','','col-sm-12','','county.indice_destinacao','',1,1,25,1,'2013-11-20 19:34:20','2013-11-20 19:34:20',NULL,NULL),
	(15,1,17,'','','','col-sm-12','','county.n_bairros','',1,1,25,1,'2013-11-20 19:34:25','2013-11-20 19:34:25',NULL,NULL),
	(16,1,19,'','','','col-sm-12','','','',1,1,25,0,'2013-11-20 19:34:59','2013-11-20 19:34:59',NULL,NULL),
	(17,1,20,'','','','col-sm-12','','','',1,1,25,0,'2013-11-20 19:35:03','2013-11-20 19:35:03',NULL,NULL),
	(18,1,21,'','','','col-sm-12','','','',1,1,25,0,'2013-11-20 19:35:07','2013-11-20 19:35:07',NULL,NULL),
	(19,1,22,'','','','col-sm-12','','','',1,1,25,0,'2013-11-20 19:35:13','2013-11-20 19:35:13',NULL,NULL),
	(20,1,23,'','','','col-sm-12','','','',1,1,25,0,'2013-11-20 19:35:17','2013-11-20 19:35:17',NULL,NULL),
	(21,3,24,'','','','col-sm-12','','','',0,1,25,0,'2013-11-20 19:45:57','2013-11-20 19:45:57',NULL,NULL),
	(22,1,25,'','','','col-sm-12','','','',1,1,25,0,'2013-11-20 19:46:23','2013-11-20 19:46:23',NULL,NULL),
	(23,3,26,'','','','col-sm-12','','','',0,1,25,0,'2013-11-20 19:46:58','2013-11-20 19:46:58',NULL,NULL),
	(24,1,27,'','','','col-sm-12','','','',1,1,25,0,'2013-11-20 19:47:20','2013-11-20 19:47:20',NULL,NULL),
	(25,3,28,'','','','col-sm-12','','','',0,1,25,0,'2013-11-20 19:47:54','2013-11-20 19:47:54',NULL,NULL),
	(26,1,29,'','','','col-sm-12','','','',1,1,25,0,'2013-11-20 19:48:05','2013-11-20 19:48:05',NULL,NULL),
	(27,3,30,'','','','col-sm-12','','','',0,1,25,0,'2013-11-20 19:48:33','2013-11-20 19:48:33',NULL,NULL),
	(28,1,31,'','','','col-sm-12','','','',1,1,25,0,'2013-11-20 19:48:41','2013-11-20 19:48:41',NULL,NULL),
	(29,3,32,'','','','col-sm-12','','','',0,1,25,0,'2013-11-20 19:49:11','2013-11-20 19:49:11',NULL,NULL),
	(30,3,33,'','','','col-sm-12','','','',0,1,25,0,'2013-11-20 19:51:29','2013-11-20 19:51:29',NULL,NULL),
	(31,1,34,'','','','col-sm-12','','','',1,1,25,0,'2013-11-20 19:51:45','2013-11-20 19:51:45',NULL,NULL),
	(32,3,35,'','','','col-sm-12','','','',0,1,25,0,'2013-11-20 19:52:20','2013-11-20 19:52:20',NULL,NULL),
	(33,1,36,'','','','col-sm-12','','','',1,1,25,0,'2013-11-20 19:52:31','2013-11-20 19:52:31',NULL,NULL),
	(34,3,37,'','','','col-sm-12','','','',0,1,25,0,'2013-11-20 19:53:08','2013-11-20 19:53:08',NULL,NULL),
	(35,1,38,'','','','col-sm-12','','','',1,1,25,0,'2013-11-20 19:53:20','2013-11-20 19:53:20',NULL,NULL),
	(36,1,39,'','','','col-sm-12','','','',1,1,25,0,'2013-11-21 17:05:27','2013-11-21 17:05:27',NULL,NULL),
	(37,1,40,'','','','col-sm-12','','','',1,1,25,0,'2013-11-21 17:05:32','2013-11-21 17:05:32',NULL,NULL),
	(38,1,41,'','','','col-sm-12','','','',1,1,25,0,'2013-11-21 17:05:36','2013-11-21 17:05:36',NULL,NULL),
	(39,3,42,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:06:07','2013-11-21 17:06:07',NULL,NULL),
	(40,1,43,'','Coleta Domiciliar','','col-sm-6','','','',1,1,25,0,'2013-11-21 17:06:44','2013-11-21 17:07:45',NULL,NULL),
	(41,1,43,'','Varrição e Capina','','col-sm-6','','','',1,1,25,0,'2013-11-21 17:07:02','2013-11-21 17:07:50',NULL,NULL),
	(42,1,43,'','Poda de Árvores','','col-sm-6 marginTop','','','',1,1,25,0,'2013-11-21 17:07:11','2013-11-21 17:08:18',NULL,NULL),
	(43,1,43,'','Administrativo/Gestão','','col-sm-6 marginTop','','','',1,1,25,0,'2013-11-21 17:07:19','2013-11-21 17:08:24',NULL,NULL),
	(44,1,43,'','Outros','','col-sm-6 marginTop','','','',1,1,25,0,'2013-11-21 17:07:29','2013-11-21 17:08:30',NULL,NULL),
	(45,3,45,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:16:08','2013-11-21 17:16:08',NULL,NULL),
	(46,2,46,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:17:11','2013-11-21 17:17:11',NULL,NULL),
	(47,3,47,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:18:41','2013-11-21 17:18:41',NULL,NULL),
	(48,2,48,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:19:22','2013-11-21 17:19:22',NULL,NULL),
	(49,3,49,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:20:21','2013-11-21 17:20:21',NULL,NULL),
	(50,1,50,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:20:34','2013-11-21 17:20:34',NULL,NULL),
	(52,1,51,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:20:57','2013-11-21 17:20:57',NULL,NULL),
	(53,3,52,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:21:35','2013-11-21 17:21:35',NULL,NULL),
	(54,2,53,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:25:35','2013-11-21 17:25:35',NULL,NULL),
	(55,1,53,'Especifique','','','col-sm-12 marginTop','','','',0,1,25,0,'2013-11-21 17:25:49','2013-11-21 17:34:58',NULL,NULL),
	(56,3,54,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:36:30','2013-11-21 17:36:30',NULL,NULL),
	(57,1,55,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:36:38','2013-11-21 17:36:38',NULL,NULL),
	(58,3,56,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:37:26','2013-11-21 17:37:26',NULL,NULL),
	(59,3,57,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:38:31','2013-11-21 17:38:31',NULL,NULL),
	(60,1,58,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:39:11','2013-11-21 17:39:11',NULL,NULL),
	(61,1,59,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:39:24','2013-11-21 17:39:24',NULL,NULL),
	(62,1,60,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:39:50','2013-11-21 17:39:50',NULL,NULL),
	(63,1,61,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:39:53','2013-11-21 17:39:53',NULL,NULL),
	(64,1,62,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:39:57','2013-11-21 17:39:57',NULL,NULL),
	(65,1,63,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:40:00','2013-11-21 17:40:00',NULL,NULL),
	(66,1,64,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:40:04','2013-11-21 17:40:04',NULL,NULL),
	(67,2,65,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:41:30','2013-11-21 17:41:30',NULL,NULL),
	(68,1,66,'','','','col-sm-12','','','',0,1,25,0,'2013-11-21 17:41:53','2013-11-21 17:41:53',NULL,NULL),
	(69,1,67,'t/dia','1. Vazadouro a céu aberto (lixão)','','col-sm-6','','','',0,1,25,0,'2013-11-21 17:44:13','2013-11-21 17:45:40',NULL,NULL),
	(70,1,67,'t/dia','2. Vazadouro em áreas alagadas ou alagáveis','','col-sm-6','','','',0,1,25,0,'2013-11-21 17:44:23','2013-11-21 17:45:37',NULL,NULL),
	(71,1,67,'t/dia','3. Aterro controlado','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-21 17:44:31','2013-11-21 17:45:33',NULL,NULL),
	(72,1,67,'t/dia','4. Aterro sanitário','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-21 17:44:40','2013-11-21 17:45:28',NULL,NULL),
	(73,1,67,'t/dia','5. Unidade de compostagem de resíduos orgânicos','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-21 17:44:48','2013-11-21 17:45:25',NULL,NULL),
	(74,1,67,'t/dia','6. Unidade de triagem de resíduos recicláveis','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-21 17:44:59','2013-11-21 17:45:21',NULL,NULL),
	(75,1,67,'t/dia','7. Unidade de tratamento por incineração','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-21 17:45:15','2013-11-21 17:45:15',NULL,NULL),
	(76,1,71,'','','','col-sm-12','','','',1,1,25,0,'2013-11-21 18:22:54','2013-11-21 18:22:54',NULL,NULL),
	(77,3,72,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:21:38','2013-11-22 11:21:38',NULL,NULL),
	(78,1,74,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:21:52','2013-11-22 11:21:52',NULL,NULL),
	(79,1,75,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:22:01','2013-11-22 11:22:01',NULL,NULL),
	(80,1,76,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:22:05','2013-11-22 11:22:05',NULL,NULL),
	(81,3,77,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:23:57','2013-11-22 11:23:57',NULL,NULL),
	(82,1,78,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:24:17','2013-11-22 11:24:17',NULL,NULL),
	(83,2,79,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:25:13','2013-11-22 11:25:13',NULL,NULL),
	(84,1,79,'','7.1. Especifique','','col-sm-12 marginTop','','','',0,1,25,0,'2013-11-22 11:25:33','2013-11-22 11:25:33',NULL,NULL),
	(85,1,80,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:27:19','2013-11-22 11:27:19',NULL,NULL),
	(86,1,81,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:27:22','2013-11-22 11:27:22',NULL,NULL),
	(87,3,82,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:28:11','2013-11-22 11:28:11',NULL,NULL),
	(88,3,83,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:28:42','2013-11-22 11:28:42',NULL,NULL),
	(89,1,84,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:29:08','2013-11-22 11:29:08',NULL,NULL),
	(90,3,85,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:29:36','2013-11-22 11:29:36',NULL,NULL),
	(91,2,86,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:30:24','2013-11-22 11:30:24',NULL,NULL),
	(92,1,86,'','','','col-sm-12 marginTop','','','',0,1,25,0,'2013-11-22 11:30:38','2013-11-22 11:30:38',NULL,NULL),
	(93,3,87,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:31:13','2013-11-22 11:31:13',NULL,NULL),
	(94,1,89,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:31:31','2013-11-22 11:31:31',NULL,NULL),
	(95,3,88,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:31:51','2013-11-22 11:31:51',NULL,NULL),
	(96,3,90,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:34:30','2013-11-22 11:34:30',NULL,NULL),
	(97,2,91,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:35:40','2013-11-22 11:35:40',NULL,NULL),
	(98,1,91,'','Especifique','','col-sm-12 marginTop','','','',0,1,25,0,'2013-11-22 11:35:55','2013-11-22 11:35:55',NULL,NULL),
	(99,3,92,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:36:36','2013-11-22 11:36:36',NULL,NULL),
	(100,1,93,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:36:49','2013-11-22 11:36:49',NULL,NULL),
	(101,3,94,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:39:03','2013-11-22 11:39:03',NULL,NULL),
	(102,1,95,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:39:21','2013-11-22 11:39:21',NULL,NULL),
	(103,1,96,'','1. Área média dos terrenos','','col-sm-4','','','',0,1,25,0,'2013-11-22 11:39:36','2013-11-22 11:40:18',NULL,NULL),
	(104,1,96,'','2. Área média dos galpões:','','col-sm-4','','','',0,1,25,0,'2013-11-22 11:39:45','2013-11-22 11:40:23',NULL,NULL),
	(105,1,96,'','3. Área média de apoio:','','col-sm-4','','','',0,1,25,0,'2013-11-22 11:39:53','2013-11-22 11:40:29',NULL,NULL),
	(106,1,97,'','1. Corresponde à estrutura de uma usina Pró-Lixo:','','col-sm-6','','','',0,1,25,0,'2013-11-22 11:41:21','2013-11-22 11:45:21',NULL,NULL),
	(107,1,97,'','2. Possuem cobertura:','','col-sm-3','','','',0,1,25,0,'2013-11-22 11:41:28','2013-11-22 11:45:11',NULL,NULL),
	(108,1,97,'','3. Possuem fechamento lateral:','','col-sm-3','','','',0,1,25,0,'2013-11-22 11:41:37','2013-11-22 11:45:16',NULL,NULL),
	(109,1,97,'','4. Possuem instalações elétricas e hidráulicas em funcionamento:','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 11:41:44','2013-11-22 11:46:59',NULL,NULL),
	(110,1,97,'','5. Contêm banheiros:','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 11:41:50','2013-11-22 11:47:04',NULL,NULL),
	(111,1,97,'','6. Contêm cozinha/copa:','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 11:41:57','2013-11-22 11:46:48',NULL,NULL),
	(112,1,97,'','7. Contêm escritório:','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 11:42:05','2013-11-22 11:46:54',NULL,NULL),
	(113,2,98,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:47:54','2013-11-22 11:47:54',NULL,NULL),
	(114,1,98,'','Especifique:','','col-sm-12 marginTop','','','',0,1,25,0,'2013-11-22 11:48:05','2013-11-22 11:48:05',NULL,NULL),
	(115,1,99,'Quantidade','1. Esteira','','col-sm-3','','','',0,1,25,0,'2013-11-22 11:48:22','2013-11-22 11:48:22',NULL,NULL),
	(116,1,99,'Quantidade','2. Prensa','','col-md-3','','','',0,1,25,0,'2013-11-22 11:48:34','2013-11-22 11:48:34',NULL,NULL),
	(117,1,99,'Quantidade','3. Balança manual (ou mecânica)','','col-md-3','','','',0,1,25,0,'2013-11-22 11:48:44','2013-11-22 11:48:44',NULL,NULL),
	(118,1,99,'Quantidade','4. Balança eletromecânica','','col-md-3','','','',0,1,25,0,'2013-11-22 11:48:54','2013-11-22 11:48:54',NULL,NULL),
	(119,1,99,'Quantidade','5. Balança eletrônica','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:49:05','2013-11-22 11:49:05',NULL,NULL),
	(120,1,99,'Quantidade','6. Balança rodoviária','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:49:13','2013-11-22 11:49:13',NULL,NULL),
	(121,1,99,'Quantidade','7. Mesa de seleção','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:49:21','2013-11-22 11:49:21',NULL,NULL),
	(122,1,99,'Quantidade','8. Elevador de fardo elétrico','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:49:29','2013-11-22 11:49:29',NULL,NULL),
	(123,1,99,'Quantidade','9. Elevador de carga','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:49:37','2013-11-22 11:49:37',NULL,NULL),
	(124,1,99,'Quantidade','10.Empilhadeira Mecânica','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:49:44','2013-11-22 11:49:44',NULL,NULL),
	(125,1,99,'Quantidade','11.Picotadora de papel','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:49:52','2013-11-22 11:49:52',NULL,NULL),
	(126,1,99,'Quantidade','12.Caminhão compactador','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:49:59','2013-11-22 11:49:59',NULL,NULL),
	(127,1,99,'Quantidade','13.Caminhão baú','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:50:07','2013-11-22 11:50:07',NULL,NULL),
	(128,1,99,'Quantidade','14.Caminhão com caçamba com grade','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:50:15','2013-11-22 11:50:15',NULL,NULL),
	(129,1,99,'Quantidade','15.Caminhão com caçamba sem grade','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:50:23','2013-11-22 11:50:23',NULL,NULL),
	(130,1,99,'Quantidade','16.Retroescavadeira','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:50:30','2013-11-22 11:50:30',NULL,NULL),
	(131,1,99,'Quantidade','17.Trator com carroceria','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:50:38','2013-11-22 11:50:38',NULL,NULL),
	(132,1,99,'Quantidade','18.Paleteira','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:50:45','2013-11-22 11:50:45',NULL,NULL),
	(133,1,99,'Quantidade','19.Carrinho de mão','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:50:52','2013-11-22 11:50:52',NULL,NULL),
	(134,1,99,'Quantidade','20.Carrinho para fardo','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:51:10','2013-11-22 11:51:10',NULL,NULL),
	(135,1,99,'Quantidade','21.Computadores','','col-md-3 marginTop','','','',0,1,25,0,'2013-11-22 11:51:15','2013-11-22 11:51:15',NULL,NULL),
	(136,1,100,'R$','1. Total','','col-sm-12','','','',0,1,25,0,'2013-11-22 11:57:31','2013-11-22 11:57:31',NULL,NULL),
	(137,1,100,'R$','2. Investido em Gestão de Resíduos Sólidos:','','col-sm-8 marginTop','','','',0,1,25,0,'2013-11-22 11:57:57','2013-11-22 11:57:57',NULL,NULL),
	(138,1,100,'','IA01.1. Recursos Próprios (%)','','col-sm-4 marginTop','','','',0,1,25,0,'2013-11-22 11:58:33','2013-11-22 11:58:33',NULL,NULL),
	(139,1,100,'R$','3. Investido em Limpeza Urbana:','','col-sm-8 marginTop','','','',0,1,25,0,'2013-11-22 11:59:22','2013-11-22 11:59:22',NULL,NULL),
	(140,1,100,'','IA01.1. Recursos Próprios (%)','','col-sm-4 marginTop','','','',0,1,25,0,'2013-11-22 11:59:36','2013-11-22 11:59:36',NULL,NULL),
	(141,1,100,'R$','4. Investido em Coleta Seletiva:','','col-sm-8 marginTop','','','',0,1,25,0,'2013-11-22 12:00:08','2013-11-22 12:00:08',NULL,NULL),
	(142,1,100,'','IA01.1. Recursos Próprios (%)','','col-sm-4 marginTop','','','',0,1,25,0,'2013-11-22 12:00:25','2013-11-22 12:00:25',NULL,NULL),
	(143,1,101,'R$/mês','1. Valor médio mensal gasto com a coleta de RSU:','','col-sm-12 marginTop','','','',0,1,25,0,'2013-11-22 12:01:02','2013-11-22 12:01:02',NULL,NULL),
	(144,1,101,'R$/mês','2. Valor médio mensal gasto com varrição e capina:','','col-sm-12 marginTop','','','',0,1,25,0,'2013-11-22 12:01:12','2013-11-22 12:01:12',NULL,NULL),
	(145,1,101,'R$/mês','3. Valor médio mensal gasto com disposição final de RSU:','','col-sm-12 marginTop','','','',0,1,25,0,'2013-11-22 12:01:30','2013-11-22 12:01:30',NULL,NULL),
	(146,3,102,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 12:05:03','2013-11-22 12:05:03',NULL,NULL),
	(147,2,103,'','','','col-sm-12','','','',0,1,25,0,'2013-11-22 12:05:51','2013-11-22 12:05:51',NULL,NULL),
	(148,1,104,'Quantidade Total','1. Escolas municipais','','col-sm-6','','','',0,1,25,0,'2013-11-22 12:07:10','2013-11-22 12:07:10',NULL,NULL),
	(149,1,104,'','Com coleta seletiva implantada ','','col-sm-6','','','',0,1,25,0,'2013-11-22 12:07:48','2013-11-22 12:09:17',NULL,NULL),
	(150,1,104,'Quantidade Total','2. Escolas estaduais','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:09:53','2013-11-22 12:09:53',NULL,NULL),
	(151,1,104,'','Com coleta seletiva implantada','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:10:02','2013-11-22 12:10:02',NULL,NULL),
	(152,1,104,'Quantidade Total','3. Escolas federais','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:10:11','2013-11-22 12:10:21',NULL,NULL),
	(153,1,104,'','Com coleta seletiva implantada','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:10:31','2013-11-22 12:10:51',NULL,NULL),
	(154,1,104,'Quantidade Total','4. Hospitais / Postos de Saúde municipais','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:11:06','2013-11-22 12:11:06',NULL,NULL),
	(155,1,104,'','Com coleta seletiva implantada','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:11:21','2013-11-22 12:11:21',NULL,NULL),
	(156,1,104,'Quantidade Total','5. Hospitais / Postos de Saúde estaduais','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:11:33','2013-11-22 12:12:50',NULL,NULL),
	(157,1,104,'','Com coleta seletiva implantada','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:11:44','2013-11-22 12:11:44',NULL,NULL),
	(158,1,104,'Quantidade Total','6. Hospitais / Postos de Saúde federais','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:11:58','2013-11-22 12:11:58',NULL,NULL),
	(159,1,104,'','Com coleta seletiva implantada','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:12:08','2013-11-22 12:12:08',NULL,NULL),
	(160,1,104,'Quantidade Total','7. Demais Prédios públicos municipais','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:12:23','2013-11-22 12:12:23',NULL,NULL),
	(161,1,104,'','Com coleta seletiva implantada','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:12:38','2013-11-22 12:12:38',NULL,NULL),
	(162,1,104,'Quantidade Total','8. Demais Prédios públicos estaduais','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:13:07','2013-11-22 12:13:18',NULL,NULL),
	(163,1,104,'','Com coleta seletiva implantada','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:13:30','2013-11-22 12:13:30',NULL,NULL),
	(164,1,104,'Quantidade Total','9. Demais Prédios públicos federais','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:13:41','2013-11-22 12:14:03',NULL,NULL),
	(165,1,104,'','Com coleta seletiva implantada','','col-sm-6 marginTop','','','',0,1,25,0,'2013-11-22 12:13:50','2013-11-22 12:14:13',NULL,NULL),
	(169,1,106,'','','','col-sm-12','','','',0,1,25,0,'2013-11-26 02:51:55','2013-11-26 02:51:55',NULL,NULL),
	(170,1,107,'','','','col-sm-12','','','',0,1,25,0,'2013-11-26 02:52:40','2013-11-26 02:52:40',NULL,NULL),
	(171,1,108,'','','','col-sm-12','','','',0,1,25,0,'2013-11-26 02:53:28','2013-11-26 02:53:28',NULL,NULL),
	(172,1,109,'','','','col-sm-12','','','',0,1,25,0,'2013-11-26 02:54:25','2013-11-26 02:54:25',NULL,NULL),
	(173,1,110,'','','','col-sm-12','','','',0,1,25,0,'2013-11-26 02:54:48','2013-11-26 02:54:48',NULL,NULL),
	(174,1,111,'','','','col-sm-12','','','',0,1,25,0,'2013-11-26 02:55:16','2013-11-26 02:55:16',NULL,NULL),
	(175,1,112,'','','','col-sm-12','','','',0,1,25,0,'2013-11-26 02:59:16','2013-11-26 02:59:16',NULL,NULL),
	(176,1,113,'','','','col-sm-12','','','',0,1,25,0,'2013-11-26 02:59:39','2013-11-26 02:59:39',NULL,NULL),
	(177,1,114,'','','','col-sm-12','','','',0,1,25,0,'2013-11-26 03:07:24','2013-11-26 03:07:24',NULL,NULL),
	(178,1,115,'','','','col-sm-12','','','',0,1,25,0,'2013-11-26 03:07:47','2013-11-26 03:07:47',NULL,NULL),
	(179,1,116,'','','','col-sm-12','','','',0,1,25,0,'2013-11-26 03:08:07','2013-11-26 03:08:07',NULL,NULL),
	(180,1,117,'','','','col-sm-12','','','',0,1,25,0,'2013-11-26 03:08:26','2013-11-26 03:08:26',NULL,NULL),
	(181,1,118,'','','','col-sm-12','','','',0,1,25,0,'2013-11-26 03:08:41','2013-11-26 03:08:41',NULL,NULL),
	(182,1,119,'Toneladas / Dia','Numero de toneladas','','col-sm-12','','','',1,1,25,0,'2013-11-26 12:22:06','2013-11-26 12:22:06',NULL,NULL);

/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table card_answers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `card_answers`;

CREATE TABLE `card_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `card_question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_card_answers_on_answer_id` (`answer_id`),
  KEY `index_card_answers_on_card_question_id` (`card_question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `card_answers` WRITE;
/*!40000 ALTER TABLE `card_answers` DISABLE KEYS */;

INSERT INTO `card_answers` (`id`, `value`, `card_question_id`, `answer_id`, `created_at`, `updated_at`)
VALUES
	(212,'',99,169,'2013-11-26 12:25:09','2013-11-26 12:25:09'),
	(213,'fasdfasdf',100,182,'2013-11-26 12:25:09','2013-11-26 12:25:09'),
	(214,'asdfasddf',101,182,'2013-11-26 12:25:09','2013-11-26 12:25:09'),
	(215,'fasdfasdfasdfsa',102,182,'2013-11-26 12:25:09','2013-11-26 12:25:09'),
	(216,'tes',103,76,'2013-12-05 21:44:29','2013-12-05 21:44:29'),
	(217,'tesasdfsda ads falsdskadf',104,2,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(218,'3304557',105,3,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(219,'Rio de Janeiro',106,4,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(220,'00.000.000/0000-00',107,5,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(221,'LOGRADOURO',109,7,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(222,'NUMERO',110,8,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(223,'COMPLEMENTO',111,9,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(224,'Bairro',112,10,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(225,'0',114,11,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(226,'0',115,12,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(227,'0',116,13,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(228,'0',117,14,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(229,'0',118,15,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(230,'fasdh',120,16,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(231,'jh',121,17,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(232,'h',122,18,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(233,'hj',123,19,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(234,'h',124,20,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(235,NULL,125,21,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(236,'jk',126,22,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(237,NULL,127,23,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(238,'hkj',128,24,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(239,NULL,129,25,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(240,'jkh',130,26,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(241,NULL,131,27,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(242,'kjh',132,28,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(243,NULL,133,29,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(244,NULL,134,30,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(245,'jkh',135,31,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(246,NULL,136,32,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(247,'kjh',137,33,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(248,NULL,138,34,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(249,'hjk',139,35,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(250,'hjk',140,36,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(251,'hjk',141,37,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(252,'hjk',142,38,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(253,NULL,143,39,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(254,'hjk',144,40,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(255,'hjk',144,41,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(256,'hjk',144,42,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(257,'hjk',144,43,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(258,'hjk',144,44,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(259,NULL,146,45,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(260,NULL,147,46,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(261,'{:onchange=>nil}',147,46,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(262,'{:onchange=>nil}',147,46,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(263,'{:onchange=>nil}',147,46,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(264,'{:onchange=>nil}',147,46,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(265,NULL,148,47,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(266,NULL,149,48,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(267,'{:onchange=>nil}',149,48,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(268,'{:onchange=>nil}',149,48,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(269,'{:onchange=>nil}',149,48,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(270,'{:onchange=>nil}',149,48,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(271,NULL,150,49,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(272,'',151,50,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(273,'',152,52,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(274,NULL,153,53,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(275,NULL,154,54,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(276,'{:onchange=>nil}',154,54,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(277,'{:onchange=>nil}',154,54,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(278,'{:onchange=>nil}',154,54,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(279,'{:onchange=>nil}',154,54,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(280,'{:onchange=>nil}',154,54,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(281,'{:onchange=>nil}',154,54,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(282,'{:onchange=>nil}',154,54,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(283,'{:onchange=>nil}',154,54,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(284,'{:onchange=>nil}',154,54,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(285,'{:onchange=>nil}',154,54,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(286,'',154,55,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(287,NULL,155,56,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(288,'',156,57,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(289,NULL,157,58,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(290,NULL,158,59,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(291,'',159,60,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(292,'',160,61,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(293,'',161,62,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(294,'',162,63,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(295,'',163,64,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(296,'',164,65,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(297,'',165,66,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(298,NULL,166,67,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(299,'{:onchange=>nil}',166,67,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(300,'{:onchange=>nil}',166,67,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(301,'{:onchange=>nil}',166,67,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(302,'{:onchange=>nil}',166,67,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(303,'{:onchange=>nil}',166,67,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(304,'',167,68,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(305,'',168,69,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(306,'',168,70,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(307,'',168,71,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(308,'',168,72,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(309,'',168,73,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(310,'',168,74,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(311,'',168,75,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(312,NULL,169,77,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(313,'',171,78,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(314,'',172,79,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(315,'',173,80,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(316,NULL,174,81,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(317,'',175,82,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(318,NULL,176,83,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(319,'{:onchange=>nil}',176,83,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(320,'{:onchange=>nil}',176,83,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(321,'{:onchange=>nil}',176,83,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(322,'{:onchange=>nil}',176,83,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(323,'{:onchange=>nil}',176,83,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(324,'{:onchange=>nil}',176,83,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(325,'{:onchange=>nil}',176,83,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(326,'',176,84,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(327,'',177,85,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(328,'',178,86,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(329,NULL,179,87,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(330,NULL,180,88,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(331,'',181,89,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(332,NULL,182,90,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(333,NULL,183,91,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(334,'{:onchange=>nil}',183,91,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(335,'{:onchange=>nil}',183,91,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(336,'{:onchange=>nil}',183,91,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(337,'{:onchange=>nil}',183,91,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(338,'',183,92,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(339,NULL,184,93,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(340,NULL,185,95,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(341,'',186,94,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(342,NULL,187,96,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(343,NULL,188,97,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(344,'{:onchange=>nil}',188,97,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(345,'{:onchange=>nil}',188,97,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(346,'{:onchange=>nil}',188,97,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(347,'{:onchange=>nil}',188,97,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(348,'{:onchange=>nil}',188,97,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(349,'{:onchange=>nil}',188,97,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(350,'{:onchange=>nil}',188,97,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(351,'',188,98,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(352,NULL,189,99,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(353,'',190,100,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(354,NULL,191,101,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(355,'',192,102,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(356,'',193,103,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(357,'',193,104,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(358,'',193,105,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(359,'',194,106,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(360,'',194,107,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(361,'',194,108,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(362,'',194,109,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(363,'',194,110,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(364,'',194,111,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(365,'',194,112,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(366,NULL,195,113,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(367,'{:onchange=>nil}',195,113,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(368,'{:onchange=>nil}',195,113,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(369,'{:onchange=>nil}',195,113,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(370,'{:onchange=>nil}',195,113,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(371,'',195,114,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(372,'',196,115,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(373,'',196,116,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(374,'',196,117,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(375,'',196,118,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(376,'',196,119,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(377,'',196,120,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(378,'',196,121,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(379,'',196,122,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(380,'',196,123,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(381,'',196,124,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(382,'',196,125,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(383,'',196,126,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(384,'',196,127,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(385,'',196,128,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(386,'',196,129,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(387,'',196,130,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(388,'',196,131,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(389,'',196,132,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(390,'',196,133,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(391,'',196,134,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(392,'',196,135,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(393,'',197,136,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(394,'',197,137,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(395,'',197,138,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(396,'',197,139,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(397,'',197,140,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(398,'',197,141,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(399,'',197,142,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(400,'',198,143,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(401,'',198,144,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(402,'',198,145,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(403,NULL,199,146,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(404,NULL,200,147,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(405,'{:onchange=>nil}',200,147,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(406,'{:onchange=>nil}',200,147,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(407,'{:onchange=>nil}',200,147,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(408,'{:onchange=>nil}',200,147,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(409,'{:onchange=>nil}',200,147,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(410,'',201,148,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(411,'',201,149,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(412,'',201,150,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(413,'',201,151,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(414,'',201,152,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(415,'',201,153,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(416,'',201,154,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(417,'',201,155,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(418,'',201,156,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(419,'',201,157,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(420,'',201,158,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(421,'',201,159,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(422,'',201,160,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(423,'',201,161,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(424,'',201,162,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(425,'',201,163,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(426,'',201,164,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(427,'',201,165,'2013-12-05 21:45:24','2013-12-05 21:45:24');

/*!40000 ALTER TABLE `card_answers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table card_questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `card_questions`;

CREATE TABLE `card_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_card_questions_on_card_id` (`card_id`),
  KEY `index_card_questions_on_question_id` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `card_questions` WRITE;
/*!40000 ALTER TABLE `card_questions` DISABLE KEYS */;

INSERT INTO `card_questions` (`id`, `card_id`, `question_id`, `created_at`, `updated_at`)
VALUES
	(99,2,106,'2013-11-26 12:25:09','2013-11-26 12:25:09'),
	(100,2,119,'2013-11-26 12:25:09','2013-11-26 12:25:09'),
	(101,2,119,'2013-11-26 12:25:09','2013-11-26 12:25:09'),
	(102,2,119,'2013-11-26 12:25:09','2013-11-26 12:25:09'),
	(103,3,71,'2013-12-05 21:44:29','2013-12-05 21:44:29'),
	(104,4,2,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(105,4,3,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(106,4,4,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(107,4,5,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(108,4,6,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(109,4,7,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(110,4,8,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(111,4,9,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(112,4,10,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(113,4,11,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(114,4,12,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(115,4,13,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(116,4,14,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(117,4,16,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(118,4,17,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(119,4,18,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(120,4,19,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(121,4,20,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(122,4,21,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(123,4,22,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(124,4,23,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(125,4,24,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(126,4,25,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(127,4,26,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(128,4,27,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(129,4,28,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(130,4,29,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(131,4,30,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(132,4,31,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(133,4,32,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(134,4,33,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(135,4,34,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(136,4,35,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(137,4,36,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(138,4,37,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(139,4,38,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(140,4,39,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(141,4,40,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(142,4,41,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(143,4,42,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(144,4,43,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(145,4,44,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(146,4,45,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(147,4,46,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(148,4,47,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(149,4,48,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(150,4,49,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(151,4,50,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(152,4,51,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(153,4,52,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(154,4,53,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(155,4,54,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(156,4,55,'2013-12-05 21:45:23','2013-12-05 21:45:23'),
	(157,4,56,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(158,4,57,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(159,4,58,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(160,4,59,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(161,4,60,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(162,4,61,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(163,4,62,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(164,4,63,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(165,4,64,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(166,4,65,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(167,4,66,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(168,4,67,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(169,4,72,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(170,4,73,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(171,4,74,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(172,4,75,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(173,4,76,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(174,4,77,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(175,4,78,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(176,4,79,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(177,4,80,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(178,4,81,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(179,4,82,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(180,4,83,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(181,4,84,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(182,4,85,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(183,4,86,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(184,4,87,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(185,4,88,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(186,4,89,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(187,4,90,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(188,4,91,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(189,4,92,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(190,4,93,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(191,4,94,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(192,4,95,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(193,4,96,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(194,4,97,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(195,4,98,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(196,4,99,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(197,4,100,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(198,4,101,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(199,4,102,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(200,4,103,'2013-12-05 21:45:24','2013-12-05 21:45:24'),
	(201,4,104,'2013-12-05 21:45:24','2013-12-05 21:45:24');

/*!40000 ALTER TABLE `card_questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cards
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cards`;

CREATE TABLE `cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) DEFAULT NULL,
  `survey_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `county_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cards_on_county_id` (`county_id`),
  KEY `index_cards_on_person_id` (`person_id`),
  KEY `index_cards_on_survey_id` (`survey_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;

INSERT INTO `cards` (`id`, `year`, `survey_id`, `person_id`, `county_id`, `created_at`, `updated_at`, `month`)
VALUES
	(2,'2013',4,1,68,'2013-11-26 12:25:09','2013-11-26 12:25:09',''),
	(3,'2013',2,1,68,'2013-12-05 21:44:29','2013-12-05 21:44:29',''),
	(4,'2013',1,1,68,'2013-12-05 21:45:23','2013-12-05 21:45:23','');

/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table counties
# ------------------------------------------------------------

DROP TABLE IF EXISTS `counties`;

CREATE TABLE `counties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `logradouro_prefeitura` varchar(255) DEFAULT NULL,
  `numero_prefeitura` varchar(255) DEFAULT NULL,
  `complemento_prefeitura` varchar(255) DEFAULT NULL,
  `bairro_prefeitura` varchar(255) DEFAULT NULL,
  `populacao_total_municipio` varchar(255) DEFAULT NULL,
  `populacao_urbana` varchar(255) DEFAULT NULL,
  `extensao_territorial` varchar(255) DEFAULT NULL,
  `indice_destinacao` varchar(255) DEFAULT NULL,
  `n_bairros` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `counties` WRITE;
/*!40000 ALTER TABLE `counties` DISABLE KEYS */;

INSERT INTO `counties` (`id`, `name`, `code`, `cnpj`, `created_at`, `updated_at`, `logradouro_prefeitura`, `numero_prefeitura`, `complemento_prefeitura`, `bairro_prefeitura`, `populacao_total_municipio`, `populacao_urbana`, `extensao_territorial`, `indice_destinacao`, `n_bairros`)
VALUES
	(1,'ANGRA DOS REIS','3300100','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(2,'APERIBE','3300159','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(3,'ARARUAMA','3300209','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(4,'AREAL','3300225','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(5,'ARMACAO DOS BUZIOS','3300233','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(6,'ARRAIAL DO CABO','3300258','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(7,'BARRA DO PIRAI','3300308','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(8,'BARRA MANSA','3300407','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(9,'BELFORD ROXO','3300456','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(10,'BOM JARDIM','3300506','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(11,'BOM JESUS DO ITABAPOANA','3300605','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(12,'CABO FRIO','3300704','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(13,'CACHOEIRAS DE MACACU','3300803','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(14,'CAMBUCI','3300902','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(15,'CARAPEBUS','3300936','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(16,'COMENDADOR LEVY GASPARIAN','3300951','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(17,'CAMPOS DOS GOYTACAZES','3301009','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(18,'CANTAGALO','3301108','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(19,'CARDOSO MOREIRA','3301157','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(20,'CARMO','3301207','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(21,'CASIMIRO DE ABREU','3301306','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(22,'CONCEICAO DE MACABU','3301405','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(23,'CORDEIRO','3301504','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(24,'DUAS BARRAS','3301603','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(25,'DUQUE DE CAXIAS','3301702','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(26,'ENGENHEIRO PAULO DE FRONTIN','3301801','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(27,'GUAPIMIRIM','3301850','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(28,'IGUABA GRANDE','3301876','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(29,'ITABORAI','3301900','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(30,'ITAGUAI','3302007','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(31,'ITALVA','3302056','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(32,'ITAOCARA','3302106','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(33,'ITAPERUNA','3302205','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(34,'ITATIAIA','3302254','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(35,'JAPERI','3302270','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(36,'LAJE DO MURIAE','3302304','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(37,'MACAE','3302403','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(38,'MACUCO','3302452','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(39,'MAGE','3302502','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(40,'MANGARATIBA','3302601','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(41,'MARICA','3302700','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(42,'MENDES','3302809','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(43,'MESQUITA','3302858','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(44,'MIGUEL PEREIRA','3302908','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(45,'MIRACEMA','3303005','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(46,'NATIVIDADE','3303104','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(47,'NILOPOLIS','3303203','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(48,'NITEROI','3303302','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(49,'NOVA FRIBURGO','3303401','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(50,'NOVA IGUACU','3303500','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(51,'PARACAMBI','3303609','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(52,'PARAIBA DO SUL','3303708','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(53,'PARATI','3303807','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(54,'PATY DO ALFERES','3303856','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(55,'PETROPOLIS','3303906','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(56,'PINHEIRAL','3303955','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(57,'PIRAI','3304003','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(58,'PORCIUNCULA','3304102','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(59,'PORTO REAL','3304110','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(60,'QUATIS','3304128','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(61,'QUEIMADOS','3304144','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(62,'QUISSAMA','3304151','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(63,'RESENDE','3304201','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(64,'RIO BONITO','3304300','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(65,'RIO CLARO','3304409','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(66,'RIO DAS FLORES','3304508','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(67,'RIO DAS OSTRAS','3304524','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(68,'RIO DE JANEIRO','3304557','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(69,'SANTA MARIA MADALENA','3304607','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(70,'SANTO ANTONIO DE PADUA','3304706','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(71,'SAO FRANCISCO DE ITABAPOANA','3304755','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(72,'SAO FIDELIS','3304805','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(73,'SAO GONCALO','3304904','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(74,'SAO JOAO DA BARRA','3305000','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(75,'SAO JOAO DE MERITI','3305109','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(76,'SAO JOSE DE UBA','3305133','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(77,'SAO JOSE DO VALE DO RIO PRETO','3305158','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(78,'SAO PEDRO DA ALDEIA','3305208','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(79,'SAO SEBASTIAO DO ALTO','3305307','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(80,'SAPUCAIA','3305406','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(81,'SAQUAREMA','3305505','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(82,'SEROPEDICA','3305554','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(83,'SILVA JARDIM','3305604','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(84,'SUMIDOURO','3305703','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(85,'TANGUA','3305752','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(86,'TERESOPOLIS','3305802','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(87,'TRAJANO DE MORAIS','3305901','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(88,'TRES RIOS','3306008','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(89,'VALENCIA','3306107','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-26 05:13:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(90,'VARRE-SAI','3306156','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(91,'VASSOURAS','3306206','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0'),
	(92,'VOLTA REDONDA','3306305','00.000.000/0000-00','2013-11-20 18:32:21','2013-11-20 18:32:21','LOGRADOURO','NUMERO','COMPLEMENTO','Bairro','0','0','0','0','0');

/*!40000 ALTER TABLE `counties` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table form_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `form_sections`;

CREATE TABLE `form_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `form_section_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_form_sections_on_form_section_id` (`form_section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `form_sections` WRITE;
/*!40000 ALTER TABLE `form_sections` DISABLE KEYS */;

INSERT INTO `form_sections` (`id`, `name`, `form_section_id`, `order`, `created_at`, `updated_at`)
VALUES
	(1,'1° VISITA AO MUNICÍPIO',NULL,1,'2013-11-26 01:20:15','2013-12-05 21:38:17'),
	(2,'1° VISITA AS COOPERATIVAS/ASSOCIAÇÕES',1,2,'2013-11-26 01:23:04','2013-12-05 21:39:24'),
	(3,'1° LEVANTAMENTO DOS CATADORES DE COOPERATIVAS/ ASSOCIAÇÃO',2,3,'2013-11-26 01:23:30','2013-12-05 21:38:57'),
	(4,'AÇÕES / ATIVIDADES DO PROGRAMA',NULL,4,'2013-11-26 01:23:49','2013-11-26 01:24:08'),
	(5,'LEVANTAMENTOS DE DADOS',3,5,'2013-11-26 01:24:21','2013-11-26 01:24:21'),
	(6,'COLETA DE DADOS MENSAL',5,6,'2013-11-26 01:24:34','2013-11-26 01:24:34'),
	(7,'MONITORAMENTOS ANUAL',5,7,'2013-11-26 01:24:48','2013-11-26 01:24:48');

/*!40000 ALTER TABLE `form_sections` ENABLE KEYS */;
UNLOCK TABLES;


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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `oficio_prefeituras` WRITE;
/*!40000 ALTER TABLE `oficio_prefeituras` DISABLE KEYS */;

INSERT INTO `oficio_prefeituras` (`id`, `name`, `description`, `data_registro`, `name_resp`, `created_at`, `updated_at`, `county_id`, `archive_file_name`, `archive_content_type`, `archive_file_size`, `archive_updated_at`)
VALUES
	(1,'Oficio Rio de Janeiro','O Oficio foi liberado com muito sacrificio','2013-11-26','Dr. João dos Oficios','2013-11-26 04:48:13','2013-12-05 20:12:57',68,'ANEXO_TECNICO_CEPERJ_HOSPEDAGEM.docx','application/vnd.openxmlformats-officedocument.wordprocessingml.document',132880,'2013-12-05 20:12:57'),
	(2,'Oficio','OFICIIO NUMERO - CONSEGUIDO COM DIFUCLDA','2013-11-26','PREFEITO jOAO DIAS','2013-11-26 12:51:10','2013-11-26 12:51:10',2,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `oficio_prefeituras` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table people
# ------------------------------------------------------------

DROP TABLE IF EXISTS `people`;

CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_people_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;

INSERT INTO `people` (`id`, `user_id`, `created_at`, `updated_at`, `name`)
VALUES
	(1,1,'2013-11-20 18:32:19','2013-11-20 18:32:19','Desenvolvimento'),
	(3,2,'2013-11-21 17:00:12','2013-11-21 17:00:12','Entrevistador 1');

/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) DEFAULT NULL,
  `multiple_answer` tinyint(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `help_block` varchar(255) DEFAULT NULL,
  `css_class` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `clear_question` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_questions_on_section_id` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;

INSERT INTO `questions` (`id`, `section_id`, `multiple_answer`, `code`, `content`, `help_block`, `css_class`, `created_at`, `updated_at`, `clear_question`)
VALUES
	(2,1,0,'IDQ02','Nome do pesquisador/Técnico do PCSS/INEA:','','col-md-12','2013-11-20 18:47:31','2013-11-26 04:14:53',0),
	(3,2,0,'PM01','Código do Município:','','col-md-4','2013-11-20 19:04:48','2013-11-20 19:08:04',0),
	(4,2,0,'PM02','Município:','','col-md-8','2013-11-20 19:05:03','2013-11-20 19:05:03',1),
	(5,2,0,'PM03','CNPJ da Prefeitura:','','col-md-12','2013-11-20 19:08:40','2013-11-20 19:08:40',1),
	(6,2,0,'PM04','Endereço da Prefeitura','','','2013-11-20 19:08:54','2013-11-20 19:24:50',0),
	(7,2,0,'PM04.1','Logradouro da Prefeitura:','','col-md-offset-1 col-md-11','2013-11-20 19:09:12','2013-11-20 19:09:49',0),
	(8,2,0,'PM04.2','Número:','','col-md-offset-1 col-md-4','2013-11-20 19:09:35','2013-11-20 19:10:02',0),
	(9,2,0,'PM04.3','Complemento:','','col-md-7','2013-11-20 19:13:21','2013-11-20 19:16:17',0),
	(10,2,0,'PM04.4','Bairro:','','col-md-offset-1 col-md-11','2013-11-20 19:13:42','2013-11-20 19:22:21',1),
	(11,2,0,'PM05','População total do Município:','','','2013-11-20 19:17:28','2013-11-20 19:24:37',0),
	(12,2,0,'PM05.1','População Total:','','col-md-offset-1 col-md-4','2013-11-20 19:17:50','2013-11-20 19:17:50',0),
	(13,2,0,'PM05.2','População Urbana:','','col-md-7','2013-11-20 19:18:10','2013-11-20 19:28:21',1),
	(14,2,0,'PM06','Extensão Territorial (Km²):','','col-md-12','2013-11-20 19:26:54','2013-11-20 19:28:02',0),
	(16,2,0,'PM08','Índice de Destinação Final de Resíduos Sólidos Urbanos (IDL) – ICMS Ecológico:','','col-md-12','2013-11-20 19:28:54','2013-11-20 19:28:54',1),
	(17,2,0,'PM09','N° de bairros:','','col-md-12','2013-11-20 19:29:08','2013-11-20 19:29:08',1),
	(18,2,0,'PM10','Dados do responsável pelas informações:','','col-md-12','2013-11-20 19:29:30','2013-11-20 19:29:58',0),
	(19,2,0,'PM10.1','Nome do responsável pela informação:','','col-md-offset-1 col-md-11','2013-11-20 19:29:48','2013-11-20 19:29:48',0),
	(20,2,0,'PM10.2','Órgão:','','col-md-offset-1 col-md-11','2013-11-20 19:30:29','2013-11-20 19:30:29',0),
	(21,2,0,'PM10.3','Cargo do responsável pela informação:','','col-md-offset-1 col-md-11','2013-11-20 19:30:43','2013-11-20 19:30:43',0),
	(22,2,0,'PM10.4','Telefone (DDD+Número):','','col-md-offset-1 col-md-11','2013-11-20 19:30:58','2013-11-20 19:30:58',0),
	(23,2,0,'PM10.5','E-mail/endereço eletrônico do responsável pela informação:','','col-md-offset-1 col-md-11','2013-11-20 19:31:12','2013-11-20 19:31:12',0),
	(24,3,0,'GM01','O município possui Conselho de Meio Ambiente?','','col-md-12','2013-11-20 19:38:40','2013-11-20 19:38:40',1),
	(25,3,0,'GM01.1','Qual o número da Lei/ Decreto?','','col-md-offset-1 col-md-11','2013-11-20 19:38:55','2013-11-20 19:38:55',1),
	(26,3,0,'GM02','O município possui Fundo de Meio Ambiente?','','col-md-12','2013-11-20 19:39:15','2013-11-20 19:44:06',1),
	(27,3,0,'GM02.1','Qual o número da Lei/ Decreto?','','col-md-offset-1 col-md-11','2013-11-20 19:39:27','2013-11-20 19:39:27',1),
	(28,3,0,'GM03','O município possui legislação municipal que garanta as aplicações do ICMS Ecológico no Fundo Municipal de Meio Ambiente?','','col-md-12','2013-11-20 19:39:59','2013-11-20 19:43:43',1),
	(29,3,0,'GM03.1','Qual o número da Lei/ Decreto?','','col-md-offset-1 col-md-11','2013-11-20 19:40:13','2013-11-20 19:40:13',1),
	(30,3,0,'GM04','O município possui Código de Meio Ambiente?','','col-md-12','2013-11-20 19:40:27','2013-11-20 19:40:27',1),
	(31,3,0,'GM04.1','Qual o número da Lei/ Decreto?','','col-md-offset-1 col-md-11','2013-11-20 19:40:41','2013-11-20 19:40:41',1),
	(32,3,0,'GM05','O município possui legislação específica de Resíduos Sólidos?','','col-md-12','2013-11-20 19:40:58','2013-11-20 19:40:58',1),
	(33,3,0,'GM05.1','Lei/ Decreto de coleta seletiva','','col-md-offset-1 col-md-11','2013-11-20 19:41:16','2013-11-20 19:41:16',1),
	(34,3,0,'GM05.1.1','Número da lei/ Decreto:','','col-md-offset-2 col-md-10','2013-11-20 19:41:51','2013-11-20 19:41:51',1),
	(35,3,0,'GM05.2','Lei/ Decreto de grandes geradores','','col-md-offset-1 col-md-11','2013-11-20 19:42:04','2013-11-20 19:42:04',1),
	(36,3,0,'GM05.2.1','Número da lei/ Decreto:','','col-md-offset-2 col-md-10','2013-11-20 19:42:15','2013-11-20 19:42:15',1),
	(37,3,0,'GM05.3','Lei/Decreto Órgãos Públicos municipais','','col-md-offset-1 col-md-11','2013-11-20 19:42:31','2013-11-20 19:42:31',1),
	(38,3,0,'GM05.3.1','Número da lei/ Decreto:','','col-md-offset-2 col-md-10','2013-11-20 19:42:52','2013-11-20 19:42:52',0),
	(39,4,0,'QF01','Setor responsável pela Gestão da Limpeza Urbana no Município:','','col-md-12','2013-11-21 17:03:59','2013-11-21 17:03:59',1),
	(40,4,0,'QF01.1','Nome do responsável pela Gestão da Limpeza Urbana no Município:','','col-md-offset-1 col-md-11','2013-11-21 17:04:21','2013-11-21 17:04:21',1),
	(41,4,0,'QF01.2','Telefone do responsável pela Gestão da Limpeza Urbana no Município (DDD+Número):','','col-md-offset-1 col-md-11','2013-11-21 17:04:48','2013-11-21 17:04:48',1),
	(42,4,0,'QF01.3','Tipo de vínculo:','','col-md-offset-1 col-md-11','2013-11-21 17:05:02','2013-11-21 17:05:02',1),
	(43,4,0,'QF02','Quantidade de profissionais envolvidos no serviço de limpeza urbana do município no ano anterior:','','col-md-12','2013-11-21 17:05:16','2013-11-21 17:05:16',0),
	(44,5,0,'CS01','Existem meios de comunicação (e-mail ou telefone) disponíveis para a população e geradores realizarem   reclamações, sugestões, consultas sobre a:','','col-md-12','2013-11-21 17:12:51','2013-11-21 17:12:51',1),
	(45,5,0,'CS01.1','Gestão de Resíduos Sólidos (domiciliares, comércio, limpeza de logradouros)?','','col-md-offset-1 col-md-11','2013-11-21 17:13:04','2013-11-21 17:13:04',1),
	(46,5,0,'CS01.1.1','Indique quais (admite mais de uma resposta):','','col-md-offset-2 col-md-10','2013-11-21 17:13:20','2013-11-21 17:13:20',1),
	(47,5,0,'CS01.2','Gestão de Coleta Seletiva?','','col-md-offset-1 col-md-11','2013-11-21 17:13:29','2013-11-21 17:13:29',1),
	(48,5,0,'CS01.2.1','Indique quais (admite mais de uma resposta):','','col-md-offset-2 col-md-10','2013-11-21 17:13:43','2013-11-21 17:13:43',1),
	(49,5,0,'CS02',' Existe um funcionário responsável pelo gerenciamento deste(s) canal(is) de comunicação?','','col-md-12','2013-11-21 17:13:58','2013-11-21 17:13:58',1),
	(50,5,0,'CS02.1','Nome do funcionário responsável pelo gerenciamento deste(s) canal(is) de comunicação:','','col-md-offset-1 col-md-11','2013-11-21 17:14:08','2013-11-21 17:14:08',1),
	(51,5,0,'CS02.2','Telefone do funcionário responsável pelo gerenciamento deste(s) canal(is) de comunicação:','','col-md-offset-1 col-md-11','2013-11-21 17:14:20','2013-11-21 17:15:12',1),
	(52,5,0,'CS02.3','Tipo de vínculo:','','col-md-offset-1 col-md-11','2013-11-21 17:14:32','2013-11-21 17:14:44',1),
	(53,5,0,'CS03','Quais as instancias de Controle Social estão inseridas no processo de Gestão de Resíduos Sólidos no   município (admite mais de uma resposta)?','','col-md-12','2013-11-21 17:14:59','2013-11-21 17:14:59',0),
	(54,6,0,'RSU01','O município faz parte de algum consórcio intermunicipal para destino final de RSU?','','col-md-12','2013-11-21 17:27:00','2013-11-21 17:27:00',1),
	(55,6,0,'RSU01.1','Qual o nome do consórcio?','','col-md-offset-1 col-md-11','2013-11-21 17:27:09','2013-11-21 17:27:09',1),
	(56,6,0,'RSU01.2','Qual o tipo do consórcio intermunicipal?','','col-md-offset-1 col-md-11','2013-11-21 17:27:19','2013-11-21 17:27:19',1),
	(57,6,0,'RSU01.3','Qual o status do consórcio intermunicipal?','','col-md-offset-1 col-md-11','2013-11-21 17:27:30','2013-11-21 17:27:30',1),
	(58,6,0,'RSU01.4','CNPJ do consórcio:','','col-md-offset-1 col-md-11','2013-11-21 17:27:41','2013-11-21 17:27:41',1),
	(59,6,0,'RSU01.5','Nome do município sede do consórcio:','','col-md-offset-1 col-md-11','2013-11-21 17:27:52','2013-11-21 17:27:52',1),
	(60,6,0,'RSU02','Qual é a quantidade de Resíduos Sólidos coletados no município no ano anterior?','','col-md-12','2013-11-21 17:28:15','2013-11-21 17:28:15',1),
	(61,6,0,'RSU02.1','Toneladas / dia:','','col-md-offset-1 col-md-11','2013-11-21 17:28:26','2013-11-21 17:28:26',1),
	(62,6,0,'RSU02.2','Toneladas / mês:','','col-md-offset-1 col-md-11','2013-11-21 17:28:36','2013-11-21 17:28:36',1),
	(63,6,0,'RSU03','Cobertura do serviço de coleta domiciliar de Resíduos Sólidos no município?','','col-md-12','2013-11-21 17:28:48','2013-11-21 17:28:48',1),
	(64,6,0,'RSU03.1','Nº de domicílios com coleta domiciliar:','','col-md-offset-1 col-md-11','2013-11-21 17:28:56','2013-11-21 17:28:56',1),
	(65,6,0,'RSU04','Quem é o responsável pelo serviço de coleta regular de Resíduos Sólidos no município (admite mais de uma resposta)?','','','2013-11-21 17:29:12','2013-11-21 17:29:12',1),
	(66,6,0,'RSU04.1','Nome da Empresa:','','col-md-offset-1 col-md-11','2013-11-21 17:29:23','2013-11-21 17:29:23',1),
	(67,6,0,'RSU05','Informe a quantidade média de resíduos sólidos enviados a cada uma das destinações finais abaixo no ano   anterior:','','col-md-offset-1 col-md-11','2013-11-21 17:29:40','2013-11-21 17:29:40',0),
	(71,13,0,'IDQ01','asdasd','','col-md-11','2013-11-21 18:22:42','2013-11-21 18:24:02',0),
	(72,7,0,'CS01','Existe de coleta seletiva no município?','','col-md-12','2013-11-22 11:14:35','2013-11-22 11:14:35',1),
	(73,7,0,'CS01.1','Informe o nome do setor responsável e o ano de início:','','col-md-offset-1 col-md-11','2013-11-22 11:14:47','2013-11-22 11:14:47',0),
	(74,7,0,'CS01.1.1','Nome do setor responsável:','','col-md-offset-2 col-md-10','2013-11-22 11:15:30','2013-11-22 11:15:30',1),
	(75,7,0,'CS01.1.2','Ano de início:','','col-md-offset-2 col-md-5','2013-11-22 11:16:38','2013-11-22 11:22:17',0),
	(76,7,0,'CS01.1.3','Ano de interrupção:','','col-md-5','2013-11-22 11:16:54','2013-11-22 11:22:25',1),
	(77,7,0,'CS01.2','Qual era a instituição responsável?','','col-md-offset-1 col-md-11','2013-11-22 11:17:07','2013-11-22 11:17:07',1),
	(78,7,0,'CS01.2.1','Se outro, especifique:','','col-md-offset-2 col-md-10','2013-11-22 11:17:23','2013-11-22 11:17:23',1),
	(79,7,0,'CS01.3','Qual era o sistema de coleta seletiva adotado (admite mais de uma resposta)?','','col-md-offset-1 col-md-11','2013-11-22 11:17:38','2013-11-22 11:17:38',1),
	(80,7,0,'CS01.4','No caso da coleta seletiva ter sido feita no porta a porta, informe o número de bairros atendidos:','','col-md-offset-1 col-md-11','2013-11-22 11:17:57','2013-11-22 11:17:57',1),
	(81,7,0,'CS01.5','No caso da coleta seletiva ter sido feita no porta a porta, informe o número de domicílios atendidos:','','col-md-offset-1 col-md-11','2013-11-22 11:18:15','2013-11-22 11:18:15',1),
	(82,7,0,'CS02','Existem Catadores de Materiais Recicláveis atuando no município?','','col-md-12','2013-11-22 11:18:26','2013-11-22 11:18:26',1),
	(83,7,0,'CS03','Existem Cooperativas/Associações de Catadores atuando no território municipal?','','col-md-12','2013-11-22 11:18:36','2013-11-22 11:18:36',1),
	(84,7,0,'CS03.1','Se a Prefeitura possui cadastro, indique quantas estão no cadastro atualmente:','','col-md-offset-1 col-md-11','2013-11-22 11:18:48','2013-11-22 11:18:48',1),
	(85,7,0,'CS04','Existe uma relação formalizada entre a(s) Cooperativa(s)/Associação(ões) de Catadores e o município?','','col-md-12','2013-11-22 11:19:04','2013-11-22 11:19:04',1),
	(86,7,0,'CS04.1','Qual o tipo de vínculo?','','col-md-offset-1 col-md-11','2013-11-22 11:19:15','2013-11-22 11:19:15',1),
	(87,7,0,'CS05','Existem sucateiros/ atravessadores atuando no território do município?','','col-md-12','2013-11-22 11:19:26','2013-11-22 11:19:26',1),
	(88,7,0,'CS06','Atualmente, existe cadastro de domicílios atendidos pela Coleta Seletiva Municipal?','','col-md-12','2013-11-22 11:19:36','2013-11-22 11:19:36',1),
	(89,7,0,'CS06.1','Quantos domicílios são cadastrados?','','col-md-offset-1 col-md-11','2013-11-22 11:19:46','2013-11-22 11:19:46',0),
	(90,8,0,'CSS01','Na visão da atual administração da Prefeitura, quando o programa municipal de coleta seletiva for implantado,   qual Instituição deverá ser responsável pelo mesmo?','','col-md-12','2013-11-22 11:32:52','2013-11-22 11:32:52',1),
	(91,8,0,'CSS02','Na visão da atual administração da Prefeitura, qual deveria ser o sistema de coleta seletiva adotado pelo   programa municipal (admite mais de uma resposta) ?','','col-md-12','2013-11-22 11:33:08','2013-11-22 11:33:08',1),
	(92,8,0,'CSS02.1','No caso da coleta seletiva ser feita no porta a porta, qual será a área piloto (especificar o bairro)?','','col-md-offset-1 col-md-11','2013-11-22 11:33:18','2013-11-22 11:33:18',1),
	(93,8,0,'CSS02.1.1','Especifique o bairro:','','col-md-offset-1 col-md-11','2013-11-22 11:33:28','2013-11-22 11:33:28',0),
	(94,9,0,'IEA01','Existem galpões para a triagem dos recicláveis disponíveis no município:','','col-md-12','2013-11-22 11:37:21','2013-11-22 11:37:21',0),
	(95,9,0,'IEA02','Indique o número de galpões para a triagem dos recicláveis disponíveis no município:','','col-md-12','2013-11-22 11:37:30','2013-11-22 11:37:30',0),
	(96,9,0,'IEA02.1','Indique as áreas:','','col-md-offset-1 col-md-11','2013-11-22 11:37:40','2013-11-22 11:37:40',1),
	(97,9,0,'IEA02.2','Indique o número de galpões que possuem os seguintes itens listados abaixo:','','col-md-offset-1 col-md-11','2013-11-22 11:37:51','2013-11-22 11:37:51',1),
	(98,9,0,'IEA02.3','Proprietários dos galpões (admite mais de uma resposta):','','col-md-offset-1 col-md-11','2013-11-22 11:38:02','2013-11-22 11:38:02',1),
	(99,9,0,'IEA03','Indique a quantidade de equipamentos/veículos que o município dispõe para ser utilizado na coleta seletiva:','','col-md-12','2013-11-22 11:38:14','2013-11-22 11:38:14',0),
	(100,10,0,'IA01','Qual o orçamento anual do município (ano anterior)?','','col-md-12','2013-11-22 11:38:29','2013-11-22 11:38:29',0),
	(101,10,0,'IA02','Investimento financeiro mensal em Coleta e Disposição Final de RSU no ano anterior:','','col-md-12','2013-11-22 11:38:39','2013-11-22 11:38:39',0),
	(102,11,0,'FDR01','O município possui programas e ações especiais para coleta, tratamento e disposição final dos resíduos   sólidos gerados em seu território?','','col-md-12','2013-11-22 12:04:17','2013-11-22 12:04:17',1),
	(103,11,0,'FDR01.1','Se sim, Indique para quais tipos de resíduos o município possui programas e ações especiais para coleta,   tratamento e disposição final (admite mais de uma resposta):','','col-md-offset-1 col-md-11','2013-11-22 12:04:35','2013-11-22 12:04:35',0),
	(104,12,0,'PP01','Indique a quantidade de:','','col-md-12','2013-11-22 12:06:49','2013-11-22 12:06:49',0),
	(106,15,0,'123','teste','','col-md-12','2013-11-26 02:51:47','2013-11-26 02:51:47',NULL),
	(107,16,0,'IDQ01','teste','','','2013-11-26 02:52:34','2013-11-26 02:52:34',NULL),
	(108,17,0,'test','teste','','col-md-12','2013-11-26 02:53:23','2013-11-26 02:53:23',NULL),
	(109,18,0,'vv','vvvvvvv','','col-md-12','2013-11-26 02:54:19','2013-11-26 02:54:19',NULL),
	(110,19,0,'nnn','nnnnnnnn','','col-md-12','2013-11-26 02:54:42','2013-11-26 02:54:42',NULL),
	(111,20,0,'rt','hrththrth','','col-md-12','2013-11-26 02:55:10','2013-11-26 02:55:10',NULL),
	(112,21,0,'12','qweqweqe','','col-md-12','2013-11-26 02:59:10','2013-11-26 02:59:10',NULL),
	(113,22,0,'23','asdfadfasdf','','col-md-12','2013-11-26 02:59:34','2013-11-26 02:59:34',NULL),
	(114,23,0,'q1','rqwerqer','','col-md-12','2013-11-26 03:06:37','2013-11-26 03:06:37',NULL),
	(115,24,0,'wer','qwrqerqer','','col-md-12','2013-11-26 03:07:42','2013-11-26 03:07:42',NULL),
	(116,25,0,'w','qwqq','','col-md-12','2013-11-26 03:08:02','2013-11-26 03:08:02',NULL),
	(117,26,0,'sdf','asdfasdfasdf','','col-md-12','2013-11-26 03:08:21','2013-11-26 03:08:21',NULL),
	(118,27,0,'ew','werwerwer','','col-md-12','2013-11-26 03:08:37','2013-11-26 03:08:37',NULL),
	(119,28,1,'B34','O que esta acontecnendo ? ','','','2013-11-26 12:19:48','2013-11-26 12:19:48',NULL);

/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Desenvolvedor','2013-11-20 18:32:05','2013-11-20 18:32:05'),
	(2,'Entrevistador','2013-11-20 18:32:05','2013-11-20 18:32:05');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`),
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20131102131421'),
	('20131102132535'),
	('20131102133703'),
	('20131104173523'),
	('20131104173610'),
	('20131104173643'),
	('20131104173743'),
	('20131104173830'),
	('20131104173947'),
	('20131104174014'),
	('20131104174024'),
	('20131104175455'),
	('20131104175534'),
	('20131105164542'),
	('20131125205221'),
	('20131125222637'),
	('20131125230247'),
	('20131204171241');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sections`;

CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `help_block` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sections_on_survey_id` (`survey_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;

INSERT INTO `sections` (`id`, `survey_id`, `name`, `help_block`, `created_at`, `updated_at`)
VALUES
	(1,1,'IDENTIFICAÇÃO DO QUESTIONÁRIO','','2013-11-20 18:45:11','2013-11-20 18:45:11'),
	(2,1,'BLOCO 1. PERFIL MUNICIPAL','','2013-11-20 18:45:20','2013-11-20 18:45:20'),
	(3,1,'BLOCO 2. GESTÃO MUNICIPAL DE MEIO AMBIENTE','','2013-11-20 18:45:30','2013-11-20 18:45:30'),
	(4,1,'BLOCO 3. QUADRO FUNCIONAL DA GESTÃO DE RESÍDUOS SÓLIDOS','','2013-11-20 18:45:39','2013-11-20 18:45:39'),
	(5,1,'BLOCO 4. CONTROLE SOCIAL','','2013-11-20 18:45:47','2013-11-20 18:45:47'),
	(6,1,'BLOCO 5. INFORMAÇÕES SOBRE A GESTÃO DE RESÍDUOS SÓLIDOS URBANOS (RSU)','','2013-11-20 18:45:57','2013-11-20 18:45:57'),
	(7,1,'BLOCO 6. INFORMAÇÕES SOBRE COLETA SELETIVA NO MUNICÍPIO','','2013-11-20 18:46:06','2013-11-20 18:46:06'),
	(8,1,'BLOCO 7. INFORMAÇÕES SOBRE A FUTURA GESTÃO DO PROGRAMA DE COLETA SELETIVA SOLIDÁRIA','','2013-11-20 18:46:15','2013-11-20 18:46:15'),
	(9,1,'BLOCO 8. INFRAESTRUTURA ATUAL PARA COLETA SELETIVA','','2013-11-20 18:46:25','2013-11-20 18:46:25'),
	(10,1,'BLOCO 9. INVESTIMENTO E ARRECADAÇÃO','','2013-11-20 18:46:34','2013-11-20 18:46:34'),
	(11,1,'BLOCO 10. FLUXO DOS DEMAIS RESÍDUOS','','2013-11-20 18:46:40','2013-11-20 18:46:40'),
	(12,1,'BLOCO 11. PRÉDIOS PÚBLICOS','','2013-11-20 18:46:48','2013-11-20 18:46:48'),
	(13,2,'Bloco Teste','','2013-11-21 18:22:35','2013-11-26 05:08:56'),
	(15,4,'teste','','2013-11-26 02:51:38','2013-11-26 02:51:38'),
	(16,5,'teste','','2013-11-26 02:52:26','2013-11-26 02:52:26'),
	(17,6,'xxxx','','2013-11-26 02:53:14','2013-11-26 02:53:14'),
	(18,7,'ccc','','2013-11-26 02:54:12','2013-11-26 02:54:12'),
	(19,8,'bb','','2013-11-26 02:54:35','2013-11-26 02:54:35'),
	(20,9,'gasdfasdfaf','','2013-11-26 02:55:02','2013-11-26 02:55:02'),
	(21,10,'weqeqwe','','2013-11-26 02:59:03','2013-11-26 02:59:03'),
	(22,11,'xcv','','2013-11-26 02:59:23','2013-11-26 02:59:23'),
	(23,12,'asdfadf','','2013-11-26 03:06:29','2013-11-26 03:06:29'),
	(24,13,'wert','','2013-11-26 03:07:35','2013-11-26 03:07:35'),
	(25,14,'sd','','2013-11-26 03:07:55','2013-11-26 03:07:55'),
	(26,15,'werwer','','2013-11-26 03:08:14','2013-11-26 03:08:14'),
	(27,16,'sdasdf','','2013-11-26 03:08:30','2013-11-26 03:08:30'),
	(28,4,'Secao Teste Emiliano','','2013-11-26 12:19:21','2013-11-26 12:19:21');

/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table surveys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `surveys`;

CREATE TABLE `surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `form_type` varchar(255) DEFAULT NULL,
  `form_section_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;

INSERT INTO `surveys` (`id`, `name`, `disabled`, `created_at`, `updated_at`, `form_type`, `form_section_id`)
VALUES
	(1,'Diagnóstico Inicial do Município',0,'2013-11-20 18:41:26','2013-11-26 01:28:35','Único',1),
	(2,'Cadastro das Cooperativas/Associações existentes no Município',0,'2013-11-20 18:41:53','2013-11-26 01:28:47','Liberado',1),
	(4,'Diagnóstico Inicial da Cooperativa/Associação ',0,'2013-11-26 01:31:04','2013-11-26 01:31:04','Liberado',2),
	(5,'Dados de pessoal da Cooperativa/ Associação',0,'2013-11-26 01:31:13','2013-11-26 01:31:13','Liberado',2),
	(6,'Diagnóstico Inicial dos Catadores de Cooperativa/Associação',0,'2013-11-26 01:31:29','2013-11-26 01:31:29','Liberado',3),
	(7,'Diagnostico Inicial das Escolas Públicas',0,'2013-11-26 01:31:41','2013-11-26 01:31:41','Liberado',5),
	(8,'Diagnostico Inicial dos Órgãos Públicos',0,'2013-11-26 01:31:49','2013-11-26 01:31:49','Liberado',5),
	(9,'Cadastro dos prédios públicos existentes no município',0,'2013-11-26 01:31:57','2013-11-26 01:31:57','Liberado',5),
	(10,'Coleta de dados mensais da Cooperativa/Associação',0,'2013-11-26 01:32:06','2013-11-26 01:32:06','Uma vez por mês',6),
	(11,'Coleta de dados mensais do Município ',0,'2013-11-26 01:32:16','2013-11-26 03:00:21','Uma vez por mês',6),
	(12,'Monitoramento Municipal',0,'2013-11-26 01:32:25','2013-11-26 03:05:45','Uma vez por ano',7),
	(13,'Monitoramento da Cooperativa/Associação',0,'2013-11-26 01:32:34','2013-11-26 01:32:34','Uma vez por ano',7),
	(14,'Monitoramento do Catador de Cooperativa/ Associação',0,'2013-11-26 01:32:51','2013-11-26 01:32:51','Uma vez por ano',7),
	(15,'Monitoramento da Escola Pública',0,'2013-11-26 01:32:58','2013-11-26 01:32:58','Uma vez por ano',7),
	(16,'Monitoramento do Órgão Público',0,'2013-11-26 01:33:07','2013-11-26 01:33:07','Uma vez por ano',7);

/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `encrypted_password` varchar(255) NOT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role_id`, `created_at`, `updated_at`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`)
VALUES
	(1,1,'2013-11-20 18:32:19','2013-12-05 21:46:46','dev@inventae.com.br','$2a$10$vKHqvUHmm0OQg/APpVK/f.yWPL5sWitvR3zdd.tDvZ2/j5QKEicym',NULL,NULL,NULL,20,'2013-12-05 21:46:46','2013-12-05 19:38:23','179.210.5.56','179.210.5.56'),
	(2,2,'2013-11-21 16:57:55','2013-11-26 05:11:02','entrevistador@inventae.com.br','$2a$10$p0Bvc6r7Ea1PcVIHmlGw/.JWOj9TwMDQ6kwIGnhgZO8KoS09NJNs.',NULL,NULL,NULL,6,'2013-11-26 05:11:02','2013-11-26 04:27:16','201.17.72.57','127.0.0.1');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
