create table equipamento(
	id_numeracao serial primary key,
	dt_aquisicao date not null,
	id_tipo_equipamento int not null,
	foreign key (id_tipo_equipamento) references tipo_equipamento(id_tipo_equipamento)
);

insert into equipamento(dt_aquisicao, id_tipo_equipamento)
values(current_date, 1);
insert into equipamento(dt_aquisicao, id_tipo_equipamento)
values(current_date, 2);
insert into equipamento(dt_aquisicao, id_tipo_equipamento)
values(current_date, 3);
insert into equipamento(dt_aquisicao, id_tipo_equipamento)
values(current_date, 4);

select * from equipamento ;