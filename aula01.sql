/*==========================================
CRIAÇÃO DE BANCO DE DADOS: create database
==========================================*/
# O comando "create database" é uusado para criar um novo banco de dados,
# no comando caso estamos criando um banco de dados chamado biblioteca e ele
# vai guardar nossas tabelas de aluno, biblioteca e livro.

create database biblioteca;

/*==========================================
Listar os bancos do servidor: SHOW DATABASES
==========================================*/

show databases;

/*====================================================
Selecionar um banco de dados: USE nome_do_banco_exemplo
======================================================*/

-- Antes de manipular qualquer db é extremamente importante selecionar qual 
-- o banco var ser usado, pois um servidor guarda mais de um db.

use biblioteca;

/*====================================================
Excluir um banco de dados: DROP DATABASE nome_do_banco_exemplo
======================================================*/

drop database biblioteca;

/*====================================================
Criação de tabelas: CREATE TABLE nome_exemplo_tabela
======================================================*/
-- cada coluna da tabela deve ser passada com o seu respectivo tipo de dado

create table alunos(
nome varchar(100), 
email varchar(120),
idade int
);

/*==================================
Listar tabelas do banco: SHOW TABLES;
====================================*/

show tables;

/*===========================================
Excluir uma tabela: DROP TABLE nome_da_tabela;
=============================================*/

-- Esse comando exclui todos a tabela e todos  os registros dentro dela
drop table alunos;

/*=====================================================
Selecione uma tabela: SELECT * FROM nome_exemplo_tabela
=======================================================*/

select * from alunos;

/*=====================================================
Inserindo dados na tabela: INSERT INTO nome_exemplo_tabela
=======================================================*/

insert into alunos (nome, email, idade) 
values ('Ricardo', 'Ricardo@proton.me', 27);

create table livro(
titulo varchar(12), 
autor varchar(80),
genero varchar(100),
ano_publicacao int
);

show tables;

insert into livro (titulo, autor, genero, ano_publicacao) 
values ('Dom Casmurro', 'Machado de Assis', 'Literatua', 1899);

select * from livro;

drop table livro;












