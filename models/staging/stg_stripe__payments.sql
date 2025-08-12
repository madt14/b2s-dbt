-- import CTE
with
source as (
    select
        *
    from raw.stripe.payment
),

--final CTE
renamed as (
    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount,
        created as created_at
    from source
)

select
    *
from renamed