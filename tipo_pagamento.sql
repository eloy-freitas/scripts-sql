create table tipo_pagamento(
	id_tipo_pagamento serial primary key,
	nome varchar not null
);

/*criado*/

insert into tipo_pagamento (nome)
values ('credito');

insert into tipo_pagamento (nome)
values ('débito');

insert into tipo_pagamento (nome)
values ('boleto');

select * from tipo_pagamento ;
