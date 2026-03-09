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

drop table alunos;

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

 

/*=====================================================
Inserindo dados na tabela: INSERT INTO nome_exemplo_tabela
=======================================================*/

insert into alunos (nome, email, idade) 
values ('Ricardo', 'Ricardo@proton.me', 27);

insert into alunos (nome, email, idade) 
values ('Louis', 'louis@proton.me', 17);

select * from alunos;

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

use biblioteca;
show tables;




use escola;

-- id_aluno é a CHAVE PRIMARIA (PRIMARY KEY)
-- Ela garante que cada aluno tenha um identificador único.
-- NOT NULL significa "obrigatorio"(não pode ficar vazio)


create table alunos(
id_aluno int primary key auto_increment,
nome varchar(100) not null,
idade int, 
id_turma int not null,
foreign key (id_turma) references turma(id_turma)
);

show tables;

drop table alunos;

select * from alunos;
insert into alunos (nome, idade, id_turma)
values('Gabriel', '21', 1),
      ('João', '19', 2);

insert into alunos (nome, idade, id_turma)
values('3','Melissa', '21', 'TDS01'),
      ('4','João', '17', 'TDS01');

-- Para apagar a linha usamos o DELETE
delete from alunos where id_aluno = 3;

-- UPDATE altera dados existentes.
-- WHERE é essencial para não alterar a tabela inteira por acidente.

update alunos
set turma = "TST", idade = 15
where id_aluno = 4;

-- Autoriza a fazer alteração e atualização do banco de dados
set SQL_SAFE_UPDATES = 0;

select * from alunos;

-- Auto_INCREMENT faz o MYSQL gerar um número automaticamente (1, 2, 3...)
-- ENUM registre os valores possíveis.
-- Ensina "domínio" (regras de negócio na tabela).
-- O DEFAULT diz qual a opção padrão em caso de não preencher no momento do insert 
create table professor(
id_professor int primary key auto_increment,
nome varchar(100) not null,
disciplina varchar(150),
tipo_contrato enum('CLT', 'PJ', 'Concurso') default 'CLT'
);

drop table professor;

/*
Atualizar o nome da professora "Ana Claudia" para "Ana do TI"
Atualizar o contrato do professor Laércio para "Concurso"
Inserir o professor "Adalberto" da disciplina de "Aplicativos" com o contrato "PJ"
*/

insert into professor (nome, disciplina, tipo_contrato)
values ('Laercio', 'Banco de dados', 'PJ');

insert into professor (nome, disciplina)
values('Ana Claudia', 'Lógica');

select * from professor;

update professor
set  nome = "Ana da TI"
where id_professor = 2;

update professor
set  tipo_contrato = "Concurso"
where id_professor = 1;

insert into professor (nome, disciplina, tipo_contrato)
values ('Adalberto', 'Aplicativos', 'PJ');

create table turma (
id_turma int primary key auto_increment,
nome_turma varchar (50) not null,
sala char(3),
periodo enum("Manhã", "Tarde", "Noite") 
);

show tables;

insert into turma (nome_turma, sala, periodo)
values ('IOT01', '35B', 'Manhã');

insert into turma (nome_turma, sala, periodo)
values ('TPI', '35A', 'Manhã');

select * from turma
where periodo = "Manhã";


