create database Empresas;
USE Empresas;


CREATE TABLE Funcionarios (
codigo int primary key,
primeiroNome varchar(20),
segundoNome varchar(20),
ultimoNome varchar(20),
dataNasci date,
CPF numeric(11),
RG numeric(9),
endereco varchar(40),
CEP numeric(9),
cidade varchar(40),
fone numeric(13),
codigoDepartamento int,
funcao varchar(20),
salario numeric(10,2));