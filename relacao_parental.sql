create table relacao_parental(
	id_relacao_parental serial primary key,
	nome varchar not null
);

insert into relacao_parental(nome)
values('pai');
insert into relacao_parental(nome)
values('mae');
insert into relacao_parental(nome)
values('filho(a)');
insert into relacao_parental(nome)
values('irmã(o)');
insert into relacao_parental(nome)
values('avô');
insert into relacao_parental(nome)
values('avó');

select * from relacao_parental ;



