CREATE DATABASE DB_PIZZARIA_LEGAL;

USE DB_PIZZARIA_LEGAL;

CREATE TABLE TB_CATEGORIAS(
ID BIGINT AUTO_INCREMENT,
TAMANHO CHAR(255),
TIPO CHAR(255), /*DOCE OU SALGADA*/
PRIMARY KEY(ID)
);

CREATE TABLE TB_PIZZAS(
ID BIGINT AUTO_INCREMENT,
NOME CHAR(255),
SABOR CHAR(255),
VALOR DOUBLE,
PRIMARY KEY(ID),
CTG_ID BIGINT,
FOREIGN KEY (CTG_ID) REFERENCES TB_CATEGORIAS(ID)
);

/*VISUALIZAÇÃO DA TABELA*/
SELECT * FROM TB_CATEGORIAS;
SELECT * FROM TB_PIZZAS;

/*ADICIONANDO TB CATEGORIAS*/
INSERT INTO TB_CATEGORIAS(TAMANHO,TIPO) VALUES ("PEQUENA","SALGADA");
INSERT INTO TB_CATEGORIAS(TAMANHO,TIPO) VALUES ("MÉDIA","SALGADA");
INSERT INTO TB_CATEGORIAS(TAMANHO,TIPO) VALUES ("PEQUENA","DOCE");
INSERT INTO TB_CATEGORIAS(TAMANHO,TIPO) VALUES ("MÉDIA","DOCE");

/*ADICIONANDO TB PIZZAS*/
INSERT INTO TB_PIZZAS(NOME,SABOR,VALOR,CTG_ID) VALUES ("4 QUEIJOS","QUEIJO",35.00,1);
INSERT INTO TB_PIZZAS(NOME,SABOR,VALOR,CTG_ID) VALUES ("CALABRESA","CALABRESA",40.00,2);
INSERT INTO TB_PIZZAS(NOME,SABOR,VALOR,CTG_ID) VALUES ("PORTUGUESA","QUEIJO",42.00,1);
INSERT INTO TB_PIZZAS(NOME,SABOR,VALOR,CTG_ID) VALUES ("MORANGUETE","CHOCOLATE E MORANGO",50.00,4);
INSERT INTO TB_PIZZAS(NOME,SABOR,VALOR,CTG_ID) VALUES ("FRANGO COM CATUPIRY","FRANGO",45.00,2);
INSERT INTO TB_PIZZAS(NOME,SABOR,VALOR,CTG_ID) VALUES ("CHOCONANA","CHOCOLATE E BANANA",43.00,3);

/*BUSCA*/
SELECT * FROM TB_PIZZAS WHERE VALOR > 45;
SELECT * FROM TB_PIZZAS WHERE VALOR > 30 AND VALOR < 45;
SELECT * FROM TB_PIZZAS WHERE NOME LIKE "%M%";

/*INNER JOIN*/
SELECT * FROM TB_CATEGORIAS INNER JOIN TB_PIZZAS ON TB_CATEGORIAS.ID = TB_PIZZAS.CTG_ID;
SELECT * FROM TB_CATEGORIAS INNER JOIN TB_PIZZAS ON TB_CATEGORIAS.ID = TB_PIZZAS.CTG_ID WHERE TIPO LIKE "DOCE";
