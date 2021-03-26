create table tipo_pagamento(
	id_tipo_pagamento serial primary key,
	nm_pagamento varchar not null
);

insert into tipo_pagamento (nm_pagamento)
values ('credito');
insert into tipo_pagamento (nm_pagamento)
values ('débito');
insert into tipo_pagamento (nm_pagamento)
values ('boleto');

select * from tipo_pagamento ;
