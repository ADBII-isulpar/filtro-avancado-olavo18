-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Tempo de geração: 09/09/2025 às 00:38
-- Versão do servidor: 8.0.43
-- Versão do PHP: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `olavo_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Departamentos`
--

CREATE TABLE `Departamentos` (
  `ID` int NOT NULL,
  `NomeDepartamento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Departamentos`
--

INSERT INTO `Departamentos` (`ID`, `NomeDepartamento`) VALUES
(1, 'Vendas'),
(2, 'TI'),
(3, 'Recursos Humanos'),
(4, 'Marketing');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Funcionarios`
--

CREATE TABLE `Funcionarios` (
  `ID` int NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Salario` decimal(10,2) NOT NULL,
  `DepartamentoID` int DEFAULT NULL,
  `GerenteID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Funcionarios`
--

INSERT INTO `Funcionarios` (`ID`, `Nome`, `Salario`, `DepartamentoID`, `GerenteID`) VALUES
(1, 'Ana Silva', 7000.00, 2, NULL),
(2, 'Carlos Souza', 8000.00, 1, NULL),
(3, 'Maria Oliveira', 5500.00, 1, 2),
(4, 'João Pereira', 4500.00, 2, 1),
(5, 'Fernanda Santos', 3000.00, 1, 2),
(6, 'Pedro Lima', 6500.00, 2, 1),
(7, 'Julia Alves', 9000.00, 3, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Funcionarios_Projetos`
--

CREATE TABLE `Funcionarios_Projetos` (
  `FuncionarioID` int NOT NULL,
  `ProjetoID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Funcionarios_Projetos`
--

INSERT INTO `Funcionarios_Projetos` (`FuncionarioID`, `ProjetoID`) VALUES
(1, 1),
(4, 1),
(1, 2),
(2, 2),
(6, 2),
(3, 3),
(5, 3),
(6, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Projetos`
--

CREATE TABLE `Projetos` (
  `ID` int NOT NULL,
  `NomeProjeto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Projetos`
--

INSERT INTO `Projetos` (`ID`, `NomeProjeto`) VALUES
(1, 'Migração de Servidor'),
(2, 'Desenvolvimento do App'),
(3, 'Campanha de Marketing Digital'),
(4, 'Análise de Mercado');
