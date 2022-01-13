create database db_empresa;
use db_empresa;
Create table tb_funcionarios(
id bigint not null auto_increment,
nome varchar(128) not null,
nascimento date,
salario decimal (6,2),
cargo varchar(40),
email varchar(128) not null,
primary key (id)
);
insert into tb_funcionarios(nome, nascimento, salario, cargo, email ) values ("Joaquim","1997-10-10", 2000.00, "Dev JR", "jocajoaquimas@gmail.com");
insert into tb_funcionarios(nome, nascimento, salario, cargo, email ) values ("Jose","1977-02-18", 4000.00, "Dev Pleno", "jose@gmail.com");
insert into tb_funcionarios(nome, nascimento, salario, cargo, email ) values ("Ana", "1971-12-12", 4500.00, "Dev Pleno", "ana@gmail.com");
insert into tb_funcionarios(nome, nascimento, salario, cargo, email ) values ("Natasha", "1991-01-26", 2000.00, "Dev JR", "natasha@gmail.com");

select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;






