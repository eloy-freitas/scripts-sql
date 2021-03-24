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

select * from colaborador_equipamento ;
