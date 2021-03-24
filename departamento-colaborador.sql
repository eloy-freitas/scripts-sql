create table departamento_colaborador(
	id_departamento_colaborador serial primary key,
	id_colaborador_fk int not null,
	id_departamento_fk int not null,

	foreign key (id_colaborador_fk) references colaborador(id_colaborador),
	foreign key (id_departamento_fk) references departamento(id_departamento)
);

drop table departamento_colaborador;

insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(1, 1);

insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(2, 1);

insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(3, 1);

insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(4, 2);

insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(5, 2);