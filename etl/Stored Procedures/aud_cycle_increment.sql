create procedure aud.cycle_increment
    @source_code varchar(20)
AS
BEGIN

    set nocount on;
    insert into aud.cycle
    (
        source_code
    )
    values
    (
        @source_code
    )
    
END