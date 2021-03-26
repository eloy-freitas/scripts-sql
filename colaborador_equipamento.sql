create table colaborador_equipamento(
	id_colaborador_equipamento serial primary key,
	id_colaborador int not null,
	id_numeracao int not null,
	dt_atribuicao date not null,
	foreign key (id_colaborador) references colaborador(id_colaborador),
	foreign key (id_id_numeracao) references equipamento(id_numeracao)
);

insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(1, 1, current_date);
insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(1, 2, current_date);
insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(1, 3, current_date);
insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(1, 4, current_date);
insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(5, 1, current_date);
insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(5, 2, current_date);
insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(5, 3, current_date);
insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(5, 4, current_date);
insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(6, 1, current_date);
insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(6, 2, current_date);
insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(6, 3, current_date);
insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(7, 1, current_date);
insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(7, 2, current_date);
insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(9, 1, current_date);
insert into colaborador_equipamento(id_colaborador, id_numeracao, dt_atribuicao)
values(9, 2, current_date);

select * from colaborador_equipamento ;
