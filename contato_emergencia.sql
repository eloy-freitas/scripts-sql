create table contato_emergencia(
	id_contato_emergencia serial primary key,
	nome varchar not null,
	id_contato_fk int not null,
	foreign key (id_contato_fk) references contato(id_contato)

);


insert into contato_emergencia(nome, id_contato_fk)
values('cleida', 1);


insert into contato_emergencia(nome, id_contato_fk)
values('robmilson', 2);


insert into contato_emergencia(nome, id_contato_fk)
values('maricleia', 1);

insert into contato_emergencia(nome, id_contato_fk)
values('chonsk', 3);