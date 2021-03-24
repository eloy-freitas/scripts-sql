create table tipo_ticket(
	id_ticket serial primary key,
	nome varchar not null
);

/*criado*/

insert into tipo_ticket(nome) values('alimentação');
insert into tipo_ticket(nome) values('cerveja');
insert into tipo_ticket(nome) values('churrasco');

select * from tipo_ticket;