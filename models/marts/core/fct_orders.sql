with orders as (
    select * from {{ref("stg_orders")}}
),
payments as (
    select * from {{ref("stg_payments")}}

),
customers as (
    select * from {{ref("stg_customers")}}
)
select order_id, customer_id, amount
from orders inner join customers using(customer_id)
inner join payments using(order_id)
