create table formacao_academica(
	id_formacao_academica serial primary key,
	id_colaborador int not null,
	cd_escolaridade varchar not null,
	nm_instituição varchar not null,
	nm_curso varchar not null,
	ano_conclusao date not null,
	foreign key (id_colaborador) references colaborador(id_colaborador)
);

insert into formacao_academica(id_colaborador, cd_escolaridade, nm_instituição, nm_curso, ano_conclusao)
values(1, 'superior completo', 'UFES','Ciência da Computação', current_date);
insert into formacao_academica(id_colaborador, cd_escolaridade, nm_instituição, nm_curso, ano_conclusao)
values(5, 'superior completo', 'USP','Sistemas de informação', current_date);
insert into formacao_academica(id_colaborador, cd_escolaridade, nm_instituição, nm_curso, ano_conclusao)
values(6, 'superior completo', 'UNIP','Ciência da Computação', current_date);
insert into formacao_academica(id_colaborador, cd_escolaridade, nm_instituição, nm_curso, ano_conclusao)
values(7, 'superior completo', 'UFES','Ciência da Computação', current_date);
insert into formacao_academica(id_colaborador, cd_escolaridade, nm_instituição, nm_curso, ano_conclusao)
values(9, 'superior completo', 'UFES','Sistemas de informação', current_date);

select * from formacao_academica ;