create table equipamento(
	numeracao serial primary key,
	data_aquisicao date not null,
	id_tipo_equipamento_fk int not null,
	
	foreign key (id_tipo_equipamento_fk) references equipamento(id_tipo_equipamento)
);

insert into equipamento(data_aquisicao, id_tipo_equipamento_fk)
values(current_date, 1);

insert into equipamento(data_aquisicao, id_tipo_equipamento_fk)
values(current_date, 2);

insert into equipamento(data_aquisicao, id_tipo_equipamento_fk)
values(current_date, 3);

insert into equipamento(data_aquisicao, id_tipo_equipamento_fk)
values(current_date, 4);