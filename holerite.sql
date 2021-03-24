create table holerite (
	id_holerite serial primary key,
	id_colaborador_fk int not null,
	id_tipo_pagamento_fk int not null,
	data_referencia date not null,
	desconto float null,
	valor float not null,
	foreign key (id_colaborador_fk) references colaborador(id_colaborador),
	foreign key (id_tipo_pagamento_fk) references tipo_pagamento(id_tipo_pagamento)
);

insert into holerite(id_colaborador_fk, id_tipo_pagamento_fk, data_referencia, desconto, valor)
values(1, 2, current_date, 50, 10000);

insert into holerite(id_colaborador_fk, id_tipo_pagamento_fk, data_referencia, desconto, valor)
values(1, 1, current_date, 30, 5000);

insert into holerite(id_colaborador_fk, id_tipo_pagamento_fk, data_referencia, desconto, valor)
values(5, 1, current_date, 30, 6000);

insert into holerite(id_colaborador_fk, id_tipo_pagamento_fk, data_referencia, desconto, valor)
values(5, 3, current_date, 0, 500);

insert into holerite(id_colaborador_fk, id_tipo_pagamento_fk, data_referencia, desconto, valor)
values(6, 3, current_date, 0, 100);

insert into holerite(id_colaborador_fk, id_tipo_pagamento_fk, data_referencia, desconto, valor)
values(7, 3, current_date, 10, 200);

select * from holerite ;