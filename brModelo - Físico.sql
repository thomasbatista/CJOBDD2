CREATE TABLE CLIENTES 
( 
  Cod_Cliente  INT          PRIMARY KEY,  
  Sobrenome    VARCHAR(50),
  Nome         VARCHAR(50),
  Inicial      CHAR(1),
  DDD          CHAR(3),
  Telefone     VARCHAR(15),
  Saldo        FLOAT
); 

CREATE TABLE FATURAS 
( 
  Num_Fatura   INT  PRIMARY KEY,  
  Data_Fatura  DATE,
  Cod_Cliente  INT
); 

CREATE TABLE FORNECEDORES 
( 
  Cod_Fornecedor  INT          PRIMARY KEY,  
  Nome            VARCHAR(50),
  Contato         VARCHAR(50),
  DDD             CHAR(3),
  Telefone        VARCHAR(15)
); 

CREATE TABLE PRODUTOS 
( 
  Cod_Produto     INT          PRIMARY KEY,  
  Descricao       VARCHAR(100),
  Data_Compra     DATE,
  Quantidade      INT,
  Valor           FLOAT,
  Cod_Fornecedor  INT
); 

CREATE TABLE LINHAS 
( 
  Num_Linha    INT   PRIMARY KEY,  
  Unidades     INT,
  Valor        FLOAT,
  Num_Fatura   INT,
  Cod_Produto  INT
); 

ALTER TABLE FATURAS 
  ADD FOREIGN KEY(Cod_Cliente) REFERENCES CLIENTES(Cod_Cliente);

ALTER TABLE PRODUTOS 
  ADD FOREIGN KEY(Cod_Fornecedor) REFERENCES FORNECEDORES(Cod_Fornecedor);

ALTER TABLE LINHAS 
  ADD FOREIGN KEY(Num_Fatura) REFERENCES FATURAS(Num_Fatura);

ALTER TABLE LINHAS 
  ADD FOREIGN KEY(Cod_Produto) REFERENCES PRODUTOS(Cod_Produto);