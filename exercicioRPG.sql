create database db_generation_game;

use db_generation_game;

create table tb_classe(
id bigint not null auto_increment,
level int not null,
classe varchar(50),
primary key(id)
);

create table tb_personagem(
id_classe bigint not null auto_increment,
nome varchar(25) not null,
habilidade varchar (40) not null,
ataque decimal not null,
defesa decimal not null,
foreign key(id_classe) references tb_classe(id)
) default charset = utf8;

insert into tb_classe(level, classe) values(7, "Guerreiro");
insert into tb_classe(level, classe) values(10, "Arqueiro");
insert into tb_classe(level, classe) values(18, "Mago");

insert into tb_personagem(nome, habilidade, ataque, defesa) values ("Caio", "Combate Desarmado",  2500, 1300);
insert into tb_personagem(nome, habilidade, ataque, defesa) values ("Joaquim", "Alquimia", 100, 1100);
insert into tb_personagem(nome, habilidade, ataque, defesa) values ("Julia", "Furtividade",  500, 300);
insert into tb_personagem(nome, habilidade, ataque, defesa) values ("Tom", "Rastreio", 500, 15000);
insert into tb_personagem(nome, habilidade, ataque, defesa) values ("Sabrina","Movimento Rapido", 5300, 1000);

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome LIKE 'c%';

select * from tb_personagem a join tb_classe b on  a.id_classe=b.id;

select * from tb_personagem;
select * from tb_classe;

-- drop database db_generation_game_online