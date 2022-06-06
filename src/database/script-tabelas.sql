-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */

CREATE DATABASE Recipe;
USE Recipe;

CREATE TABLE Tipo  
(IDtipo INT PRIMARY KEY AUTO_INCREMENT,
Tipo VARCHAR (90));
select * from tipo;

CREATE TABLE Usuario (IDusuario INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (45),
Email VARCHAR (45),
Senha VARCHAR (45),
FK_Tipo_user INT, 
FOREIGN KEY (FK_Tipo_user) REFERENCES Tipo(IDTipo)
);

CREATE TABLE Receitas 
(IDreceitas INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (40),
Descrição VARCHAR (1800),
Ingredientes VARCHAR (1800),
FK_Tipo_rec INT, 
FOREIGN KEY(FK_Tipo_rec) REFERENCES Tipo(IDtipo)
);

CREATE TABLE Favoritos (
DTvisualização DATETIME,
Avaliação DOUBLE (10,2),
FKusuario INT,
FOREIGN KEY (FKusuario) REFERENCES usuario(IDusuario),
FKreceitas INT,
FOREIGN KEY (FKreceitas) REFERENCES Receitas(IDreceitas),
PRIMARY KEY (fkreceitas, fkusuario)
);

