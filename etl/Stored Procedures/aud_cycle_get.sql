CREATE PROCEDURE etl.aud_cycle_get
    @source_code varchar(20)
AS
BEGIN

    declare @cycle_sk int = (
      select top 1 cycle_sk 
      from aud.cycle_current 
      where source_code = @source_code 
      order by cycle_sk desc
    )

select @cycle_sk

END