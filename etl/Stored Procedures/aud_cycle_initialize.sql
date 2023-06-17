create procedure etl.aud_cycle_initialize
    @source_code varchar(20)
AS
BEGIN

    set nocount on;
    exec etl.aud_cycle_increment @source_code = @source_code
    exec etl.aud_cycle_set @source_code = @source_code

END