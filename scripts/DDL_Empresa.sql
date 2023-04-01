CREATE DATABASE `Empresas`;
USE `Empresas`;

CREATE TABLE `Funcionarios` (
`Codigo` INT PRIMARY KEY,
`PrimeiroNome` VARCHAR(30),
`SegundoNome` VARCHAR(30),
`UltimoNome` VARCHAR(30),
`DataNasci` DATE,
`CPF` NUMERIC(11),
`RG` NUMERIC(9),
`Endereco` VARCHAR(40),
`CEP` NUMERIC(8),
`Cidade` VARCHAR(40),
`Fone` NUMERIC(14),
`CodigoDepartamento` INT,
`Funcao` VARCHAR(20),
`Salario` NUMERIC(10,2));
