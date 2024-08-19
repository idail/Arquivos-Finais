-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Jun-2020 às 21:22
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `flutter`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `produtos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`, `produtos`) VALUES
(1, 'Bebidas', 'Bebidas', 'bebidas.jpeg', 'bebidas', 4),
(2, 'Sanduíches Artesanais', 'Sanduíches Artesanais', 'artesanal.jpeg', 'sanduiches-artesanais', 2),
(7, 'Açaí', 'Açaís', 'acai.jpeg', 'acai', 3),
(8, 'Sanduíches', 'Sanduíches', 'sanduiches.jpeg', 'sanduiches', 3),
(9, 'Pizza', 'Pizza', 'pizzas.jpeg', 'pizza', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `descricao_longa` varchar(600) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `categoria` int(11) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `combo` varchar(10) DEFAULT NULL,
  `vendas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `descricao_longa`, `valor`, `categoria`, `imagem`, `nome_url`, `combo`, `vendas`) VALUES
(1, 'Açai 600 ML', 'Açaí na Taça', 'Açaí com Leite em pó', '8.99', 7, 'acai 1.jpeg', 'acai-600-ml', NULL, 8),
(2, 'Açaí 300 ML', 'Creme de Açaí', 'Açaí com Leite em pó e Granola!', '1.00', 7, 'acai 2.jpeg', 'acai-300-ml', NULL, 9),
(10, 'Duas Barcas', 'Combo Completo', 'Combo imperdível com duas barcas completas com muito açãi e cheia de incrementos!', '60.00', 7, 'barcas.jpg', 'duas-barcas', 'Sim', 0),
(12, 'Chessburguer', 'Carne e Queijo', 'Delicioso Chessburguer com carne bovina, queijo, maionese, picles, ketchup!!', '9.99', 8, 'sanduiche 1.jpeg', 'chessburguer', NULL, 0),
(13, 'Bufalo Burguer', 'Gigante e Saboroso', 'Um Sanduíche gigantesco, pra quem tem muita fome, a base de carne bovina, cheddar ....', '12.50', 8, 'sanduiche 2.jpeg', 'bufalo-burguer', NULL, 2),
(14, '3 Pizzas Grandes', 'Super Promoção', 'Aproveite já nossa super promoção, são 3 pizzas grande de 8 fatias cada, muito saborosa...', '47.90', 9, 'pizza promocao.jpeg', '3-pizzas-grandes', 'Sim', 0),
(15, 'Sanduiche Gourmet', 'Delicioso Artesanal', 'Um Delicioso sanduiche artesenal, carne de frango ....', '10.00', 2, 'gourmet.jpeg', 'sanduiche-gourmet', NULL, 0),
(16, 'Pizza Grande', '8 Fatias', 'Pizza Grande de 8 Fatias nos sabores frango com catu....', '17.90', 9, 'pizza 1.jpeg', 'pizza-grande', NULL, 0),
(17, 'Pizza Média', '6 Pedaços', 'Pizza Média ...', '11.90', 9, 'pizza 2.jpeg', 'pizza-media', NULL, 0),
(18, 'Combo Artesanais', '2 Sanduiches', 'Dois Deliciosos sanduiches artesanais', '18.00', 2, 'promocao artesanais.jpeg', 'combo-artesanais', 'Sim', 0),
(19, 'Combo Sanduíches', '3 Sanduiches', 'Trez Gigantescos sanduiches...', '29.99', 8, 'promocao sanduinches.jpeg', 'combo-sanduiches', 'Sim', 0),
(20, 'Coca Cola Lata', '350 ML', 'Refrigerante Coca Cola Lata', '3.50', 1, 'WhatsApp Image 2020-05-13 at 22.38.18.jpeg', 'coca-cola-lata', NULL, 0),
(21, 'Agua Mineral', 'Garrafa 200 ML', 'Agua Mineral', '2.00', 1, 'WhatsApp Image 2020-05-13 at 22.41.30.jpeg', 'agua-mineral', NULL, 0),
(22, 'Suco Lata', '290 ML', 'Suco de Lata 290 ML', '2.90', 1, 'WhatsApp Image 2020-05-13 at 22.45.31.jpeg', 'suco-lata', NULL, 0),
(23, 'Cerveja Lata', '350 ML', 'Cerveja Lata', '4.50', 1, 'WhatsApp Image 2020-05-13 at 22.49.20.jpeg', 'cerveja-lata', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(35) NOT NULL,
  `nivel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `telefone`, `usuario`, `senha`, `nivel`) VALUES
(22, 'Marcos Santos', '000.000.000-10', '(11) 11111-1111', 'marcos@gmail.com', '123', 'Cliente'),
(23, 'Hugo Freitas', '111.111.111-11', '(11) 11111-1111', 'hugovasconcelosf@hotmail.com', '123', 'Cliente'),
(24, 'Hugo Vasconcelos', '000.000.000-00', '3333-3399', 'hvfadvocacia@gmail.com', '123', 'Admin'),
(25, 'Flavio Campos', '777.777.777-80', '(33) 33335-5888', 'flavio@hotmail.com', '22222222222', 'Balconista'),
(26, 'Marcelo Campos', '999.999.999-99', '(99) 99999-9990', 'balconista@hotmail.com', '99999999999', 'Balconista'),
(29, 'Mauricio Silva	', '111.111.111.-10', '555555555	', 'maricio@hotmail.com	', '123', 'Cliente'),
(30, 'Marta	', '111111	', '22222	', 'marta@hotmail.com', '123', 'Cliente'),
(31, 'fffgg', '111', 'hgff', 'ggcc', 'jhgg', 'Cliente'),
(32, 'hffhfg', 'gffgug', 'dfgghgf', 'dfgg', 'cfbb', 'Cliente'),
(33, 'aaaaaaaa', 'aaaaaa', 'aaaaaa', 'aaaa', 'aaaa', 'Cliente'),
(36, 'Silva Santos	', '111122233	', '33658955	', 'silva@hotmail.com	', '123', 'Cliente'),
(37, 'Matheus Campos', '22222', '11111', 'mateus@hotmail.com', '123', 'Cliente');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
