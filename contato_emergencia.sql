create table contato_emergencia(
	id_contato_emergencia serial primary key,
	nm_contato varchar not null,
	id_contato int not null,
	foreign key (id_contato) references contato(id_contato)
);


insert into contato_emergencia(nm_contato, id_contato)
values('cleida', 1);
insert into contato_emergencia(nm_contato, id_contato)
values('robmilson', 2);
insert into contato_emergencia(nm_contato, id_contato)
values('maricleia', 1);
insert into contato_emergencia(nm_contato, id_contato)
values('chonsk', 3);

select * from contato_emergencia ;