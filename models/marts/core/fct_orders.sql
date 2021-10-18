select 
    orders.order_id order_id,
    orders.customer_id customer_id,
    sum(payments.amount) amount
from
    {{ ref('stg_orders') }} orders inner join
        {{ ref('stg_payments')}} payments using(order_id)
where payments.status = 'success'
group by order_id, customer_id
