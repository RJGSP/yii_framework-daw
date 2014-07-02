-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Máquina: 127.0.0.1
-- Data de Criação: 08-Jun-2014 às 22:59
-- Versão do servidor: 5.5.32
-- versão do PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `bdaca_proj_grupo3`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(40) NOT NULL COMMENT 'sha1',
  `email` varchar(250) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `site` varchar(250) DEFAULT NULL,
  `idcountry` int(11) DEFAULT NULL,
  `idcity` int(11) DEFAULT NULL,
  `CV` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `cities_users` (`idcity`),
  KEY `countries_users` (`idcountry`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `site`, `idcountry`, `idcity`, `CV`) VALUES
(1, 'flv', '80e02756df4380e5281c3dc253c80b27c670b34c', 'flavio.mendonca@bdaca.pt', 'Flávio Mendonça', 'http://www.linkedin.com/in/flaviomendonca', 1, 1, NULL),
(2, 'anaf', '8c9139fa38cb2d3070af99b58d0af4494e973601', 'flipana@gov.es', 'Ana Filipa Mascherana', NULL, 2, 2, NULL),
(3, 'flv2', 'a6c7d7725d7a5451b7dec76c8a8fd99a32b43a17', 'usinov@fictional.ru', 'Peter Usinov', 'http://www.peterusinov.ru', 3, 3, NULL),
(4, 'peridog', '6e561aa1ef3a807155cfcb79e20e2beafdc06f09', 'pericao@moss.pt', 'Domingos Pericão', 'http://www.iscte.pt/~pericao', 1, 4, NULL),
(5, 'fab', '3b4ead29b17aa89d104a4d78745c764db591c8f2', 'fab@moss.pt', 'Fábio', NULL, NULL, NULL, NULL);

