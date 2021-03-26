create table departamento(
	id_departamento serial primary key,
	nm_departamento varchar not null,
	id_gestor int not null,
	foreign key (id_gestor) references colaborador(id_colaborador)
);

insert into departamento(nm_departamento, id_gestor)
values('desenvolvimento', 1);
insert into departamento(nm_departamento, id_gestor)
values('vendas', 5);

select * from departamento ;