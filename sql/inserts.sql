-- CHABOT UGU: PARA FACOM
-- MENUS:
INSERT INTO menu(titulo)
	VALUES ('MENU PRINCIPAL');
INSERT INTO menu(titulo)
	VALUES ('INFORMAÇÕES SOBRE O CURSO');
INSERT INTO menu(titulo)
	VALUES ('INFORMAÇÕES SOBRE O CURSO: SISTEMAS DE INFORMAÇÃO');
INSERT INTO menu(titulo)
	VALUES ('INFORMAÇÕES SOBRE O CURSO: CIÊNCIA DA COMPUTAÇÃO');
INSERT INTO menu(titulo)
	VALUES ('CALENDÁRIO ACADÊMICO');
INSERT INTO menu(titulo)
	VALUES ('SERVIÇOS DA UFU');
INSERT INTO menu(titulo)
	VALUES ('LOCALIZAÇÃO');
INSERT INTO menu(titulo)
	VALUES ('BLOCO DE AULAS');
INSERT INTO menu(titulo)
	VALUES ('EVENTOS');
INSERT INTO menu(titulo)
	VALUES ('GUIAS E TUTORIAIS');

-- RESPOSTAS
INSERT INTO respostas(texto_resposta)
	VALUES ('CALENDÁRIO ACADÊMICO - http://www.prograd.ufu.br/central-de-conteudos/documentos/calendario');
INSERT INTO respostas(texto_resposta)
	VALUES ('EVENTOS - https://eventos.ufu.br');
INSERT INTO respostas(texto_resposta)
	VALUES ('GUIA
OLÁ, SAIBA COMO USAR O UGU!

Verifique no Menu quais das informações você deseja saber, após isso basta digitar um único digito da opção.

Com isso o UGU irá te retornar todas as informações para que você possa entender sobre o tema. Um submenu pode aparecer solicitando que você digite novamente uma opção desejada, assim da mesma forma como fez no ínicio, basta digitar um único digito da opção.

Para sair e finalizar ou solicitar uma nova informação, você deve apenas digitar o número 0.');
INSERT INTO respostas(texto_resposta)
	VALUES ('OK, AQUI VOCÊ PODE ENCONTRAR INFORMAÇÕES SOBRE A GRADE DE BCC: https://facom.ufu.br/system/files/conteudo/fluxo_curricular_bcc_-_2023-1_1_0.pdf');
INSERT INTO respostas(texto_resposta)
	VALUES ('CERTO, NESSE LINK VOCÊ VAI ECONTRAR OS PROFESSORES DE BCC E SUAS RESPECTIVAS AULAS E EMAILS INSTITUCIONAIS: https://facom.ufu.br/system/files/conteudo/e-mail_professores_2023-1.pdf');
INSERT INTO respostas(texto_resposta)
	VALUES ('NESSE LINK, ESTÃO AS INFORMAÇÕES SOBRE AS DISCIPLINAS DE BCC: https://facom.ufu.br/graduacao/ciencia-da-computacao-campus-santa-monica/fichas-de-disciplina/curriculo-2023-1');
INSERT INTO respostas(texto_resposta)
	VALUES ('OK, AQUI VOCÊ PODE ENCONTRAR INFORMAÇÕES SOBRE A GRADE DE BSI: https://facom.ufu.br/system/files/conteudo/fluxograma_curricular_do_bacharelado_em_si_0.pdf');
INSERT INTO respostas(texto_resposta)
	VALUES ('CERTO, NESSE LINK VOCÊ VAI ECONTRAR OS PROFESSORES DE BSI E SUAS RESPECTIVAS AULAS E EMAILS INSTITUCIONAIS - https://facom.ufu.br/system/files/conteudo/e-mail_professores_2023-1.pdf');
INSERT INTO respostas(texto_resposta)
	VALUES ('NESSE LINK, ESTÃO AS INFORMAÇÕES SOBRE AS DISCIPLINAS DE BCC: https://facom.ufu.br/graduacao/bsi-santamonica/fichas-de-disciplinas-curriculo-2022-2');
INSERT INTO respostas(texto_resposta)
	VALUES ('CLARO, O RESTAURANTE UNIVERSITÁRIO (FAMOSO RU DA UFU) FICA AQUI -> https://maps.app.goo.gl/e1h7jsF9aEeEZ1BK7');
INSERT INTO respostas(texto_resposta)
	VALUES ('SOBRE O INTERCAMPI, NESSE LINK DA PROAE ESTÃO AS INFORMAÇÕES QUE VOCÊ PRECISA: http://www.proae.ufu.br/intercampi');
INSERT INTO respostas(texto_resposta)
	VALUES ('CLARO, A BIBLIOTECA DA UFU FICA AQUI -> https://maps.app.goo.gl/Rpy4KYNsKhqQhPPA8');
INSERT INTO respostas(texto_resposta)
	VALUES ('AQUI ESTÁ O LINK DA PROAE QUE FALA SOBRE OS SERVIÇOS DE SAÚDE DA UFU, A DIVISÃO RESPONSÁVEL É A DISAU: http://www.proae.ufu.br/disau');
INSERT INTO respostas(texto_resposta)
	VALUES ('A COORDENAÇÃO BCC FICA NO BLOCO 1A NA SALA 228, AQUI ESTÁ NO MAPA -> https://maps.app.goo.gl/gjmb5gnSaSj5WYT37');
INSERT INTO respostas(texto_resposta)
	VALUES ('A COORDENAÇÃO BSI FICA NO BLOCO 1A NA SALA 230, AQUI ESTÁ NO MAPA -> https://maps.app.goo.gl/gjmb5gnSaSj5WYT37');
INSERT INTO respostas(texto_resposta)
	VALUES ('O DIRETORIO ACADÊMICO DA COMPUTAÇÃO SE CHAMA ALAN TURING, VOCÊ SABIA? ELE FICA NO BLOCO 1B NA Sala107A, AQUI ESTÁ NO MAPA -> https://maps.app.goo.gl/pAyG19Xi1K543iQo6');
INSERT INTO respostas(texto_resposta)
	VALUES ('A ATLÉTICA DA COMPUTAÇÃO FICA NO BLOCO 1B NA SALA 101, AQUI ESTÁ NO MAPA ->  https://maps.app.goo.gl/65WcFkjy76tz1tLz5');
INSERT INTO respostas(texto_resposta)
	VALUES ('GOSTA DE SAMBA, VENHA CONHECER A BATERIA COMPUTARIA DA COMPUTAÇÃO, ELA FICA NO BLOCO 1B NA SALA 107B, AQUI ESTÁ NO MAPA -> https://maps.app.goo.gl/65WcFkjy76tz1tLz5');
INSERT INTO respostas(texto_resposta)
	VALUES ('O BLOCO 1B FICA AQUI -> https://maps.app.goo.gl/ih9vQTeGRAcEGwYX9');
INSERT INTO respostas(texto_resposta)
	VALUES ('O BLOCO 3Q FICA AQUI -> https://maps.app.goo.gl/4n4JB7sKfoqdPDXx7');
INSERT INTO respostas(texto_resposta)
	VALUES ('BLOCO 5R-A FICA AQUI -> https://maps.app.goo.gl/W69kgQUS8AFQn3Pd9');

-- OPÇÕES DOS MENUS
-- TIPOS: 1 - SUBMENU; 2 - LEAF

-- MENU PRINCIPAL: ID=1
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (1, 2, 1, 'INFORMAÇÕES DO CURSO', 1);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (1, 1, 2, 'CALENDÁRIO ACADÊMICO', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (1, 6, 3, 'SERVIÇOS DA UFU', 1);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (1, 7, 4, 'LOCALIZAÇÃO', 1);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (1, 2, 5, 'EVENTOS', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (1, 3, 6, 'GUIAS E TUTORIAIS', 2);

-- INFORMAÇÕES SOBRE O CURSO: ID=2
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (2, 3, 1, 'SISTEMAS DE INFORMAÇÃO', 1);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (2, 4, 2, 'CIÊNCIA DA COMPUTAÇÃO', 1);

-- INFORMAÇÕES SOBRE BSI: ID=3
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (3, 7, 1, 'GRADE DO CURSO', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (3, 8, 2, 'CONTATO DOS PROFESSORES', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (3, 9, 3, 'DISCIPLINAS', 2);

-- INFORMAÇÕES SOBRE BCC: ID=4
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (4, 4, 1, 'GRADE DO CURSO', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (4, 5, 2, 'CONTATO DOS PROFESSORES', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (4, 6, 3, 'DISCIPLINAS', 2);

-- INFORMAÇÕES SERVIÇOS UFU: ID=6
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (6, 10, 1, 'RESTAURANTE UNIVERSITÁRIO \(RU\)', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (6, 11, 2, 'INTERCAMPI', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (6, 12, 3, 'BIBLIOTECA', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (6, 13, 4, 'SERVIÇOS DE SAÚDE', 2);

-- INFORMAÇÕES LOCALIZAÇÃO: ID=7
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (7, 15, 1, 'SECRETARIA DO CURSO DE SISTEMAS DE INFORMAÇÃO', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (7, 14, 2, 'SECRETARIA DO CURSO DE CIÊNCIA DE COMPUTAÇÃO', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (7, 16, 3, 'DACOMP (DIRETÓRIO ACADÊMICO ALAN TURING)', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (7, 17, 4, 'ATLÉTICA DA COMPUTAÇÃO', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (7, 18, 5, 'BATERIA COMPUTARIA', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (7, 8, 6, 'BLOCOS DE AULAS', 1);

-- INFORMAÇÕES SOBRE BLOCOS: ID=8
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (8, 19, 1, 'BLOCO 1B', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (8, 20, 2, 'BLOCO 3Q', 2);
INSERT INTO opcoes_menu(id_menu, id_resposta, num_opcao, texto_opcao, tipo_resposta)
	VALUES (8, 21, 3, 'BLOCO 5R', 2);
