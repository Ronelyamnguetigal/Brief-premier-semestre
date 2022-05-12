create database Alimentation_db;
use Alimentation_db;
create table client (id_client int primary key not null ,
nom varchar(45),
nom_famille varchar (45),
email varchar(45))

insert  into  client values (1,'clotilde','nadjinan','cloclo@gmail.com')
insert  into  client values (2,'regina','banhoudal','cloclo@gmail.com')
insert  into  client values (3,'marianna','nadji','nadjo@gmail.com')
insert  into  client values (4,'aicha','juste','aicho@gmail.com')
insert  into  client values (5,'cendrillon','nadjinan','cendo@gmail.com')
insert  into  client values (6,'modestine','nadjinan','momo@gmail.com')
insert  into  client values (7,'valerie','modjial','valo@gmail.com')
insert  into  client values (8,'mariam','mahamat','mama@gmail.com')
insert  into  client values (9,'ronel','nguetigal','roro@gmail.com')
insert  into  client values (1,'clotilde','nadjinan','cloclo@gmail.com')

create table produit (id_produit int primary key not null ,
name_produit varchar(45),
descriptions varchar (45),
price varchar(45))
insert  into  produit values (1,'detergent','liquide','1000 fcfa')
insert  into  produit values (2,'detergent','puissant','1000 fcfa')
insert  into  produit values (3,'eau de javel','liquide','750 fcfa')
insert  into  produit values (4,'gel lave main','liquide','750 fcfa')
insert  into  produit values (5,'savonnette','boule','25000 fcfa')
insert  into  produit values (6,'essuie vitre','liquide','1000 fcfa')
insert  into  produit values (7,'detergent','liquide 5 l','1000 fcfa')
insert  into  produit values (8,'savon karité','boule','500 fcfa')
insert  into  produit values (9,'savon miel','boule','500 fcfa')
insert  into  produit values (10,'detergent','liquide 2l','1000 fcfa')



create table gerant (id_gerant int primary key not null ,
nom varchar(45),
prenom varchar (45),
email varchar(45))

insert  into  gerant  values (1,'Nassir','mahamat','nassir@gmail.com')
insert  into  gerant  values (2,'guillaume','alladoum','allah@gmail.com')





create table commande (id_commande int not null ,
libelle varchar(45),
quantite varchar (45),
id_client int not null,
id_gerant int not null,
id_produit int not null
constraint id_clientfk foreign key (id_client) references client,
constraint id_gerantfk foreign key (id_gerant) references gerant,
constraint id_produitfk foreign key (id_produit) references produit)

insert  into  commande values (3,'savonnette','30 cartons',5,10,1)
insert  into  commande values (2,'savonnette','50 cartons',5,3,2)
insert  into  commande values (3,'savons miel','100 cartons',3,1,6)
insert  into  commande values (4,'savons karite','100 cartons',2,9,4)
insert  into  commande values (5,'liquide vaisselle','100 cartons',9,6,5)
insert  into  commande values (6,'essuie vitre','100 cartons',1,2,3)
insert  into  commande values (7,'detergent puissant','100 cartons',1,2,3)
insert  into  commande values (8,'eau de javel','100 cartons',1,2,3)
insert  into  commande values (9,'eau de javel','100 cartons',1,2,3)
insert  into  commande values (10,'eau de javel','100 cartons',1,2,3)



select* from gerant;

