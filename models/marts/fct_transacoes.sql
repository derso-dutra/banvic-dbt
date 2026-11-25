with 
    fato_transacoes as (
       select *
       from {{ ref('int_fato_transacoes') }} 
    )

    select *
    from dim_contas