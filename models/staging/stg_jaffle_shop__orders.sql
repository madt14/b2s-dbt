--import CTE

with source as (
select
    *
from {{ source('jaffle_shop', 'orders') }}
),

transformed as (
    select
        id as order_id,
        user_id,
        order_date,
        status,
        _ETL_LOADED_AT as loaded_date
    from source
)

select
    *
from transformed