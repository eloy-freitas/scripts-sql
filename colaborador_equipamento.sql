create table colaborador_equipamento(
	id_colaborador_equipamento serial primary key,
	id_colaborador_fk int not null,
	id_equipamento_fk int not null,
	data_atribuicao date note null,
	
	foreign key (id_colaborador_fk) references colaborador(id_colaborador),
	foreign key (id_equipamento_fk) references equipamento(id_equipamento)
	
	
);

insert into colaborador_equipamento(id_colaborador_fk, id_equipamento_fk, data_atribuicao)
values(1, 1, current_date);

insert into colaborador_equipamento(id_colaborador_fk, id_equipamento_fk, data_atribuicao)
values(1, 2, current_date);

insert into colaborador_equipamento(id_colaborador_fk, id_equipamento_fk, data_atribuicao)
values(1, 3, current_date);

insert into colaborador_equipamento(id_colaborador_fk, id_equipamento_fk, data_atribuicao)
values(1, 4, current_date);

insert into colaborador_equipamento(id_colaborador_fk, id_equipamento_fk, data_atribuicao)
values(2, 1, current_date);

insert into colaborador_equipamento(id_colaborador_fk, id_equipamento_fk, data_atribuicao)
values(2, 2, current_date);

insert into colaborador_equipamento(id_colaborador_fk, id_equipamento_fk, data_atribuicao)
values(2, 3, current_date);

insert into colaborador_equipamento(id_colaborador_fk, id_equipamento_fk, data_atribuicao)
values(2, 4, current_date);

insert into colaborador_equipamento(id_colaborador_fk, id_equipamento_fk, data_atribuicao)
values(3, 1, current_date);

insert into colaborador_equipamento(id_colaborador_fk, id_equipamento_fk, data_atribuicao)
values(3, 2, current_date);

insert into colaborador_equipamento(id_colaborador_fk, id_equipamento_fk, data_atribuicao)
values(3, 3, current_date);

insert into colaborador_equipamento(id_colaborador_fk, id_equipamento_fk, data_atribuicao)
values(4, 1, current_date);

insert into colaborador_equipamento(id_colaborador_fk, id_equipamento_fk, data_atribuicao)
values(4, 2, current_date);


