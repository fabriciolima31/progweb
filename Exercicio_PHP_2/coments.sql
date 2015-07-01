CREATE DATABASE IF NOT EXISTS `coments`;
USE `coments`;


CREATE TABLE IF NOT EXISTS `usuario` (
`id` int(2) unsigned NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `comentario` varchar(400) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;