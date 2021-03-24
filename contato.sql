create table contato(
	id_contato serial primary key,
	email varchar not null,
	celular varchar not null,
	residencial varchar null
);
/*criado*/

insert into contato(email, celular, residencial)
values ('admin@site.com', '028981434273', '015376987357');

insert into contato(email, celular, residencial)
values ('webadmin@gmail.com', '028981434275', '015376987957');

insert into contato(email, celular, residencial)
values ('jacs@hotmaiil.com', '028981434277', '015376987951');
