create table tipo_ticket(
	id_tipo_ticket serial primary key,
	nome varchar not null
);

insert into tipo_ticket(nome) values('alimentação');
insert into tipo_ticket(nome) values('cerveja');
insert into tipo_ticket(nome) values('churrasco');

create table tipo_pagamento(
	id_tipo_pagamento serial primary key,
	nome varchar not null
);

insert into tipo_pagamento (nome)
values ('credito');
insert into tipo_pagamento (nome)
values ('débito');
insert into tipo_pagamento (nome)
values ('boleto');

create table tipo_equipamento(
	id_tipo_equipamento serial primary key,
	nome varchar not null,
	fabricante varchar not null
);

insert into tipo_equipamento(nome, fabricante)
values('teclado gaymer giganto', 'razer');
insert into tipo_equipamento(nome, fabricante)
values('mouse gaymer laizer', 'razer');
insert into tipo_equipamento(nome, fabricante)
values('mousepad gaymer rgb gladiator', 'multilaser');
insert into tipo_equipamento(nome, fabricante)
values('headset gaymer rgb duvidoso', 'knup');

create table equipamento(
	numeracao serial primary key,
	data_aquisicao date not null,
	id_tipo_equipamento_fk int not null,
	foreign key (id_tipo_equipamento_fk) references tipo_equipamento(id_tipo_equipamento)
);

insert into equipamento(data_aquisicao, id_tipo_equipamento_fk)
values(current_date, 1);
insert into equipamento(data_aquisicao, id_tipo_equipamento_fk)
values(current_date, 2);
insert into equipamento(data_aquisicao, id_tipo_equipamento_fk)
values(current_date, 3);
insert into equipamento(data_aquisicao, id_tipo_equipamento_fk)
values(current_date, 4);

create table tipo_contrato(
	id_tipo_contrato serial primary key,
	nome varchar not null
);

insert into tipo_contrato(nome) 
values('estagiário');
insert into tipo_contrato(nome) 
values('contratado');
insert into tipo_contrato(nome) 
values('tercerizado');

create table relacao_parental(
	id_relacao_parental serial primary key,
	nome varchar not null
);

insert into relacao_parental(nome)
values('pai');
insert into relacao_parental(nome)
values('mae');
insert into relacao_parental(nome)
values('filho(a)');
insert into relacao_parental(nome)
values('irmã(o)');
insert into relacao_parental(nome)
values('avô');
insert into relacao_parental(nome)
values('avó');

create table ferias(
	id_ferias serial primary key,
	data_solicitacao date not null,
	data_aprovacao date null,
	data_inicio date not null,
	data_fim date not null,
	qtd_dias_abono int not null,
	justificativa varchar null
);

insert into ferias(data_solicitacao, data_aprovacao, data_inicio,
data_fim, qtd_dias_abono, justificativa)
values(current_date, current_date, current_date, current_date,
1000, 'de saco cheio desse corona nessa porra');

insert into ferias(data_solicitacao, data_aprovacao, data_inicio,
data_fim, qtd_dias_abono, justificativa)
values(current_date, current_date, current_date, current_date,
1000, 'acaba logo corona');

insert into ferias(data_solicitacao, data_aprovacao, data_inicio,
data_fim, qtd_dias_abono, justificativa)
values(current_date, current_date, current_date, current_date,
1000, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');

CREATE TABLE endereco(
	ID_ENDERECO SERIAL PRIMARY KEY,
	LOGRADOURO VARCHAR NOT NULL,
	NUMERO INT NOT NULL,
	BAIRO VARCHAR NOT NULL,
	CIDADE VARCHAR NOT NULL,
	CEP VARCHAR NOT NULL,
	UL VARCHAR NOT NULL,
	COMPLEMENTO VARCHAR NULL
);

INSERT INTO ENDERECO (LOGRADOURO,NUMERO ,BAIRO ,CIDADE, CEP, UL, COMPLEMENTO )
VALUES ('RUA PADRE ANCHIETA',135, 'CENTRO', 'ALEGRE', 29500000, 'ES', 'EM CIMA DA CLINICA VIVARE');
INSERT INTO ENDERECO (LOGRADOURO,NUMERO ,BAIRO ,CIDADE, CEP, UL, COMPLEMENTO )
VALUES ('AV OLIVIO CORREA PEDROSA', 1000, 'CENTRO', 'ALEGRE', 29500000, 'ES', 'EM FRENTE AO SAAE');
INSERT INTO ENDERECO (LOGRADOURO,NUMERO ,BAIRO ,CIDADE, CEP, UL, COMPLEMENTO )
VALUES ('RUA VITÓRIO ALBANIS', 1000, 'CENTRO', 'ALEGRE', 29500000, 'ES', 'EM FRENTE AO SAAE');

create table contato(
	id_contato serial primary key,
	email varchar not null,
	celular varchar not null,
	residencial varchar null
);

insert into contato(email, celular, residencial)
values ('admin@site.com', '028981434273', '015376987357');
insert into contato(email, celular, residencial)
values ('webadmin@gmail.com', '028981434275', '015376987957');
insert into contato(email, celular, residencial)
values ('jacs@hotmaiil.com', '028981434277', '015376987951');

create table contato_emergencia(
	id_contato_emergencia serial primary key,
	nome varchar not null,
	id_contato_fk int not null,
	foreign key (id_contato_fk) references contato(id_contato)
);

insert into contato_emergencia(nome, id_contato_fk)
values('cleida', 1);
insert into contato_emergencia(nome, id_contato_fk)
values('robmilson', 2);
insert into contato_emergencia(nome, id_contato_fk)
values('maricleia', 1);
insert into contato_emergencia(nome, id_contato_fk)
values('chonsk', 3);

create table colaborador(
	id_colaborador serial primary key,
	nome varchar not null,
	etnia varchar not null,
	uf_naturalidade varchar not null,
	cidade_naturalidade varchar not null,
	genero varchar not null,
	estado_civil varchar not null,
	data_nascimento date not null,
	cpf_cnpj varchar unique not null,
	nome_mae varchar not null,
	nome_pai varchar not null,
	data_admissao date not null,
	cargo varchar not null,
	salario float not null,
	id_tipo_contrato_fk int not null,
	vale_transporte float null,
	id_tipo_ticket_fk int not null,
	foreign key (id_tipo_ticket_fk) references tipo_ticket(id_tipo_ticket),
	foreign key (id_tipo_contrato_fk) references tipo_contrato(id_tipo_contrato)
);


insert into
	colaborador (nome, etnia, uf_naturalidade, cidade_naturalidade, genero, estado_civil,	data_nascimento, cpf_cnpj, nome_mae,
	nome_pai, data_admissao, cargo, salario, vale_transporte, id_tipo_contrato_fk, id_tipo_ticket_fk)
values('eloy', 'parda', 'ES', 'Linhares', 'masculino', 'solteiro', '1997-12-28', '12345678932',
'dadawqe', 'adasdsca', '2021-03-17', 'gerente de projetos', 6000, 400, 2, 1);
insert into
	colaborador (nome, etnia, uf_naturalidade, cidade_naturalidade, genero, estado_civil,	data_nascimento, cpf_cnpj, nome_mae,
	nome_pai, data_admissao, cargo, salario, vale_transporte, id_tipo_contrato_fk, id_tipo_ticket_fk)
values('geovônibus', 'branco', 'ES', 'vitória', 'duvidoso', 'aberto', '1996-4-24', '12345678912',
'dadawqe', 'adasdsca', '2021-03-17', 'desenvolvedor', 1000,  400, 1, 1);
insert into
	colaborador (nome, etnia, uf_naturalidade, cidade_naturalidade, genero, estado_civil,	data_nascimento, cpf_cnpj, nome_mae,
	nome_pai, data_admissao, cargo, salario, vale_transporte, id_tipo_contrato_fk, id_tipo_ticket_fk)
values('etavaldo', 'branco', 'MG', 'munhuaçu', 'masculino', 'casado', '1996-4-24', '12345678911',
'dadawqe', 'adasdsca', '2021-03-17', 'desenvolvedor', 2000, 400, 3, 2);
insert into
	colaborador (nome, etnia, uf_naturalidade, cidade_naturalidade, genero, estado_civil,	data_nascimento, cpf_cnpj, nome_mae,
	nome_pai, data_admissao, cargo, salario, vale_transporte, id_tipo_contrato_fk, id_tipo_ticket_fk)
values('molgol gigante', 'branco', 'ES', 'vitória', 'duvidoso', 'aberto', '1998-4-24', '12345678913',
'dadawqe', 'adasdsca', '2021-03-17', 'vendedor', 100, 400, 3, 3);
insert into
	colaborador (nome, etnia, uf_naturalidade, cidade_naturalidade, genero, estado_civil,	data_nascimento, cpf_cnpj, nome_mae,
	nome_pai, data_admissao, cargo, salario, vale_transporte, id_tipo_contrato_fk, id_tipo_ticket_fk)
values('molgol de franja', 'branco', 'ES', 'vitória', 'duvidoso', 'aberto', '1998-4-24', '14345678911',
'dadawqe', 'adasdsca', '2021-03-17', 'gestor de vendas', 5000, 400, 3, 3);

create table colaborador_endereco(
	id_colaborador_endereco serial primary key,
	id_colaborador_fk int not null,
	id_endereco_fk int not null,
	foreign key (id_colaborador_fk) references colaborador(id_colaborador),
	foreign key (id_endereco_fk) references endereco(id_endereco)
);

insert into colaborador_endereco(id_colaborador_fk, id_endereco_fk)
values (1, 2);
insert into colaborador_endereco(id_colaborador_fk, id_endereco_fk)
values (5, 1);
insert into colaborador_endereco(id_colaborador_fk, id_endereco_fk)
values (6, 1);

create table colaborador_equipamento(
	id_colaborador_equipamento serial primary key,
	id_colaborador_fk int not null,
	numeracao_fk int not null,
	data_atribuicao date not null,
	foreign key (id_colaborador_fk) references colaborador(id_colaborador),
	foreign key (numeracao_fk) references equipamento(numeracao)
);

insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(1, 1, current_date);
insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(1, 2, current_date);
insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(1, 3, current_date);
insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(1, 4, current_date);
insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(5, 1, current_date);
insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(5, 2, current_date);
insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(5, 3, current_date);
insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(5, 4, current_date);
insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(6, 1, current_date);
insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(6, 2, current_date);
insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(6, 3, current_date);
insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(7, 1, current_date);
insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(7, 2, current_date);
insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(9, 1, current_date);
insert into colaborador_equipamento(id_colaborador_fk, numeracao_fk, data_atribuicao)
values(9, 2, current_date);

create table dados_bancarios(
	id_dados_bancarios serial primary key,
	id_colaborador_fk int not null,
	banco varchar not null,
	agencia varchar not null,
	conta varchar not null,
	tipo_conta varchar not null,
	foreign key (id_colaborador_fk) references colaborador(id_colaborador)
);

insert into dados_bancarios(id_colaborador_fk, banco, agencia, conta, tipo_conta)
values(1, '1234', '5678', '91011', 'corrente');
insert into dados_bancarios(id_colaborador_fk, banco, agencia, conta, tipo_conta)
values(5, '5468435', '5697978', '91046411', 'corrente');
insert into dados_bancarios(id_colaborador_fk, banco, agencia, conta, tipo_conta)
values(6, '4646', '9876', '164', 'corrente');
insert into dados_bancarios(id_colaborador_fk, banco, agencia, conta, tipo_conta)
values(7, '796346', '43135', '71313', 'corrente');
insert into dados_bancarios(id_colaborador_fk, banco, agencia, conta, tipo_conta)
values(9, '14646', '354868', '7834', 'corrente');

create table departamento(
	id_departamento serial primary key,
	nome varchar not null,
	id_gestor int not null,
	foreign key (id_gestor) references colaborador(id_colaborador)
);

insert into departamento(nome, id_gestor)
values('desenvolvimento', 1);
insert into departamento(nome, id_gestor)
values('vendas', 5);

create table departamento_colaborador(
	id_departamento_colaborador serial primary key,
	id_colaborador_fk int not null,
	id_departamento_fk int not null,
	foreign key (id_colaborador_fk) references colaborador(id_colaborador),
	foreign key (id_departamento_fk) references departamento(id_departamento)
);


insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(1, 1);
insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(5, 1);
insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(6, 1);
insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(7, 2);
insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(9, 2);

create table formacao_academica(
	id_formacao_academica serial primary key,
	id_colaborador_fk int not null,
	escolaridade varchar not null,
	instituição varchar not null,
	curso varchar not null,
	ano_conclusao date not null,
	foreign key (id_colaborador_fk) references colaborador(id_colaborador)
);

insert into formacao_academica(id_colaborador_fk, escolaridade, instituição, curso, ano_conclusao)
values(1, 'superior completo', 'UFES','Ciência da Computação', current_date);
insert into formacao_academica(id_colaborador_fk, escolaridade, instituição, curso, ano_conclusao)
values(5, 'superior completo', 'USP','Sistemas de informação', current_date);
insert into formacao_academica(id_colaborador_fk, escolaridade, instituição, curso, ano_conclusao)
values(6, 'superior completo', 'UNIP','Ciência da Computação', current_date);
insert into formacao_academica(id_colaborador_fk, escolaridade, instituição, curso, ano_conclusao)
values(7, 'superior completo', 'UFES','Ciência da Computação', current_date);
insert into formacao_academica(id_colaborador_fk, escolaridade, instituição, curso, ano_conclusao)
values(9, 'superior completo', 'UFES','Sistemas de informação', current_date);

create table dependentes(
	id_dependentes serial primary key,
	id_colaborador_fk int not null,
	nome varchar not null,
	data_nascimento date not null,
	nome_mae varchar not null,
	email varchar not null,
	cpf varchar not null,
	id_relacao_parental_fk int not null,
	foreign key (id_colaborador_fk) references colaborador(id_colaborador),
	foreign key (id_relacao_parental_fk) references relacao_parental(id_relacao_parental)
	);

insert into dependentes(id_colaborador_fk, nome, data_nascimento, nome_mae, email, cpf, id_relacao_parental_fk)
values(5, 'chubscreuza', current_date, 'raimunda', 'chubscreuza@ufes.br', '14134778923', 1);
insert into dependentes(id_colaborador_fk, nome, data_nascimento, nome_mae, email, cpf, id_relacao_parental_fk)
values(7, 'bruno', current_date, 'kiko', 'bruno@ufes.br', '14134778926', 2);
insert into dependentes(id_colaborador_fk, nome, data_nascimento, nome_mae, email, cpf, id_relacao_parental_fk)
values(9, 'marcilio', current_date, 'o loko', 'marcilio@ufes.br', '14134758926', 2);

create table holerite (
	id_holerite serial primary key,
	id_colaborador_fk int not null,
	id_tipo_pagamento_fk int not null,
	data_referencia date not null,
	desconto float null,
	valor float not null,
	foreign key (id_colaborador_fk) references colaborador(id_colaborador),
	foreign key (id_tipo_pagamento_fk) references tipo_pagamento(id_tipo_pagamento)
);

insert into holerite(id_colaborador_fk, id_tipo_pagamento_fk, data_referencia, desconto, valor)
values(1, 2, current_date, 50, 10000);
insert into holerite(id_colaborador_fk, id_tipo_pagamento_fk, data_referencia, desconto, valor)
values(1, 1, current_date, 30, 5000);
insert into holerite(id_colaborador_fk, id_tipo_pagamento_fk, data_referencia, desconto, valor)
values(5, 1, current_date, 30, 6000);
insert into holerite(id_colaborador_fk, id_tipo_pagamento_fk, data_referencia, desconto, valor)
values(5, 3, current_date, 0, 500);
insert into holerite(id_colaborador_fk, id_tipo_pagamento_fk, data_referencia, desconto, valor)
values(6, 3, current_date, 0, 100);
insert into holerite(id_colaborador_fk, id_tipo_pagamento_fk, data_referencia, desconto, valor)
values(7, 3, current_date, 10, 200);