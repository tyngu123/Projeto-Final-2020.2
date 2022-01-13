USE db_projeto_final;

INSERT INTO tipo_usuario(descricao) VALUES('Free');
INSERT INTO tipo_usuario(descricao) VALUES('Premium');
INSERT INTO tipo_usuario(descricao) VALUES('Admin');
INSERT INTO tipo_usuario(descricao) VALUES('Empresarial');


INSERT INTO usuario(nome, sobrenome, nascimento, cpf, endereco, bairro, municipio, estado, cep, email, senha, id_tipo) VALUES('Carlos', 'Eduardo', '04/09/2002','869.245.566-15', 'AV Doutor soero de carvalho', 'Trindade', 'São Gonçalo', 'RJ', 24.320-570, 'Carlos.eduardo040503@gmail.com', '1234qwe.', 3);
INSERT INTO usuario(nome, sobrenome, nascimento, cpf, endereco, bairro, municipio, estado, cep, email, senha, id_tipo) VALUES('Jose', 'Augusto', '08/05/1997', '895.512.647-53', 'Estrada caetano monteiro', 'Pendotida', 'Niteroi', 'RJ', 24.458-563,'Jose.augusto53@gmail.com', '9664821..',  1);
INSERT INTO usuario(nome, sobrenome, nascimento, cpf, endereco, bairro, municipio, estado, cep, email, senha, id_tipo) VALUES('hygor', 'hussel', '23/04/2000', '556.248.559-23', 'R.Gurlemino Lessa', 'Oteiro das Pedras', 'Itaborai', 'RJ', 26.654-235,'Hygor.Russel@hotmail.com', 'HR256314', 4);
INSERT INTO usuario(nome, sobrenome, nascimento, cpf, endereco, bairro, municipio, estado, cep, email, senha, id_tipo) VALUES('hygor', 'hussel', '23/04/2000', '556.555.559-23', 'R.Gurlemino Lessa', 'Oteiro das Pedras', 'Itaborai', 'RJ', 26.654-235,'Hygor.ussel@hotmail.com', 'HR256314', 2);
INSERT INTO usuario(nome, sobrenome, nascimento, cpf, endereco, bairro, municipio, estado, cep, email, senha, id_tipo) VALUES('hygor', 'hussel', '23/04/2000', '556.288.559-23', 'R.Gurlemino Lessa', 'Oteiro das Pedras', 'Itaborai', 'RJ', 26.654-235,'Hygor.sel@hotmail.com', 'HR256314', 1);
INSERT INTO usuario(nome, sobrenome, nascimento, cpf, endereco, bairro, municipio, estado, cep, email, senha, id_tipo) VALUES('hygor', 'hussel', '23/04/2000', '556.222.559-23', 'R.Gurlemino Lessa', 'Oteiro das Pedras', 'Itaborai', 'RJ', 26.654-235,'Hygor.Rssel@hotmail.com', 'HR256314', 4);


INSERT INTO plano_cliente(planos, planos_descricao) VALUES('Free', 'Limitado');
INSERT INTO plano_cliente(planos, planos_descricao) VALUES('Premium', 'Ilimitado');
INSERT INTO plano_cliente(planos, planos_descricao) VALUES('Empresarial', 'Cadastro de Vagas');

INSERT INTO funcionalidade(fun, fun_descricao) VALUES ('Free', 'Tem acesso limitado das vagas, com algumas informações faltando da vaga');
INSERT INTO funcionalidade(fun, fun_descricao) VALUES ('Premium', 'Tem acesso ilimitado das informações das vagas');
INSERT INTO funcionalidade(fun, fun_descricao) VALUES ('Administrador', 'Função de Adicionar, excluir, editar, e manutenção no aplicativo');
INSERT INTO funcionalidade(fun, fun_descricao) VALUES ('Empresarial', 'Função de Adicionar, excluir, editar Vagas no aplicativo');

INSERT INTO relacao( id_tipo, id_fun) VALUES ( 1, 1);
INSERT INTO relacao( id_tipo, id_fun) VALUES ( 2, 2);
INSERT INTO relacao( id_tipo, id_fun) VALUES ( 3, 3);
INSERT INTO relacao( id_tipo, id_fun) VALUES ( 4, 4);



INSERT INTO assinatura_cliente( id_usuario, id_assinatura) VALUES (1,2);
INSERT INTO assinatura_cliente( id_usuario, id_assinatura) VALUES (2,1);
INSERT INTO assinatura_cliente( id_usuario, id_assinatura) VALUES (3,3);
INSERT INTO assinatura_cliente( id_usuario, id_assinatura) VALUES (4,4);


INSERT INTO Cartao(numero, data_validade, nome_pessoa, cvv, tipo, banco) VALUES('2563 2541 8569 8547','05/25','CARLOS E DA SILVA','423','Debito','Santander');
INSERT INTO Cartao(numero, data_validade, nome_pessoa, cvv, tipo, banco) VALUES('3698 8741 8523 7456','01/22','JOSE A REBELLO','461','Credito','Itau');
INSERT INTO Cartao(numero, data_validade, nome_pessoa, cvv, tipo, banco) VALUES('7531 2551 8699 8847','08/25','HYGOR H SOUZA','589','Debito','Bradesco');


INSERT INTO pix(nome_beneficiario, chave_pix) VALUES('Danet', '25654258');
INSERT INTO pix(nome_beneficiario, chave_pix) VALUES('Danet', '25654258');
INSERT INTO pix(nome_beneficiario, chave_pix) VALUES('Danet', '25654258');


INSERT INTO boleto(numero, data_validade, data_emissao) VALUES('2589648 574248756 254878326 24878955 5 24862000058', '02/05/2022', '28/05/2022');
INSERT INTO boleto(numero, data_validade, data_emissao) VALUES('5648545 486468446 848648647 879482486 9 1451247511', '09/09/2022', '28/09/2022');
INSERT INTO boleto(numero, data_validade, data_emissao) VALUES('6174454 185654884 189744484 48486487 8 74564898840', '25/05/2022', '05/06/2022');


INSERT INTO venda(data_venda, id_assinatura) VALUES(28/05/2022);
INSERT INTO venda(data_venda, id_assinatura) VALUES(28/09/2022);
INSERT INTO venda(data_venda, id_assinatura) VALUES(05/06/2022);


INSERT INTO forma_de_pagamento (id_cartao, id_boleto, id_pix) VALUES(1,1,1);
INSERT INTO forma_de_pagamento (id_cartao, id_boleto, id_pix) VALUES(2,2,2);
INSERT INTO forma_de_pagamento (id_cartao, id_boleto, id_pix) VALUES(3,3,3);


INSERT INTO empresa(nome_da_empresa, cnpj, endereco) VALUES('JJcar', '24.320/5700-28', 'R. Juazeiro 856');
INSERT INTO empresa(nome_da_empresa, cnpj, endereco) VALUES('InfoNet', '25.322/5600-34', 'R. Teresopolis 632');
INSERT INTO empresa(nome_da_empresa, cnpj, endereco) VALUES('Danet', '25.235/5200-24', 'R. Petropolis 657');


INSERT INTO vagas(titulo, descricao, salario, beneficio, carga_horaria, localidade,requisitos) VALUES('Assistente de TI', 'Suporte e Manutenção', 200000, 'Vale Trasporte', '8hrs', 'Rio de Janeiro', 'Tecnico em TI Completo');
INSERT INTO vagas(titulo, descricao, salario, beneficio, carga_horaria, localidade,requisitos) VALUES('Auxiliar Administrativo', 'Auxiliar em Administração e Vendas', 450000, 'Vale Trasporte e Vale alimentação', '8hrs', 'Niteroi', 'Tecnico e Graduação Completo em Administração');
INSERT INTO vagas(titulo, descricao, salario, beneficio, carga_horaria, localidade,requisitos) VALUES('Tecnico em Enfermagem', 'Realizar procedimentos, como retirada de sangue', 650000, 'Vale Trasporte e Vale Alimentação', '12hrs', 'Rio de Janeiro', 'Tecnico em Enfermagem Completo');


INSERT INTO termo_uso(descricao) VALUES('123');

INSERT INTO sobre(descricao) VALUES('123');

INSERT INTO config(descricao) VALUES('123');