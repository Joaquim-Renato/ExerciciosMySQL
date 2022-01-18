create database db_pizzaria_legal;

use db_pizzaria_legal;
create table tb_pizza(
id bigint not null auto_increment,
tipoDoceSalgada varchar(30) not null,
tamanho enum('P', 'G') not null,
primary key(id)
);

create table tb_categoria(
id_classe bigint not null auto_increment,
sabor varchar(30) not null,
preco decimal not null,
bordaRecheada boolean not null,
massaGrossa boolean not null,
foreign key(id_classe) references tb_pizza(id)
);

insert into tb_pizza(tipoDoceSalgada, tamanho) values("Salgada", 'G');
insert into tb_pizza(tipoDoceSalgada, tamanho) values("Doce", 'G');
insert into tb_pizza(tipoDoceSalgada, tamanho) values("Salgada", 'P');
insert into tb_pizza(tipoDoceSalgada, tamanho) values("Salgada", 'P');
insert into tb_pizza(tipoDoceSalgada, tamanho) values("Doce", 'P');


insert into tb_categoria(sabor, preco, bordaRecheada, massaGrossa) values("Berinjela", 50.00, false, false); 
insert into tb_categoria(sabor, preco, bordaRecheada, massaGrossa) values("Paçoca", 35.00, false, false);
insert into tb_categoria(sabor, preco, bordaRecheada, massaGrossa) values("Marguerita", 32.00, true, true);
insert into tb_categoria(sabor, preco, bordaRecheada, massaGrossa) values("Mussarela", 48.00, true, false);
insert into tb_categoria(sabor, preco, bordaRecheada, massaGrossa) values("Chocolate", 52.00, false, false);


select * from tb_categoria where preco > 45;
select * from tb_categoria where preco < 45;


select * from tb_categoria where nome LIKE 'c%';

select * from tb_pizza;
select * from tb_categoria;

-- drop database db_pizzaria_legal;
