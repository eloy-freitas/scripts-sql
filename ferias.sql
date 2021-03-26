create table ferias(
	id_ferias serial primary key,
	dt_solicitacao date not null,
	dt_aprovacao date,
	dt_inicio date not null,
	dt_fim date,
	vl_qtd_dias_abono int,
	txt_justificativa varchar null
);

insert into ferias(dt_solicitacao, dt_aprovacao, dt_inicio,
dt_fim, vl_qtd_dias_abono, txt_justificativa)
values(current_date, current_date, current_date, current_date,
1000, 'de saco cheio desse corona nessa porra');
insert into ferias(dt_solicitacao, dt_aprovacao, dt_inicio,
dt_fim, vl_qtd_dias_abono, txt_justificativa)
values(current_date, current_date, current_date, current_date,
1000, 'acaba logo corona');
insert into ferias(dt_solicitacao, dt_aprovacao, dt_inicio,
dt_fim, vl_qtd_dias_abono, txt_justificativa)
values(current_date, current_date, current_date, current_date,
1000, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');

select * from ferias ;