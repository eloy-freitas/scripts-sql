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

select * from dependentes ;