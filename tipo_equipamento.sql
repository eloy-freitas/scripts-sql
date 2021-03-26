create table tipo_equipamento(
	id_tipo_equipamento serial primary key,
	nm_equipamento varchar(250) not null,
	nm_fabricante varchar(250) not null
);

insert into tipo_equipamento(nm_equipamento, nm_fabricante)
values('teclado gaymer giganto', 'razer');
insert into tipo_equipamento(nm_equipamento, nm_fabricante)
values('mouse gaymer laizer', 'razer');
insert into tipo_equipamento(nm_equipamento, nm_fabricante)
values('mousepad gaymer rgb gladiator', 'multilaser');
insert into tipo_equipamento(nm_equipamento, nm_fabricante)
values('headset gaymer rgb duvidoso', 'knup');

select * from tipo_equipamento ;


