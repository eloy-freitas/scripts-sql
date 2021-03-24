create table tipo_equipamento(
	id_tipo_equipamento serial primary key,
	nome varchar not null,
	fabricante varchar not null

);

/*criado*/

insert into tipo_equipamento(nome, fabricante)
values('teclado gaymer giganto', 'razer');

insert into tipo_equipamento(nome, fabricante)
values('mouse gaymer laizer', 'razer');

insert into tipo_equipamento(nome, fabricante)
values('mousepad gaymer rgb gladiator', 'multilaser');

insert into tipo_equipamento(nome, fabricante)
values('headset gaymer rgb duvidoso', 'knup');