create table tipo_contrato(
	id_tipo_contrato serial primary key,
	nome varchar not null
);

insert into tipo_contrato(nome) 
values('estagiário');
insert into tipo_contrato(nome) 
values('contratado');
insert into tipo_contrato(nome) 
values('tercerizado');

select * from tipo_contrato ;

--alter table tipo_contrato rename column id_contrato to id_tipo_contrato;