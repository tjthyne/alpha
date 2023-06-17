create procedure etl.aud_cycle_set
    @source_code varchar(20)
AS
BEGIN

    set nocount on;
    declare @cycle_sk int = (select top 1 cycle_sk 
                             from aud.cycle 
                             where source_system = @source_code 
                             order by cycle_sk desc
                             )

    if not exists (select 1 from aud.cycle_current where source_code = @source_code)
    begin
        insert into aud.cycle_current
        (
            cycle_sk,
            source_code
        )
        select * from aud.cycle where @source_code = source_code
    end

    else update aud.cycle_current set cycle_sk = @cycle_sk where source_code = @source_code
    
    
END