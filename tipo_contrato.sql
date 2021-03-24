create table tipo_contrato(
	id_contrato serial primary key,
	nome varchar not null
);

insert into tipo_contrato(nome) 
values('estagiário');


insert into tipo_contrato(nome) 
values('contratado');

insert into tipo_contrato(nome) 
values('tercerizado');