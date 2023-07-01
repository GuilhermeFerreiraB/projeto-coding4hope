-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2021 às 03:09
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `coding_for_hope`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `doador`
--

CREATE TABLE `doador` (
  `id` int(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `data_de_nascimento` varchar(255) NOT NULL,
  `rg` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `celular` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `doador`
--

INSERT INTO `doador` (`id`, `nome`, `sobrenome`, `genero`, `data_de_nascimento`, `rg`, `cpf`, `email`, `cep`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `celular`) VALUES
(2, 'Natália', 'Laís Alessandra Melo', 'Feminino', '12/10/1997', '32.961.613-4', '563.865.912-91', 'natalialaisalessandramelo@michaelpage.com.br', '60730-460', 'Vila Nery', '504', 'Vila Peri', 'Fortaleza', 'CE', '(85) 98837-7824'),
(3, 'Tomás', 'Bernardo Assunção', 'Masculino', '01/02/1966', '31.738.304-8', '142.476.510-21', 'tomas.bernardo@exemplo.com', '52190-515', 'Rua José Barros Bezerra', '424', 'Nova Descoberta', 'Recife', 'PE', '(81) 98185-6330'),
(4, 'Vitor', 'Caio Viana', 'Masculino', '22/12/1970', '17.475.046-8', '258.169.811-02', 'vvitorcaioviana@pelozo.com.br', '57071-129', '2ª Travessa Recanto do Sol', '747', 'Clima Bom', 'Maceió', 'AL', '(82) 98354-7463'),
(5, 'Lúcia', 'Renata da Rosa', 'Feminino', '04/08/1993', '47.235.289-1', '211.882.264-28', 'luciarenatadarosa-79@dizain.com.br', '69315-679', 'Rua Solteirões', '537', 'São Bento', 'Boa Vista', 'RR', '(95) 99657-0887'),
(6, 'Aparecida', 'Clarice Dias', 'Feminino', '03/07/1972', '30.144.923-5', '993.707.363-44', 'aparecidaclaricedias_@aspxsistemas.com.br', '74495-858', 'Rua Mendanha', '122', 'Residencial Mendanha', 'Goiânia', 'GO', '(62) 99465-8747'),
(7, 'Renato', 'Victor Anthony Rocha', 'Masculino', '05/10/1953', '20.469.201-5', '459.067.104-26', 'renato.victor@exemplo.com.br', '14708-298', 'Alameda Francisco Schittini', '297', 'Jardim São Fernando', 'Bebedouro', 'SP', '(17) 99620-4820'),
(8, 'Isabel', 'Malu Débora Cavalcanti', 'Feminino', '13/06/1949', '39.296.615-3', '757.959.491-91', 'isabel.malu@exemplo.com', '22723-365', 'Rua Professor Canedo de Magalhães', '207', 'Jacarepaguá', 'Rio de Janeiro', 'RJ', '(21) 98366-9834');

-- --------------------------------------------------------

--
-- Estrutura da tabela `organizacao_parceira`
--

CREATE TABLE `organizacao_parceira` (
  `id` int(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `cnpj` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `celular` varchar(255) NOT NULL,
  `visita_agendada` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `organizacao_parceira`
--

INSERT INTO `organizacao_parceira` (`id`, `nome`, `tipo`, `cnpj`, `email`, `cep`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `telefone`, `celular`, `visita_agendada`) VALUES
(1, 'Escola Estadual São Carlos', 'Escola', '', 'ee.saocarlos@exemplo.gov.br', '97015-050', 'Travessa Argemiro Vieira das Chagas', '337', 'Nossa Senhora Medianeira', 'Santa Maria', 'RS', '(12) 3844-2691', '(12) 99946-8549', 'Sim'),
(8, 'Colégio Valentina e Benedita', 'Escola', '87.579.872/0001-34', 'valentinaebenedita@exemplo.com', '05859-080', 'Alameda José Lopes de Almeida', '943', 'Capão Redondo', 'São Paulo', 'SP', '(11) 3673-8007', '(11) 98948-7474', NULL),
(9, 'Hospital da Saúde', 'Hospital', '80.136.464/0001-69', 'hospital_dasaude@exemplo.com', '12421-510', 'Rua das Azaléias', '515', 'Nossa Senhora do Perpétuo Socorro', 'Pindamonhangaba', 'SP', '(12) 2660-7787', '(12) 99779-0436', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `doador`
--
ALTER TABLE `doador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `organizacao_parceira`
--
ALTER TABLE `organizacao_parceira`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `doador`
--
ALTER TABLE `doador`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `organizacao_parceira`
--
ALTER TABLE `organizacao_parceira`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
