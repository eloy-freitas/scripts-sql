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
	cargo varchar not null,--outra tabela
	salario float not null,
	id_tipo_contrato_fk int not null,
	vale_transporte float null,--boolean
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


select * from colaborador ;