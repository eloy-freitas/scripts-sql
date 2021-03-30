

SELECT C.ID_COLABORADOR, C.NM_COLABORADOR, C.DT_ADMISSAO FROM COLABORADOR C ORDER BY C.DT_ADMISSAO ASC;
SELECT C.ID_COLABORADOR, C.NM_COLABORADOR, C.DT_NASCIMENTO FROM COLABORADOR C ORDER BY C.DT_NASCIMENTO ASC;
SELECT C.ID_COLABORADOR, C.NM_COLABORADOR, C.FL_CADASTRO_COMPLETO FROM COLABORADOR C WHERE C.FL_CADASTRO_COMPLETO IS true;
SELECT C.ID_COLABORADOR, C.NM_COLABORADOR, C.FL_CADASTRO_COMPLETO FROM COLABORADOR C WHERE C.FL_CADASTRO_COMPLETO IS NOT true;

SELECT C.ID_COLABORADOR, C.NM_COLABORADOR, TT.NM_TIPO_TICKET 
    FROM COLABORADOR C 
    INNER JOIN TIPO_TICKET TT ON TT.ID_TIPO_TICKET = C.ID_TICKET
    WHERE C.ID_TICKET = 1;

SELECT C.ID_COLABORADOR, C.NM_COLABORADOR, CA.NM_CARGO 
    FROM COLABORADOR C 
    INNER JOIN CARGO CA ON CA.ID_CARGO = C.ID_CARGO
    WHERE C.ID_CARGO = 2;
    
 SELECT C.ID_COLABORADOR, C.NM_COLABORADOR FROM COLABORADOR C WHERE C.NM_COLABORADOR LIKE '%ia%';  

SELECT C.ID_COLABORADOR, C.NM_COLABORADOR, C.VL_SALARIO FROM COLABORADOR C WHERE C.VL_SALARIO > 1000;  
SELECT C.ID_COLABORADOR, C.NM_COLABORADOR, CD.DS_RELACAO_PARENTAL 
    FROM COLABORADOR_DEPENDENTE CD 
    INNER JOIN COLABORADOR C ON C.ID_COLABORADOR = CD.ID_COLABORADOR;


SELECT * FROM COLABORADOR_ENDERECO;

SELECT C.NM_COLABORADOR, CE.NM_LUGRADOURO FROM COLABORADOR_ENDERECO CE 
    INNER JOIN COLABORADOR C ON C.ID_COLABORADOR = CE.ID_COLABORADOR
    WHERE C.NM_COLABORADOR LIKE '%ia%'; 

SELECT * FROM COLABORADOR_CONTATO;
SELECT C.ID_COLABORADOR, C.NM_COLABORADOR, CC.CD_CELULAR FROM COLABORADOR_CONTATO CC
    INNER JOIN COLABORADOR C ON C.ID_COLABORADOR = CC.ID_COLABORADOR
    WHERE C.NM_COLABORADOR LIKE '%ia%';

SELECT C.ID_COLABORADOR, C.NM_COLABORADOR, CC.CD_CELULAR, CC.NM_CONTATO_EMERGENCIA FROM COLABORADOR_CONTATO CC
    INNER JOIN COLABORADOR C ON C.ID_COLABORADOR = CC.ID_COLABORADOR
    WHERE CC.NM_CONTATO_EMERGENCIA IS NOT NULL;

SELECT C.ID_COLABORADOR, C.NM_COLABORADOR, CC.CD_CELULAR, CC.NM_CONTATO_EMERGENCIA FROM COLABORADOR_CONTATO CC
    INNER JOIN COLABORADOR C ON C.ID_COLABORADOR = CC.ID_COLABORADOR;
    
SELECT C.NM_COLABORADOR, CDB.* 
    FROM COLABORADOR_DADO_BANCARIO CDB
    INNER JOIN COLABORADOR C ON CDB.ID_COLABORADOR = C.ID_COLABORADOR
    WHERE C.ID_COLABORADOR = 1;

SELECT * FROM DEPARTAMENTO;

SELECT D.ID_DEPARTAMENTO, D.NM_DEPARTAMENTO, C.NM_COLABORADOR 
    FROM DEPARTAMENTO D
    INNER JOIN COLABORADOR C ON C.ID_COLABORADOR = D.ID_GESTOR
    WHERE C.ID_COLABORADOR = 1;

SELECT C.NM_COLABORADOR, C.VL_SALARIO
    FROM COLABORADOR C
    INNER JOIN COLABORADOR_DEPARTAMENTO CD ON C.ID_COLABORADOR = CD.ID_COLABORADOR
    WHERE CD.ID_DEPARTAMENTO = 4;

SELECT D.NM_DEPARTAMENTO, E.NM_TIPO_EQUIPAMENTO
    FROM EQUIPAMENTO E, DEPARTAMENTO D;
  
select d.nm_departamento, te.nm_tipo_equipamento, count(ce.id_colaborador_equipamento) as qtd_equipamento
	FROM colaborador_equipamento ce
	inner join colaborador_departamento cd  on ce.id_colaborador = cd.id_colaborador
	inner join departamento d on d.id_departamento = cd.id_departamento 
	inner join tipo_equipamento te on te.id_tipo_equipamento = ce.id_equipamento 
	group by d.nm_departamento,  te.nm_tipo_equipamento;
	
SELECT D.NM_DEPARTAMENTO, SUM(C.VL_SALARIO)
    FROM DEPARTAMENTO D COLABORADOR C
    INNER JOIN COLABORADOR_DEPARTAMENTO CD ON D.ID_DEPARTAMENTO = CD.ID_DEPARTAMENTO
    WHERE D.ID_DEPARTAMENTO = 3;

SELECT D.NM_DEPARTAMENTO, sum(c.vl_salario) as total_salarios
    FROM DEPARTAMENTO d
    inner join colaborador_departamento cd on d.id_departamento = cd.id_departamento 
    inner join colaborador c on cd.id_colaborador = c.id_colaborador 
    WHERE d.ID_DEPARTAMENTO = 3
    group by d.NM_DEPARTAMENTO;

SELECT CE.ID_COLABORADOR, TE.NM_TIPO_EQUIPAMENTO, TE.NM_FABRICANTE, CE.DT_ATRIBUICAO
        FROM COLABORADOR_EQUIPAMENTO CE
        INNER JOIN TIPO_EQUIPAMENTO TE ON TE.ID_TIPO_EQUIPAMENTO = CE.ID_EQUIPAMENTO
        WHERE CE.ID_COLABORADOR = 3;

SELECT TE.NM_TIPO_EQUIPAMENTO, TE.NM_FABRICANTE, COUNT(CE.ID_EQUIPAMENTO) AS QTD_EQUIPAMENTO
    FROM COLABORADOR_EQUIPAMENTO CE
    INNER JOIN TIPO_EQUIPAMENTO TE ON TE.ID_TIPO_EQUIPAMENTO = CE.ID_EQUIPAMENTO
   GROUP BY TE.NM_TIPO_EQUIPAMENTO,  TE.NM_FABRICANTE
   ORDER BY  TE.NM_FABRICANTE ASC;

SELECT CE.ID_EQUIPAMENTO
    FROM COLABORADOR_EQUIPAMENTO CE
    INNER JOIN TIPO_EQUIPAMENTO TE ON CE.ID_EQUIPAMENTO = TE.ID_TIPO_EQUIPAMENTO
    WHERE TE.NM_TIPO_EQUIPAMENTO LIKE '%Notebook%';

  SELECT CF.* 
    FROM COLABORADOR_FERIAS CF
    WHERE CF.DT_APROVACAO IS NULL
    ORDER BY DT_SOLICITACAO ASC;

SELECT COUNT(CF.ID_COLABORADOR_FERIAS) AS FL_ANTECIPAR_DECIMO_TERCEIRO
    FROM COLABORADOR_FERIAS CF
    WHERE FL_ANTECIPAR_DECIMO_TERCEIRO IS TRUE;

 SELECT * 
    FROM COLABORADOR_FERIAS CF
    WHERE CF.DT_INICIO = '2021-03-29'
    ORDER BY CF.DT_INICIO ASC;

SELECT *
    FROM COLABORADOR_HOLERITE CH 
    INNER JOIN COLABORADOR C ON C.ID_COLABORADOR = CH.ID_COLABORADOR
    INNER JOIN TIPO_HOLERITE TH ON TH.ID_TIPO_HOLERITE = CH.ID_TIPO_HOLERITE
    WHERE TH.NM_HOLERITE LIKE '%PRIMEIRA PARCELA%';