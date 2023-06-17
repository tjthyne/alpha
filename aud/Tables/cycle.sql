create table cycle (
    cycle_sk int not null identity(1,1),
    source_code varchar(50) not null,
    cycle_start_dtm datetime not null,
    cycle_end_dtm datetime null,
    constraint pk_cycle_index primary key (source_system, cycle_sk)
)