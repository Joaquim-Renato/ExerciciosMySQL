create database db_escola;

use db_escola;
Create table tb_estudantes(
id bigint not null auto_increment,
nome varchar(128) not null,
nascimento date not null,
turma int not null,
turno varchar (128) not null,
nota decimal (4,2) not null,
email varchar(128) not null,
primary key (id)
);

insert into tb_estudantes(nome, nascimento, turma, turno, nota, email ) values ("Joaquim","1997-10-10", 43, "vespertino", 10, "jocajoaquimas@gmail.com");
insert into tb_estudantes(nome, nascimento, turma, turno, nota, email ) values ("Ana","1994-12-24", 43, "vespertino", 9.5, "Ana@hotmail.com");
insert into tb_estudantes(nome, nascimento, turma, turno, nota, email ) values ("Barbara","1992-05-10", 42, "noturno", 6.5, "barbara@gmail.com");
insert into tb_estudantes(nome, nascimento, turma, turno, nota, email ) values ("Thais","1998-12-22", 42, "noturno", 10, "tais@gmail.com");
insert into tb_estudantes(nome, nascimento, turma, turno, nota, email ) values ("Thalles","1997-08-10", 43, "vespertino", 8.5, "thalles@gmail.com");

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;




