{{
  config(
    materialized='table'
  )
}}

with customers as (

    select * from {{ ref('stg_customers') }}

),

-- orders as (

    -- select * from {{ ref('stg_orders') }}

-- ),

-- orderdetails as (

    -- select * from {{ ref('stg_orderdetails') }}

-- ),


-- falta mirar esta parte de aqui ETL

final as (

    select
      customers.id_customer_nk,
      customers.des_customer,
      customers.CREDITLIMIT
        -- customers.customer_id,
        -- customers.first_name,
        -- customers.last_name,
        -- customer_orders.first_order,
        -- customer_orders.most_recent_order,
        -- customer_orders.number_of_orders,
        -- customer_payments.total_amount as customer_lifetime_value
      
    from customers

    -- left join customer_orders using (customer_id)

    -- left join customer_payments using (customer_id)

)

select * from final