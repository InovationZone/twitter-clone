-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 08/01/2019 às 09:23
-- Versão do servidor: 5.7.24-0ubuntu0.18.04.1
-- Versão do PHP: 7.2.13-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `twitter_clone`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tweet`
--

CREATE TABLE `tweet` (
  `id_tweet` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `tweet` varchar(140) NOT NULL,
  `data_inclusao` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tweet`
--

INSERT INTO `tweet` (`id_tweet`, `id_usuario`, `tweet`, `data_inclusao`) VALUES
(1, 0, 'teste de inclusÃ£o de tweet', '2018-06-19 15:36:23'),
(2, 0, 'teste de inclusÃ£o de tweet', '2018-06-19 15:38:27'),
(3, 0, 'teste de inclusÃ£o de tweet', '2018-06-19 15:38:58'),
(4, 15, 'aaaaaa', '2018-06-19 15:40:11'),
(5, 15, 'mnhkjkh', '2018-06-19 17:03:43'),
(6, 15, 'TESTE twitter', '2018-06-19 17:49:48'),
(7, 15, 'aaaa', '2018-06-19 17:52:17'),
(8, 15, 'teste', '2018-06-21 12:20:46'),
(9, 15, 'teste', '2018-07-16 14:14:20'),
(10, 15, 'teste', '2018-07-16 14:14:29'),
(11, 14, 'silva', '2019-01-08 08:58:50');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `email`, `senha`) VALUES
(12, 'joao', 'b@b', '92eb5ffee6ae2fec3ad71c777531578f'),
(13, 'paulo', 'a@sfgdfg', '6f04aa8324068801354b01b63f16f331'),
(14, 'silva', 's@s', '0cc175b9c0f1b6a831c399e269772661'),
(15, 'a', 'a@a', '0cc175b9c0f1b6a831c399e269772661');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios_seguidores`
--

CREATE TABLE `usuarios_seguidores` (
  `id_usuario_seguidor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `seguindo_id_usuario` int(11) NOT NULL,
  `data_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `usuarios_seguidores`
--

INSERT INTO `usuarios_seguidores` (`id_usuario_seguidor`, `id_usuario`, `seguindo_id_usuario`, `data_registro`) VALUES
(9, 15, 12, '2019-01-07 15:19:04'),
(11, 14, 15, '2019-01-08 08:51:17'),
(12, 15, 14, '2019-01-08 08:58:33');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `tweet`
--
ALTER TABLE `tweet`
  ADD PRIMARY KEY (`id_tweet`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios_seguidores`
--
ALTER TABLE `usuarios_seguidores`
  ADD PRIMARY KEY (`id_usuario_seguidor`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `tweet`
--
ALTER TABLE `tweet`
  MODIFY `id_tweet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de tabela `usuarios_seguidores`
--
ALTER TABLE `usuarios_seguidores`
  MODIFY `id_usuario_seguidor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
