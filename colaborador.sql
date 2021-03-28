create table colaborador(
	id_colaborador serial primary key,
	nm_colaborador varchar(250) not null,
	cd_cpf_cnpj varchar unique not null,
	dt_nascimento date not null,
	cd_uf int null,
	nm_cidade_natural varchar(50),
	cd_etnia int,
	cd_genero int,
	cd_estado_civil int,
	fl_cadastro_completo boolean not null default false,
	nm_mae varchar(250),
	nm_pai varchar(250),
	dt_admissao date,
	cd_cargo int,
	vl_salario float,
	id_tipo_contrato int,
	id_tipo_ticket int,
	fl_vale_transporte boolean
	/*foreign key (id_tipo_ticket) references tipo_ticket(id_tipo_ticket),
	foreign key (id_tipo_contrato) references tipo_contrato(id_tipo_contrato)*/
);


insert into
	colaborador (nm_colaborador, cd_etnia, cd_uf, cidade_naturalidade, cd_genero, cd_estado_civil,	dt_nascimento, cd_cpf_cnpj, fl_cadastro_completo, nm_mae,
	nm_pai, dt_admissao, cd_cargo, vl_salario, fl_vale_transporte, id_tipo_contrato, id_tipo_ticket)
values('eloy', 'parda', 'ES', 'Linhares', 'masculino', 'solteiro', '1997-12-28', '12345678932', 'false',
'dadawqe', 'adasdsca', '2021-03-17', 'gerente de projetos', 6000, 400, 2, 1);
insert into
	colaborador (nm_colaborador, cd_etnia, cd_uf, cidade_naturalidade, cd_genero, cd_estado_civil,	dt_nascimento, cd_cpf_cnpj, fl_cadastro_completo, nm_mae,
	nm_pai, dt_admissao, cd_cargo, vl_salario, fl_vale_transporte, id_tipo_contrato, id_tipo_ticket)
values('geovônibus', 'branco', 'ES', 'vitória', 'duvidoso', 'aberto', '1996-4-24', '12345678912', 'false',
'dadawqe', 'adasdsca', '2021-03-17', 'desenvolvedor', 1000,  400, 1, 1);
insert into
	colaborador (nm_colaborador, cd_etnia, cd_uf, cidade_naturalidade, cd_genero, cd_estado_civil,	dt_nascimento, cd_cpf_cnpj, fl_cadastro_completo, nm_mae,
	nm_pai, dt_admissao, cd_cargo, vl_salario, fl_vale_transporte, id_tipo_contrato, id_tipo_ticket)
values('etavaldo', 'branco', 'MG', 'munhuaçu', 'masculino', 'casado', '1996-4-24', '12345678911' , 'false',
'dadawqe', 'adasdsca', '2021-03-17', 'desenvolvedor', 2000, 400, 3, 2);
insert into
	colaborador (nm_colaborador, cd_etnia, cd_uf, cidade_naturalidade, cd_genero, cd_estado_civil,	dt_nascimento, cd_cpf_cnpj, fl_cadastro_completo, nm_mae,
	nm_pai, dt_admissao, cd_cargo, vl_salario, fl_vale_transporte, id_tipo_contrato, id_tipo_ticket)
values('molgol gigante', 'branco', 'ES', 'vitória', 'duvidoso', 'aberto', '1998-4-24', '12345678913', 'false',
'dadawqe', 'adasdsca', '2021-03-17', 'vendedor', 100, 400, 3, 3);
insert into
	colaborador (nm_colaborador, cd_etnia, cd_uf, cidade_naturalidade, cd_genero, cd_estado_civil,	dt_nascimento, cd_cpf_cnpj, fl_cadastro_completo, nm_mae,
	nm_pai, dt_admissao, cd_cargo, vl_salario, fl_vale_transporte, id_tipo_contrato, id_tipo_ticket)
values('molgol de franja', 'branco', 'ES', 'vitória', 'duvidoso', 'aberto', '1998-4-24', '14345678911', 'false',
'dadawqe', 'adasdsca', '2021-03-17', 'gestor de vendas', 5000, 400, 3, 3);


select * from colaborador ;