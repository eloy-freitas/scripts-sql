create table departamento(
	id_departamento serial primary key,
	nome varchar not null,
	id_gestor int not null,
	foreign key (id_gestor) references colaborador(id_colaborador)
);

drop table departamento ;

insert into departamento(nome, 1)
values('desenvolvimento', 1);

insert into departamento(nome, 1)
values('vendas', 4);