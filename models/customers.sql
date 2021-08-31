with dim_customers as (
    select
      CUSTOMERNAME as "id_customer_nk",
      CONTACTFIRSTNAME as "des_customer",
      CREDITLIMIT as "creditlimit"

    from public.customers
),

final as (
  select
    dim_customers.id_customer_nk,
    dim_customers.des_customer,
    dim_customers.creditlimit

  from dim_customers
)

select * from final