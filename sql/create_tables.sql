CREATE TABLE menu (
	id		SERIAL			PRIMARY KEY,
	titulo	VARCHAR(200)
);

CREATE TABLE respostas (
	id				SERIAL			PRIMARY KEY,
	texto_resposta	VARCHAR(512)
);

CREATE TABLE opcoes_menu (
	id				SERIAL			PRIMARY KEY,
	id_menu			SERIAL,
	id_resposta		SERIAL,
	num_opcao		INTEGER,
	texto_opcao		VARCHAR(255),
	tipo_resposta	INTEGER,
	
	CONSTRAINT fk_idmenu FOREIGN KEY (id_menu) 		REFERENCES menu(id),
	CONSTRAINT fk_idresp FOREIGN KEY (id_resposta) 	REFERENCES respostas(id)
);
