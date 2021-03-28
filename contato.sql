create table contato(
	id_contato serial primary key,
	txt_email varchar unique not null,
	cd_celular varchar not null,
	cd_residencial varchar null
);

insert into contato(email, cd_celular, cd_residencial)
values ('admin@site.com', '028981434273', '015376987357');
insert into contato(email, cd_celular, cd_residencial)
values ('webadmin@gmail.com', '028981434275', '015376987957');
insert into contato(email, cd_celular, cd_residencial)
values ('jacs@hotmaiil.com', '028981434277', '015376987951');

select * from contato;