with
    contas as (
        select *
        from {{ ref('stg_erp__contas') }}
    )

    , contas_enriquecido as (
        select 
            pk_conta
            , numero_conta
            , tipo_conta
            , data_abertura_conta
        from contas
    )

select *
from contas_enriquecido