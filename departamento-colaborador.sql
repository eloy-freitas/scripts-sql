create table departamento_colaborador(
	id_departamento_colaborador serial primary key,
	id_colaborador int not null,
	id_departamento int not null,
	foreign key (id_colaborador) references colaborador(id_colaborador),
	foreign key (id_departamento) references departamento(id_departamento)
);


insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(1, 1);
insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(5, 1);
insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(6, 1);
insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(7, 2);
insert into departamento_colaborador(id_colaborador_fk, id_departamento_fk)
values(9, 2);

select * from departamento_colaborador ;