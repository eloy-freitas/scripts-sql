create table colaborador_endereco(
	id_colaborador_endereco serial primary key,
	id_colaborador_fk int not null,
	id_endereco_fk int not null,
	foreign key (id_colaborador_fk) references colaborador(id_colaborador),
	foreign key (id_endereco_fk) references endereco(id_endereco)
);

insert into colaborador_endereco(id_colaborador_fk, id_endereco_fk)
values (1, 2);


insert into colaborador_endereco(id_colaborador_fk, id_endereco_fk)
values (5, 1);


insert into colaborador_endereco(id_colaborador_fk, id_endereco_fk)
values (6, 1);

select * from colaborador_endereco ;

