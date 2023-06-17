create procedure etl.dlz_membership_dlz as 
begin

declare @now datetime = getdate()

truncate table dlz.membership_dlz

insert into dlz.membership_dlz

select
    SourceCode
    ,SourceDescription
    ,isnull(FirstName,'') as FirstName
    ,isnull(LastName,'') as LastName
    ,isnull(convert(date, BirthDate),'1799-01-01') as BirthDate
    ,isnull(Sex, 'U') as Sex
    ,PhoneNumber = format(convert(bigint, replace(PhoneNumber,'-','')),'###-###-####')
    ,isnull(Address1,'') as Address1
    ,isnull(Address2,'') as Address2
    ,isnull(City,'') as City
    ,isnull(State,'') as State
    ,isnull(ZIPCode,'') as ZIPCode
    ,isnull(PCPName,'') as PCPName
    ,isnull(PCPNPI,'') as PCPNPI
from dsv.membership_dsv

end