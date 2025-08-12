-- imports
with
payments as (
    select
        *
    from {{ ref('stg_stripe__payments') }}
),

--transformations
successful as (
    select
    *
    from payments
    where status = 'success'
)

select 
*
from successful