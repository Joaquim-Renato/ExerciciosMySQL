create database db_escola;

use db_escola;
Create table tb_estudantes(
id bigint not null auto_increment,
nome varchar(40) not null,
nascimento date,
turma int,
turno varchar(40),
email varchar(128) not null,
primary key (id)
);
