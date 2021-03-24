create table ferias(
	id_ferias serial primary key,
	data_solicitacao date not null,
	data_aprovacao date null,
	data_inicio date not null,
	data_fim date not null,
	qtd_dias_abono int not null,
	justificativa varchar null,
);

insert into ferias(data_solicitacao, data_aprovacao, data_inicio
data_fim, qtd_dias_abono, justificativa)
values(current_date, current_date, current_date, current_date,
1000, 'de saco cheio desse corona nessa porra');

insert into ferias(data_solicitacao, data_aprovacao, data_inicio
data_fim, qtd_dias_abono, justificativa)
values(current_date, current_date, current_date, current_date,
1000, 'acaba logo corona');

insert into ferias(data_solicitacao, data_aprovacao, data_inicio
data_fim, qtd_dias_abono, justificativa)
values(current_date, current_date, current_date, current_date,
1000, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');