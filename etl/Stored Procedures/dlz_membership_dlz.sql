create procedure etl.dlz_membership_dlz 
    @cycle_key int,
    @source_code varchar(20)
as 
begin

declare @now datetime = getdate()

truncate table dlz.membership_dlz

insert into dlz.membership_dlz

select
    source_code
    ,source_description
    ,create_cycle_sk
    ,@now as create_dtm
    ,member_id
    ,isnull(first_name,'') as first_name
    ,isnull(last_name,'') as last_name
    ,isnull(convert(date, birth_date),'1799-01-01') as birth_date
    ,isnull(sex, 'U') as sex
    ,phone_number = format(convert(bigint, replace(phone_number,'-','')),'###-###-####')
    ,isnull(address1,'') as address1
    ,isnull(address2,'') as address2
    ,isnull(city,'') as city
    ,isnull(state,'') as state
    ,isnull(zip_code,'') as zip_code
    ,isnull(pcp_name,'') as pcp_name
    ,isnull(pcp_npi,'') as pcp_npi
from dsv.membership_dsv
where 
    create_cycle_sk = @cycle_key and
    source_code = @source_code

end