with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('customers') }}

),

renamed as (

    select
        CUSTOMERNUMBER as id_customer_nk,
        CUSTOMERNAME as des_customer,
        CREDITLIMIT as CREDITLIMIT
    from source

)

select * from renamed