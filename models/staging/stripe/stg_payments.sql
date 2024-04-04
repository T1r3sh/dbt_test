with payment as (
    select id as payment_id,
    ORDERID as order_id,
    STATUS as paymen_status,
    amount 


    from {{source("stripe","payment")}}
)
select * from payment