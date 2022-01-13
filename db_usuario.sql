CREATE DATABASE db_projeto_final;

USE db_projeto_final;

CREATE TABLE tipo_usuario(
		id_tipo int PRIMARY KEY auto_increment,
        descricao VARCHAR(20)
   
     
) ENGINE = innodb;

CREATE TABLE usuario (
		id_usuario int PRIMARY KEY auto_increment,
        nome VARCHAR(15) NOT NULL,
        sobrenome VARCHAR(15) NOT NULL,
        nascimento date not null,
        cpf VARCHAR(11) NOT NULL UNIQUE,
        endereco VARCHAR(50) NOT NULL,
        bairro VARCHAR(20) not null,
        municipio VARCHAR(20) NOT NULL,
        estado VARCHAR(2) NOT NULL,
        cep VARCHAR(8) NOT NULL,
        email VARCHAR(50) NOT NULL UNIQUE,
        senha VARCHAR(15) NOT NULL,
        id_tipo int,
			FOREIGN KEY (id_tipo)
			REFERENCES tipo_usuario(id_tipo)
				ON UPDATE CASCADE
				ON DELETE CASCADE
) ENGINE = innodb;

CREATE TABLE plano_cliente (
		id_assinatura int primary key auto_increment,
		planos VARCHAR(30),
        planos_descricao VARCHAR (40)
) ENGINE = innodb;
        
CREATE TABLE funcionalidade (
			id_fun INT PRIMARY KEY auto_increment,
            fun VARCHAR(15),
            fun_descricao VARCHAR(100)
           ) ENGINE = innodb;      
        
    CREATE TABLE relacao (
			id_relacao INT PRIMARY KEY auto_increment,
                id_tipo INT,
            FOREIGN KEY (id_tipo)
			REFERENCES tipo_usuario(id_tipo)
			ON UPDATE CASCADE
            ON DELETE CASCADE,
            id_fun INT,
            FOREIGN KEY (id_fun)
            REFERENCES funcionalidade(id_fun)
            ON UPDATE CASCADE
            ON DELETE CASCADE
	) ENGINE = innodb;    
    
CREATE TABLE assinatura_do_cliente (
		id_ass_cli int primary key auto_increment,
		id_usuario int,
			foreign key (id_usuario)
			references usuario(id_usuario)
				ON UPDATE CASCADE
				ON DELETE CASCADE,
		id_assinatura int,
			foreign key (id_assinatura)
			references plano_cliente(id_assinatura)
				ON UPDATE CASCADE
				ON DELETE CASCADE
)ENGINE = innodb; 

CREATE TABLE Cartao (
		id_cartao INT primary key auto_increment,
		numero VARCHAR(45),
		data_validade DATE,
		nome_pessoa VARCHAR(45),
		cvv MEDIUMINT(3),
		tipo ENUM('Credito', 'Debito'),
		banco VARCHAR(45)
)ENGINE = innodb;

CREATE TABLE pix (
		id_pix INT PRIMARY KEY auto_increment,
		nome_beneficiario VARCHAR(50),
		chave_pix VARCHAR(20)
)ENGINE = innodb;

CREATE TABLE boleto(
			id_boleto INT primary key auto_increment,
			numero VARCHAR(50),
			data_validade DATE,
			data_emissao DATE
)ENGINE = innodb;

CREATE TABLE forma_de_pagamento (
		id_forma_pagamento INT primary key auto_increment,
		id_cartao INT,
		FOREIGN KEY (id_cartao)
		REFERENCES cartao(id_cartao)
            ON UPDATE CASCADE
            ON DELETE CASCADE,
		id_boleto INT,
		FOREIGN KEY (id_boleto)
		REFERENCES boleto(id_boleto)
            ON UPDATE CASCADE
            ON DELETE CASCADE,
		id_pix INT,
		FOREIGN KEY (id_pix)
		REFERENCES pix(id_pix)
            ON UPDATE CASCADE
            ON DELETE CASCADE
) ENGINE = innodb;

CREATE TABLE venda(
		id_venda INT,
		data_venda DATE,
		id_assinatura INT,
        FOREIGN KEY (id_assinatura)
		REFERENCES plano_cliente(id_assinatura)
            ON UPDATE CASCADE
            ON DELETE CASCADE,
		id_forma_pagamento int,
        foreign key (id_forma_pagamento)
        references forma_de_pagamento(id_forma_pagamento)
			ON UPDATE CASCADE
            ON DELETE CASCADE
) ENGINE = innodb;

CREATE TABLE empresa(
	id_empresa int PRIMARY KEY auto_increment,
    nome_da_empresa VARCHAR(50) NOT NULL,
    cnpj VARCHAR(14) NOT NULL,
    email VARCHAR (50) NOT NULL UNIQUE,
    senha VARCHAR (50) NOT NULL,
    endereco VARCHAR(50)
);

CREATE TABLE vagas (
		id_vagas int PRIMARY KEY auto_increment,
        id_empresa int,
         FOREIGN KEY (id_empresa)
		REFERENCES empresa(id_empresa)
        ON UPDATE CASCADE
            ON DELETE CASCADE,
        titulo VARCHAR(20) NOT NULL,
        descricao VARCHAR(300) NOT NULL,
        salario DECIMAL(6,2) NOT NULL,  
        beneficio VARCHAR(150) NOT NULL,
        carga_horaria VARCHAR(50) NOT NULL,
        estado VARCHAR(40) NOT NULL,
        requisitos VARCHAR(200) NOT NULL
);            

CREATE TABLE termo_uso (
	   id_termo INT PRIMARY KEY auto_increment,
       descricao VARCHAR(100)
       );
       
CREATE TABLE sobre (
			id_sobre INT PRIMARY KEY auto_increment,
            descricao VARCHAR(100)
            );
            
CREATE TABLE config (
			id_config INT PRIMARY KEY auto_increment,
            id_termo INT,
            FOREIGN KEY (id_termo)
			REFERENCES termo_uso(id_termo)
			ON UPDATE CASCADE
            ON DELETE CASCADE,
            id_sobre INT,
            FOREIGN KEY (id_sobre)
			REFERENCES sobre(id_sobre)
			ON UPDATE CASCADE
            ON DELETE CASCADE
	);
    


drop database db_projeto_final;