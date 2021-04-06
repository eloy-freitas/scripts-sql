select b.nm_beneficiario ,c.vl_comissao, min(c.dt_comissao_criacao) as dt_inicio_periodo, max(c.dt_comissao_criacao) as dt_fim_periodo from beneficiario b
left join comissao c on c.nm_comissao_beneficiario = b.nm_beneficiario
where c.id_comissao_contrato = '47036'
group by b.nm_beneficiario , c.vl_comissao;

TRAZER NOME DO BENEFICIARIO, VALOR DE COMISSAO GERADO, O PERIODO DE GERACAO DE COMISSAO DE CADA BENEFICIARIO DO CONTRATO 47036