create table departamento(
	id_departamento serial primary key,
	nome varchar not null,
	id_gestor int not null,
	foreign key (id_gestor) references colaborador(id_colaborador)
);

drop table departamento ;

insert into departamento(nome, id_gestor)
values('desenvolvimento', 1);

insert into departamento(nome, id_gestor)
values('vendas', 5);

select * from departamento ;