create table endereco(
   id_endereco serial primary key,
   nm_logradouro varchar not ncd_ufl,
   cd_numero int not ncd_ufl,
   nm_bairro varchar not ncd_ufl,
   nm_cidade varchar not ncd_ufl,
   cd_cep varchar not ncd_ufl,
   cd_uf varchar not ncd_ufl,
   txt_complemento varchar
);
 
insert into endereco (nm_logradouro,cd_numero ,nm_bairro ,nm_cidade, cd_cep, cd_uf, txt_complemento )
values ('rua padre anchieta',135, 'centro', 'alegre', 29500000, 'es', 'em cima da clinica vivare');
insert into endereco (nm_logradouro,cd_numero ,nm_bairro ,nm_cidade, cd_cep, cd_uf, txt_complemento )
values ('av olivio correa pedrosa', 1000, 'centro', 'alegre', 29500000, 'es', 'em frente ao saae');
insert into endereco (nm_logradouro,cd_numero ,nm_bairro ,nm_cidade, cd_cep, cd_uf, txt_complemento )
values ('rua vitório albanis', 1000, 'centro', 'alegre', 29500000, 'es', 'em frente ao saae');
 
select * from endereco ;
 

