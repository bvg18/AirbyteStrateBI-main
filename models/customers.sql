{{
  config(
    materialized='table'
  )
}}

create table "postgres"."public"."airbyte_dim_customer"
as (
    select
    
        cast(CUSTOMERNAME) as varchar) as "id_customer_nk",
        cast(CONTACTFIRSTNAME) as varchar) as "des_customer",
        cast(CREDITLIMIT) as numeric) as "creditlimit"

    from "postgres".public.customers
);