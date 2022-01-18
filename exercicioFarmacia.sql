create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint not null auto_increment,
nome varchar(50),
dose enum('P','G') not null,
primary key(id)
);

create table tb_produto(
id_classe bigint not null auto_increment,
nome varchar(20) not null,
preco decimal not null,
gorjeta decimal not null,
desconto boolean not null,
foreign key(id_classe) references tb_categoria(id)
) default charset = utf8;


insert into tb_categoria( nome, dose) values( "Ibuprofeno", 'P');
insert into tb_categoria(nome, dose) values("Dipirona", 'G');
insert into tb_categoria(nome, dose) values("Loratadina", 'G');

insert into tb_produto(nome, preco, gorjeta, desconto) values ("Dipirona",  40.12, 5.0, false);
insert into tb_produto(nome, preco, gorjeta, desconto) values ("Ibuprofeno",  50.12, 5.0, true);
insert into tb_produto(nome, preco, gorjeta, desconto) values ("Ibuprofeno",  45.12, 5.0, false);
insert into tb_produto(nome, preco, gorjeta, desconto) values ("Dipirona",  12.12, 5.0, false);
insert into tb_produto(nome, preco, gorjeta, desconto) values ("Loratadina",  35.12, 5.0, true);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;

select * from tb_categoria where nome LIKE 'c%';

select * from tb_produto a join tb_categoria b on  a.id_classe=b.id;

select * from tb_produto;
select * from tb_categoria;

-- drop database db_farmacia_do_bem;
