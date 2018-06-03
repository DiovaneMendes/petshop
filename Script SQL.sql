
CREATE TABLE CLIENTE(
	NOME VARCHAR(50) NOT NULL,
	RG INTEGER PRIMARY KEY,
	TELEFONE INTEGER
);

CREATE TABLE PET(
	ID_PET SERIAL PRIMARY KEY,
	NOME VARCHAR(20) NOT NULL,
	TIPO_ANIMAL VARCHAR(20) NOT NULL,
	CLIENTE VARCHAR(50) REFERENCES CLIENTE(RG),
	TIPO_SERVICO VARCHAR(30) REFERENCES TIPO_SERVICO(NUMERO_SERVICO)
);

CREATE TABLE TIPO_SERVICO(
	NUMERO_SERVICO SERIAL PRIMARY KEY,
	NOME VARCHAR(30) NOT NULL,
	TIPO_ATENDIMENTO VARCHAR(20) NOT NULL,
	PRECO DECIMAL
);

CREATE TABLE VENDA(
	ID_VENDA SERIAL PRIMARY KEY,
	CLIENTE VARCHAR(50) REFERENCES CLIENTE(RG),
	DATA_HORA TIMESTAMP NOT NULL,
	TIPO_SERVICO VARCHAR(30) REFERENCES TIPO_SERVICO(NUMERO_SERVICO),
	VALOR_TOTAL DECIMAL 
);

INSERT INTO CLIENTE (NOME, RG, TELEFONE)
	VALUES('Diovane', 7852961489, 996816201);

/*Lembrando que para inserir no pet, tem que ter os dados de cliente e tipos de servico inseridos*/
INSERT INTO PET (NOME, TIPO_ANIMAL, CLIENTE, TIPO_SERVICO)
	VALUES('Alfredo', 'cachorro', 7852961489, 1)

INSERT INTO TIPO_SERVICO (NUMERO_SERVICO, NOME, TIPO_ATENDIMENTO, PRECO)
	VALUES(1, 'tosa', 'estético', 32.50);