create procedure etl.aud_cycle_increment
    @source_code varchar(20)
AS
BEGIN

    set nocount on;
    insert into [aud].[cycle]
    (
        [source_code],
        [create_dtm]
    )
    values
    (
        @source_code,
        
    )
    
END