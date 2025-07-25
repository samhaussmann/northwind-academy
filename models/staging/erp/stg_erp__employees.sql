with
    source_employees as (
            select *
            from {{ source('erp', 'employees') }}
    )
    , renamed as (
        select 
            cast(ID as int) as employee_pk
            , cast(REPORTSTO as int) as manager_fk
            , (FIRSTNAME || '' || LASTNAME) as employee_name            
            , cast(TITLE as varchar) as employee_title
            , cast(BIRTHDATE as date) as employee_birth_date
            , cast(HIREDATE as date) as employee_hire_date
            , cast(CITY as varchar) as employee_city
            , cast(REGION as varchar) as employee_region
            , cast(COUNTRY as varchar) as employee_country
            --, TITLEOFCOURTESY as employee_title_courtesy
            --, ADDRESS as employee_adress
            --, POSTALCODE as employee_postal_code
            --, HOMEPHONE as employee_home_phone
            --, EXTENSION as employee_extension
            --, PHOTO as employee_photo
            --, NOTES as employee_note
            --, PHOTOPATH as employee_path_photo
        from source_employees
    )
    select * 
    from renamed









