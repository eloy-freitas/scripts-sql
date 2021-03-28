create table dependentes(
	id_dependentes serial primary key,
	id_colaborador int not null,
	nm_dependente varchar not null,
	dt_nascimento date not null,
	nm_mae varchar not null,
	txt_email varchar not null,
	cd_cpf varchar not null,
	id_relacao_parental int not null,
	foreign key (id_colaborador) references colaborador(id_colaborador),
	foreign key (id_relacao_parental) references relacao_parental(id_relacao_parental)
	);

insert into dependentes(id_colaborador, nm_dependente, dt_nascimento, nm_mae, txt_email, cd_cpf, id_relacao_parental)
values(5, 'chubscreuza', current_date, 'raimunda', 'chubscreuza@ufes.br', '14134778923', 1);
insert into dependentes(id_colaborador, nm_dependente, dt_nascimento, nm_mae, txt_email, cd_cpf, id_relacao_parental)
values(7, 'bruno', current_date, 'kiko', 'bruno@ufes.br', '14134778926', 2);
insert into dependentes(id_colaborador, nm_dependente, dt_nascimento, nm_mae, txt_email, cd_cpf, id_relacao_parental)
values(9, 'marcilio', current_date, 'o loko', 'marcilio@ufes.br', '14134758926', 2);

select * from dependentes ;