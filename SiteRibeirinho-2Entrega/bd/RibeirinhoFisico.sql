-- Gera??o de Modelo f?sico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE dados+Cliente+endereco (
ID_CLIENTE INTEGER PRIMARY KEY,
use ribeirinhoEnt2;
CREATE TABLE Cliente (
ID_CLIENTE INTEGER PRIMARY KEY AUTO_INCREMENT,
NOME VARCHAR(50) NOT NULL,
SOBRENOME VARCHAR(50) NOT NULL,
Email VARCHAR(50) NOT NULL,
Senha VARCHAR(8) NOT NULL,
RG VARCHAR(20) NOT NULL,
CPF CHAR(11) NOT NULL,
DATANASCIMENTO DATETIME NOT NULL,
SEXUALIDADE VARCHAR(50) NOT NULL,
CELULAR VARCHAR(50) NOT NULL,
CEP VARCHAR(20) NOT NULL,
ESTADO VARCHAR(50) NOT NULL,
CIDADE VARCHAR(50) NOT NULL,
BAIRRO VARCHAR(50) NOT NULL,
RUA? VARCHAR(60) NOT NULL
);

CREATE TABLE Destino (
CIDADEDESTINO VARCHAR(50) PRIMARY KEY,
CIDADEOrigem VARCHAR(50) NOT NULL,
DATAVIAGEM DATETIME NOT NULL
);

CREATE TABLE Passagens (
ID_PASSAGEM INTEGER PRIMARY KEY auto_increment,
MODODEVIAGEM VARCHAR(40) NOT NULL,
VALOR INTEGER NOT NULL,
CIDADEDESTINO VARCHAR(50),
ID_CLIENTE INTEGER,
FOREIGN KEY(CIDADEDESTINO) REFERENCES Destino (CIDADEDESTINO),
FOREIGN KEY(ID_CLIENTE) REFERENCES Cliente (ID_CLIENTE)
);


