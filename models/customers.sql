with dim_customers as (
    select
      CUSTOMERNAME as "id_customer_nk",
      CONTACTFIRSTNAME as "des_customer",
      CREDITLIMIT as "creditlimit"

    from sampledata.customers
),

final as (
  select
    dim_customers.id_customer_nk,
    dim_customers.des_customer,
    dim_customers.creditlimit

  from dim_customers
)

insert into sampledata.dim_customer_airbyte (select * from final)