CREATE DATABASE Recipe;
USE Recipe;
-- Não pode ser chave composta pois pode haver duplicidade de dados
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

select * from usuario;

INSERT INTO Tipo (tipo) values
(' vegano'),
(' vegetariano'),
(' Vegetariano ovo lacto'),
('Ovolactovegetariano'),
('Ovovegetariano'),
('Carnivoro');
select * from receitas;
-- ----------------------------------------------carnivoro----------------------------------------------------------------------------------------


INSERT INTO Receitas (nome,Descrição,ingredientes,fk_tipo_rec) values
('Camarão na moranga','Retire a tampa e as sementes da moranga.
Lave e enrole-a em papel alumínio e leve ao forno médio (180° C) por 45 minutos.
Em uma panela, aqueça o azeite e refogue o alho e a cebola, junte o camarão e deixe cozinhar por 5 minutos.
Adicione os tomates picados, a pimenta, o sal e o ketchup.
Desligue o fogo e acrescente o creme de leite e o cheiro-verde.
Misture bem e adicione por último o requeijão.
Passe um pouco de requeijão no interior da moranga e despeje o creme de camarão.','1 kg de camarão médio
4 colheres (sopa) de azeite ,2 dentes de alho ,1 cebola ,5 tomates sem sementes
sal e pimenta-do-reino a gosto ,1 lata de creme de leite sem soro ,300 g de requeijão cremoso
1 moranga ,cheiro-verde a gosto ,3 colheres (sopa) de ketchup',6);

INSERT INTO Receitas (nome,Descrição,ingredientes,fk_tipo_rec) values
('Costelinha de porco','Lave bem e escorra a costelinha.

Na panela de pressão coloque todos os ingredientes e metade de um limão (o suco).

Acrescente a carne e misture bem.

Tampe a panela e deixe por 20 minutos, após pegar a pressão (não acrescente água).

Retire a panela do fogo e tire a pressão para abrir a panela.

Volte a panela ao fogo e mexa devagar até ficar dourada.

Monte a costelinha em um prato e coloque a outra metade de limão para enfeitar ou adicionar à porção que será consumida.',
'1 kg de costelinha de porco
1 sachê de tempero pronto de carne
1 colher (chá) de vinagre
1 colher (chá) de sal grosso
1 porção de alecrim seco
1 folha de louro
1 cebola grande
1 limão',6);

INSERT INTO Receitas (nome,Descrição,ingredientes,fk_tipo_rec) values
('PICANHA AO FORNO COM SAL GROSSO','Cubra o fundo de uma assadeira com 1 kg do sal grosso. Coloque a picanha com a parte da gordura virada para cima. Cubra a carne com o restante do sal, não deixando nenhuma parte da carne exposta. Leve a assadeira para o forno a 200 graus. Retire a camada do sal e corte em fatias colocando o molho sobre a carne.

Dica: a picanha pode ser colocada para assar congelada.
Modo de Preparo do molho:
Aqueça a manteiga junto com o azeite em uma frigideira, frite a cebola por alguns instantes e derrame sobre a picanha preparada.
Bom Apetite !!!','1 peça de Picanha com aproximadamente 1 Kg
3 kg de sal grosso
Molho
4 colheres de sopa de manteiga
4 colheres de sopa de azeite
1 cebola (picada)',6);

INSERT INTO Receitas (nome,Descrição,ingredientes,fk_tipo_rec) values
('nhoque de camarão','MOLHO:
Em uma panela coloque o azeite e doure a cebola e o alho.
A seguir coloque os tomates e depois o camarão.
Assim que ficou rosado o camarão deslique o fogo acrescente o requeijão mexa bem e reserve.
MASSA:
Em uma panela coloque todos os ngrediente exceto a farinha de trigo.
Quando levantar fervura abaixe o fogo e coloque de uma só vez o trigo mexa bem até formar uma massa firme deslique o fogo e coloque em uma mesa e deixe esfriar um pouco.
Enrole a massa como nhoque corte em pedaços médios coloque em um refratário e coloque o molho e sirva a seguir.','MOLHO DE CAMARÃO:
1/2 xícara de chá de azeite
1 cebola picada
2 alhos amassados
1 xícara de chá de requeijão cremoso
1/2 kg de camarão limpo
600 g de tomates ou 1 1/2 molho de tomate pronto
MASSA:
3 copos tipo requeijão de leite
150 g de manteiga
1/2 xícara de chá de parmesão ralado
2 1/2 copos tipo requeijão de farinha de trigo
1 tablete de caldo de camarão (knnor)
2 batatas cozidas e amassadas
200 g de camarão cozido e prossessado',6);

INSERT INTO Receitas (nome,Descrição,ingredientes,fk_tipo_rec) values
('ROCAMBOLE DE CARNE MOÍDA','Tempere a carne moída com a sopa de cebola, o tempero verde e o sal.
Coloque a carne temperada sobre uma folha de papel laminado ou papel manteiga e abra a massa com um rolo, na espessura de 1 cm, mais ou menos.
Forre a carne com o presunto e o queijo, pode-se colocar também milho verde, ervilha e requeijão.
Enrole a carne, com ajuda da folha de papel laminado ou manteiga, em forma de rocambole.
Leve ao forno, em temperatura alta, por mais ou menos 30 minutos, ou no microondas por 15 minutos.

Bom apetite!','1/2 kg de carne moída
1 pacote de sopa de cebola
presunto fatiado
queijo fatiado
tempero verde
sal a gosto',6);


-- ----------------------------------vegano-----------------------------------------------------------------------------------------------------
INSERT INTO Receitas (nome,Descrição,ingredientes,fk_tipo_rec) values
('YAKISOBA VEGANO','Hidrate a proteina de soja na água morna. Deixe-a de molho por 10 minutos, escorra e reserve.
Cozinhe os legumes em água por 10 minutos. Escorra e também reserve.
Prepare o macarrão miojo seguindo as instruções da embalagem.
Em uma outra panela ou frigideira grande, coloque um pouco de oleo e frite a carne de soja até começar a dourar, misture os legumes, o tempero pronto e metade do shoyu e do óleo.
Deixe cozinhar de 3 a 5 minutos e coloque o miojo e o resto do óleo e do shoyu. Misture rapidamente e desligue o fogo.
Sirva ainda quente','1 pacote de macarrão Instantâneo Miojo Yakissoba
1/2 pacotinho de tempero pronto sazon vermelho ou o próprio tempero do miojo
1 xícara de proteina de soja
1 1/2 xícara de água morna
1/2 xícara de shoyu
1/4 xícara de óleo
Legumes cortados de sua preferência (exemplo: cebola, cenoura, pimentão, vagem, couve-flor, brócolis)',1);

INSERT INTO Receitas (nome,Descrição,ingredientes,fk_tipo_rec) values
('EMPADÃO VEGANO','Para o recheio, refogue a cebola com azeite.
Acrescente o palmito, a vagem, a cenoura e o orégano; cozinhe com a água até que fique ao dente. Tempere com sal e pimenta.
Coloque o amido de milho dissolvido em um pouco de água, mexendo sempre até incorporar no recheio.
Acrescente a azeitona e desligue o fogo.
No processador, coloque o grão-de-bico, o azeite, sal, água e a cúrcuma; processe para misturar.
Na tigela com a farinha de arroz, adicione a mistura e mexa com a ajuda das mãos até formar uma massa firme.
Forre o fundo de pequenos recipientes com parte da massa.
Coloque o recheio.
Cubra com uma outra parte da massa.
Leve forno preaquecido a 180° C por aproximadamente 30 minutos.','240 g de palmito pupunha
150 g de vagem bem picadinha
1 lata de seleta de legumes
50 g de azeitona preta fatiada
100 g de cebola
30 ml de azeite
2 g de orégano
120 ml de água
1 colher (sopa) de amido de milho
sal a gosto
pimenta-do-reino a gosto
MASSA:
1 caixinha de grão-de-bico
20 ml de azeite
sal a gosto
3 g de cúrcuma
150 g de farinha de arroz
60 ml de água',1);

INSERT INTO Receitas (nome,Descrição,ingredientes,fk_tipo_rec) values
('CREME DE ABÓBORA','Cozinhe a abóbora com pouca água, esprema e bata no liquidificador.
Volte ao fogo este purê com a água e o caldo de carne deixando apurar até ficar um creme.
Acrescente o creme de leite ou o leite de coco na hora de servir.
Sirva em pratos decorados com torradas, salsa picada e queijo parmesão ralado.','1 kg de abóbora
1 1/2 l de água
5 tabletes de caldo de carne
1 lata de creme de leite ou 1 vidro de leite de coco',1);


INSERT INTO Receitas (nome,Descrição,ingredientes,fk_tipo_rec) values
('Lasanha','Refogar o espinafre com óleo e alho e sal a gosto e reservar.
Refogar as cenouras com óleo e alho e sal a gosto e reservar.
Refogar a abobrinha com óleo e alho e sal a gosto e reservar.
Colocar o leite para ferver em fogo baixo com a cebola cortada em 4 partes, a manteiga, o louro, o cravo e sal a gosto.
Após ferver, em fogo baixo, por aproximadamente 5 minutos, retirar o louro, os cravos e a cebola, colocar a farinha de trigo, dissolvida em água e deixe cozinhar mexendo bem, fazendo assim o molho branco.
Colocar o creme de leite e desligar o fogo.Se o molho branco ficou empelotado, coloque no liquidificador, bata e ficará maravilhoso.
Montar a lasanha começando com molho branco, massa, espinafre, queijo, molho branco, massa, abobrinha, molho branco, massa, cenoura, molho branco, queijo e por aí vai, até acabar os ingredientes.
Leve ao forno por uns 40 minutos ou até que borbulhe.','Massa para lasanha (pré-cozida)
1 maço de espinafre, lavado, aferventado, bem picadinho e bem espremido
2 cenouras raladas a Juliana
1 abobrinha menina ralada a Juliana
1 cebola grande
3 dentes de alho
2 folhas de louro
3 cravos
2 colheres de (sopa) de manteiga
3 colheres de (sopa) de óleo
1 litro de leite
2 colheres de (sopa) de farinha de trigo
1 lata (ou caixinha) de creme de leite
200 gr de queijo mussarela
sal a gosto'
'Massa para lasanha (pré-cozida)
1 maço de espinafre,
2 cenouras ralada
1 abobrinha menina 
1 cebola grande
3 dentes de alho
2 folhas de louro
3 cravos
2 colheres de (sopa) de manteiga
3 colheres de (sopa) de óleo
1 litro de leite
2 colheres de (sopa) de farinha de trigo
1 lata (ou caixinha) de creme de leite
200 gr de queijo mussarela
sal a gosto''1 bandeja de cogumelo shimeji fresco (200g)
1 bandeja de cogumelo champignon paris fresco (200g)
2 xícaras de cebola picadas (em tiras ou em cubos)
2 xícaras de tomates picados
2 colheres de sopa (cheias) de alho (moído ou picado)
1 porção de molho branco
Azeite, sal e manjericão a gosto
MOLHO BRANCO:
2 colheres de sopa de margarina
2 colheres de sopa de trigo
500 ml de leite quente
160 g de queijo picado (ou 2 pacotes de queijo ralado)',1);


INSERT INTO Receitas (nome,Descrição,ingredientes,fk_tipo_rec) values
('Pão de queijo','Cozinhar em água fervente, a batata salsa já descascada.
Reservar a água utilizada após o fervimento.
Amassar as batatas, até a consistência de um purê.
Em uma travessa, adicionar o polvilho azedo, o polvilho doce, o óleo, o sal e a água quente do fervimento das batatas.
Misturar bem, podendo utilizar as próprias mãos, até virar uma massa uniforme.
Acrescentar os temperos que preferir.
Pode separar a massa em pedaços e acrescentar temperos diferentes para cada pedaço.
Fazer bolinhas, de preferência pequenas, e coloque em uma assadeira antiaderente com espaço entre uma bolinha e outra, pois quase duplica de tamanho.

Em forno preaquecido a 180°C, colocar seus pães de queijo veganos por aproximadamente 20 minutos, ou quanto achar necessário.','2 xícaras de polvilho doce
1 xícara de polvilho azedo
1/3 xícara de óleo
2 xícaras de batata salsa amassada (tipo purê)
1 xícara de água quente
sal a gosto
temperos a gosto (salsinha desidratada, ervas finas, alho desidratado, gergelim, linhaça)',1);

INSERT INTO Receitas (nome,Descrição,ingredientes,fk_tipo_rec) values
('Humbeurger de grão-de-bico','Coloque o grão-de-bico de molho por 8 horas
Em uma panela de pressão, cozinhe por 10 minutos após pegar pressão
Escorra a água que sobrou e passe o grão-de-bico por um processador ou liquidificador (na função pulsar) até obter uma massinha
Coloque essa massinha em uma vasilha e reserve
Em uma panela aqueça o azeite de oliva e doure a cebola e o alho
Acrescente o alho e a cebola na massa do grão-de-bico juntamente com os temperos, o suco do limão, o sal e a farinha
Misture até obter uma massa modelável e modele seus hambúrgueres
Caso não esteja modelável ainda, acrescente um pouco mais de farinha, mas com cuidado para não secar a massa
Para conservar, você pode congelar os hambúrgueres','1 xícara de grão-de-bico
1/2 cebola picada
2 dentes de alho picados
2 colheres (sopa) de azeite de oliva
2 colheres (sopa) de suco de limão
1/4 de xícara de farinha de trigo
cheiro verde a gosto
orégano a gosto
cominho a gosto
páprica doce a gosto
sal a gosto',1,3,4,5);

INSERT INTO Receitas (nome,Descrição,ingredientes,fk_tipo_rec) values
('estrogonofe de grão de bico e palmito','Preparo do grão de bico:
Deixe o grão de bico de molho, imerso em água por pelo menos 8 horas.
Escorra e coloque o grão de bico em uma panela de pressão.
Encha a panela de água, de forma com que fique uma camada de água de pelo menos 5 centímetros acima do grão de bico.
Adicione as folhas de louro.
Leve ao forno e deixe ferver por 20 minutos após iniciar a pressão.
Deixe esfriar e reserve.
Preparo do creme de leite de caju:
Em um liquidificador, adicione a castanha de caju e a água, e bata por 3 minutos até formar um creme
Reserve.
Preparo do cogumelo paris:
Lave os cogumelos e corte em fatias finas.
Leve ao fogo em uma frigideira pré-aquecida por 5 minutos, até que o cogumelo solte a água.
Escorra e reserve.
Preparo do Strogonoff:
Em uma panela grande pré aquecida, coloque o azeite e as sementes de mostarda
Frite até que elas comecem a dourar, ou até que comecem a "saltar".
Adicione o alho e a cebola e refogue por 3 minutos.
Acrescente o grão de bico, o palmito picado e os cogumelos, deixando em fogo baixo por aproximadamente 5 minutos.
Mexa delicadamente para o grão de bico e palmito não desmancharem.
Acrescente a polpa de tomate e a água.
Adicione o sal e deixe cozinhar, em fogo baixo, por 10 minutos.

Desligue o fogo e acrescente o creme de leite de caju e a cebolinha.','1 xícara de grão de bico (cru)
4 folhas de louro
1 xícara de cogumelo paris fresco
2 colheres (sopa) de azeite
1 colher (sopa) de semente de mostarda
6 dentes de alho picados
1 cebola grande picada
1 vidro de palmito cortado em rodelas
2 xícaras de polpa de tomate
1/2 xícara de água
Cebolinha a gosto
200 g de creme de leite de caju
1 colher (sopa) de sal
Para o creme de leite de caju:
100 g de semente de caju torrada sem sal
100 ml de água', 5);
-- -------------------- vegetariano--------------------------------------------------------------------------------------------------------
INSERT INTO Receitas (nome,Descrição,ingredientes,fk_tipo_rec) values
('Omelete mico','Misturar os ovos, o leite e o sal em um prato fundo.
Aquecer uma frigideira untada com o azeite em fogo alto.
Colocar os ovos misturados nessa frigideira e deixar em fogo alto até a omelete desgrudar da panela.
Colocar a aveia em todo a omelete.
Abaixar o fogo e virar a omelete (pode usar um prato para auxiliar).
Colocar o queijo, a banana e a canela em uma metade da omelete e em seguida dobrar a omelete no meio.
Desligar o fogo e colocar o mel por cima.','2 colheres sopa de leite
1 colher sopa de flocos de aveia
2 fatias de queijo mussarela
1 banana prata ou nanica
1 colher de sopa de mel
canela a gosto
azeite
sal a gosto',2);


select * from receitas;

INSERT INTO Usuario (nome,email,senha,FK_tipo_user) VALUES
('Fernando Brandão','Ferbrandão@email','111',6),
('Fernanda Caramico','caramico@email.com','222',1),
('Wilian Nicolau','will@email.com','333',2),
('Vivian Silva','Vivian@email.com','444',6);

select (select count(ingredientes) from receitas  where ingredientes like '%alho%') as 'alho',
(select count(ingredientes) from receitas where ingredientes like '%azeite%') as 'azeite',
(select count(ingredientes)  from receitas where ingredientes like '%cebola%')as 'cabola',
(select count(ingredientes) from receitas where ingredientes like '%sal%') as 'sal',
(select count(ingredientes)  from receitas where ingredientes like '%tomate%') as 'tomate' from receitas limit 1;

select * from tipo;
select * from Usuario;

-- select da pesquisa-----------------------------------------------------------------------------------------
select nome from receitas;
select nome,ingredientes,descrição from receitas
 join tipo on fk_tipo_rec=idtipo where fk_tipo_rec = 2 and ingredientes like '%sal%';

update receitas set fk_tipo_rec = null where idreceitas =1;

SELECT nome from receitas where ingredientes like '%cebola%';
select * from receitas;

alter table receitas modify column descrição varchar (1800);

alter table receitas modify column ingredientes varchar (1800);

update receitas set fk_tipo_rec = null where idreceitas =1;

use recipe;
select * from Usuario;