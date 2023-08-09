Create database db_imobiliaria;

use db_imobiliaria;

create table cidade (
id_cidade int primary key AUTO_INCREMENT,
descricao varchar(70));

create table cliente (
id_cliente int primary key AUTO_INCREMENT,
nome varchar(70),
telefone varchar(13));

create table corretor (
id_corretor int primary key AUTO_INCREMENT,
nome varchar(70),
cpf varchar(13));

create table endereco (
id_endereco int primary key AUTO_INCREMENT,
rua varchar(70),
estado varchar(2),
cidade varchar (70),
bairro varchar(70),
complemento varchar(70));

create table profissao (
id_profissao int primary key AUTO_INCREMENT,
descricao varchar(70));

create table tipo (
id_tipo int primary key AUTO_INCREMENT,
descricao varchar(20));

create table proprietario (
id_proprietario int primary key AUTO_INCREMENT,
nome varchar (70),
sexo varchar (11),
telefone varchar (13),
id_profissao int,
id_cidade int,
constraint profissao_proprietario foreign key (id_profissao) references profissao(id_profissao),
constraint cidade_proprietario foreign key (id_cidade) references cidade(id_cidade));

create table imovel (
id_imovel int primary key AUTO_INCREMENT,
descricao varchar (100),
area float,
preco float,
id_tipo int,
id_proprietario int,
constraint tipo_imovel foreign key (id_tipo) references tipo (id_tipo),
constraint proprietario_imovel foreign key (id_proprietario) references proprietario(id_proprietario));

create table reserva (
id_reserva int primary key AUTO_INCREMENT,
data date,
hora time,
id_imovel int,
id_cliente int,
constraint imovel_reserva foreign key (id_imovel) references imovel(id_imovel),
constraint cliente_reserva foreign key (id_cliente) references cliente(id_cliente));

INSERT INTO cidade VALUES (1,'Campos dos Goyatacazes'),(2,'Macae'),(3,'Itaperuna'),(4,'Rio de Janeiro'),(5,'Rio das Ostras'),(6,'Sao Fidelis'),(7,'Quissamã'),(8,'São Franscisco do Itabapoana');
INSERT INTO cliente VALUES (1,'Maria da silva Joaquina','2345'),(2,'Xuxa da silva',NULL),(3,'Joaninha',NULL),(4,'Galinha Pintadinha','345'),(5,'Jose Mendoca','9999'),(6,'Chico da silva Buarque','8767'),(7,'Bob Esponja',NULL),(8,'Da Silva Fulano',NULL);
INSERT INTO corretor VALUES (1,'Joaozinho ','234'),(2,'Maria da Silva Augusta ','2222'),(3,'Seu Ze da Esquina ',NULL),(4,'Mario Joao',NULL);
INSERT INTO endereco VALUES (1,'rua abc','RJ','campos dos goytacazes','turf',NULL),(2,'rua abc','SP','sao paulo','xxx',NULL),(3,'rua abc','RJ','macae','centro',NULL),(4,'rua xyz','RJ','campos dos goytacazes','centro',NULL),(5,'rua abc','RJ','campos dos goytacazes','guarus',NULL),(6,'rua abc','RJ','itaperuna','aeroporto',NULL),(7,'rua abc','RJ','macae','aeroporto',NULL);
INSERT INTO profissao VALUES (1,'professor'),(2,'estudante'),(3,'analista de sistemas'),(4,'tecnico em informatica'),(5,'medico'),(6,'advogado');
INSERT INTO proprietario VALUES (1,'Jose Saramago','m','2322',NULL,1),(2,'Alice no Pais das Maravilhas','m','34455',NULL,2),(3,'Augusto de Souza','m','2322',1,2),(4,'Joaninha','f','34455',1,3),(5,'Marieta da Silva','f','2322',4,1),(6,'Vovo','f','333',5,4),(7,'Zezinho de Souza','f','6767',2,5),(8,'Maricota','f','6987',5,2),(9,'Fulano de tal','m','',NULL,2),(10,'Galinha Pintadinha','f','',NULL,1);
INSERT INTO tipo VALUES (6,'terreno'),(4,'apartamento'),(5,'casa');
INSERT INTO imovel VALUES (1,'apartamento nascente 3 qts',63,340000,4,1),(2,'terreno rua 28 de marco',87,200000,6,1),(3,'casa 4 qts turf club',400,800000,5,NULL),(4,'apartamento 2 qts suite',87,200000,4,5),(5,'apartamento 1 qt',34,80000,4,9),(6,'casa em condominio fechado',200,450000,5,8),(7,'casa colonial',70,280000,5,9),(8,'terreno rua 28 de marco',300,120000,4,8),(9,'terreno praia farol de sao thomé',310,150000,4,8),(10,'casa em grussaí nascente',450,350000,4,9);
INSERT INTO reserva VALUES (1,'2010-12-31','07:00:00',1,1),(2,'2010-12-31','21:50:00',1,1),(3,'2010-12-31','10:30:00',NULL,1),(4,'2010-12-31','09:30:00',1,2),(5,'2010-12-31','08:10:00',NULL,2),(6,'2010-12-31','07:00:00',2,1),(7,'2010-12-30','21:50:00',3,3),(8,'2010-12-30','10:30:00',NULL,4),(9,'2010-12-30','09:30:00',3,5),(10,'2010-12-30','08:10:00',NULL,2);
