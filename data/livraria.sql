-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Mar-2022 às 22:18
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `livraria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `item`
--

CREATE TABLE `item` (
  `descricao` varchar(50) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `codigo_item` int(11) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `tipo_capa` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `termo` varchar(5) NOT NULL,
  `data_retirada` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `item`
--

INSERT INTO `item` (`descricao`, `quantidade`, `codigo_item`, `autor`, `tipo_capa`, `categoria`, `termo`, `data_retirada`) VALUES
('o mundo abaixo de marquinho', 10, 28, 'marquinho romero', 'dura', 'Aventura', 'sim', '2022-03-03'),
('o mundo abaixo de marquinho', 100, 29, 'Davi, Gustavo & Matheus', 'normal', 'Comédia', 'sim', '2005-04-12'),
('o mundo abaixo de marquinho', 100, 30, 'joão ', 'normal', 'Ação', 'sim', '0000-00-00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`codigo_item`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `item`
--
ALTER TABLE `item`
  MODIFY `codigo_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
