create table colaborador_endereco(
	id_colaborador_endereco serial primary key,
	id_colaborador int not null,
	id_endereco int not null,
	foreign key (id_colaborador) references colaborador(id_colaborador),
	foreign key (id_endereco) references endereco(id_endereco)
);

insert into colaborador_endereco(id_colaborador, id_endereco)
values (1, 2);
insert into colaborador_endereco(id_colaborador, id_endereco)
values (5, 1);
insert into colaborador_endereco(id_colaborador, id_endereco)
values (6, 1);

select * from colaborador_endereco ;

