with
    contas as (
        select *
        from {{ ref('stg_erp__contas') }}
    )

    , fato_contas as (
        select 
            pk_conta
            , fk_cliente
            , fk_agencia
            , fk_colaborador
            , saldo_total
            , saldo_disponivel
            , ts_ultimo_lancamento
            
        from contas
    )

select *
from fato_contas