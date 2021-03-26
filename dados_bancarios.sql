create table dados_bancarios(
	id_dados_bancarios serial primary key,
	id_colaborador_fk int not null,-- n precisa do fk no nome da col
	banco varchar not null,
	agencia varchar not null,
	conta varchar not null,
	tipo_conta varchar not null,
	foreign key (id_colaborador_fk) references colaborador(id_colaborador)
);

insert into dados_bancarios(id_colaborador_fk, banco, agencia, conta, tipo_conta)
values(1, '1234', '5678', '91011', 'corrente');

insert into dados_bancarios(id_colaborador_fk, banco, agencia, conta, tipo_conta)
values(5, '5468435', '5697978', '91046411', 'corrente');

insert into dados_bancarios(id_colaborador_fk, banco, agencia, conta, tipo_conta)
values(6, '4646', '9876', '164', 'corrente');

insert into dados_bancarios(id_colaborador_fk, banco, agencia, conta, tipo_conta)
values(7, '796346', '43135', '71313', 'corrente');

insert into dados_bancarios(id_colaborador_fk, banco, agencia, conta, tipo_conta)
values(9, '14646', '354868', '7834', 'corrente');

select  * from dados_bancarios ;