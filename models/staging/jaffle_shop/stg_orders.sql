

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from {{ source('jaffle_shop','orders')}}

    /*
    select
        distinct 
        status

    from `rare-palace-329321.jaffle_shop.orders`
    */
