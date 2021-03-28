create table tipo_ticket(
	id_tipo_ticket serial primary key,
	nm_ticket varchar not null
);

insert into tipo_ticket(nm_ticket) values('alimentação');
insert into tipo_ticket(nm_ticket) values('cerveja');
insert into tipo_ticket(nm_ticket) values('churrasco');

select * from tipo_ticket;
