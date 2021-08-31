{{ config(
    materialized="table"
) }}

with dim_customers as (
    select
      customers.CUSTOMERNAME as "id_customer_nk",
      customers.CONTACTFIRSTNAME as "des_customer",
      customers.CREDITLIMIT as "creditlimit"

    from sampledata.customers
)

select
  dim_customers.id_customer_nk,
  dim_customers.des_customer,
  dim_customers.creditlimit

from dim_customers
