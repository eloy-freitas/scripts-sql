create table holerite (
	id_holerite serial primary key,
	id_colaborador int not null,
	id_tipo_pagamento int not null,
	dt_referencia date not null,
	vl_vl_desconto float,
	vl_vl_valor float not null,
	foreign key (id_colaborador) references colaborador(id_colaborador),
	foreign key (id_tipo_pagamento) references tipo_pagamento(id_tipo_pagamento)
);

insert into holerite(id_colaborador, id_tipo_pagamento, dt_referencia, vl_desconto, vl_valor)
values(1, 2, current_date, 50, 10000);
insert into holerite(id_colaborador, id_tipo_pagamento, dt_referencia, vl_desconto, vl_valor)
values(1, 1, current_date, 30, 5000);
insert into holerite(id_colaborador, id_tipo_pagamento, dt_referencia, vl_desconto, vl_valor)
values(5, 1, current_date, 30, 6000);
insert into holerite(id_colaborador, id_tipo_pagamento, dt_referencia, vl_desconto, vl_valor)
values(5, 3, current_date, 0, 500);
insert into holerite(id_colaborador, id_tipo_pagamento, dt_referencia, vl_desconto, vl_valor)
values(6, 3, current_date, 0, 100);
insert into holerite(id_colaborador, id_tipo_pagamento, dt_referencia, vl_desconto, vl_valor)
values(7, 3, current_date, 10, 200);

select * from holerite ;