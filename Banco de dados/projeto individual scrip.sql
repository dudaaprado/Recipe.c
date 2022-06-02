CREATE DATABASE Recipe;
USE Recipe;
CREATE TABLE Usuario (IDusuario INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (45),
Email VARCHAR (45),
Senha VARCHAR (45));

CREATE TABLE Receitas (IDreceitas INT PRIMARY KEY AUTO_INCREMENT,
Descrição VARCHAR (400),
Ingredientes VARCHAR (100),
Tipo VARCHAR (40));

CREATE TABLE Favoritos (IDFavoritos INT  AUTO_INCREMENT,
DTvisualização DATETIME,
Avaliação CHAR (10),
FKusuario INT,
FOREIGN KEY (FKusuario) REFERENCES usuario(IDusuario),
FKreceitas INT,
FOREIGN KEY (FKreceitas) REFERENCES Receitas(IDreceitas),
PRIMARY KEY (IDfavoritos, fkreceitas, fkusuario)
);