create database db_ecomerce;
use db_ecomerce;
create table tb_produtos(
id bigint not null auto_increment,
produto varchar(128) not null,
marca varchar(128) not null,
tamanho enum('P', 'M', 'G') not null,
preco decimal not null,
primary key(id)
);

insert into tb_produtos(produto, marca, tamanho,preco ) values ("calça", "nike", "P", 150.00);
insert into tb_produtos(produto, marca, tamanho,preco ) values ("bermuda", "oakley", "M", 100.00);
insert into tb_produtos(produto, marca, tamanho,preco ) values ("camiseta", "polo", "G", 65.00);
insert into tb_produtos(produto, marca, tamanho,preco ) values ("moletom", "nike", "P", 150.00);
insert into tb_produtos(produto, marca, tamanho,preco ) values ("meia", "adidas", "P", 15.00);

update tb_produtos set preco = 15500 where id =2;

select * from tb_produtos where preco > 500;select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;





