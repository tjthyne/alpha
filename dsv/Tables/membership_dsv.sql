CREATE TABLE [dsv].[membership_dsv] (
    [source_code]        VARCHAR (20)   NOT NULL,
    [source_description] VARCHAR (2000) NOT NULL,
    [create_cycle_sk]   INT NOT NULL,
    [create_dtm]        DATETIME NOT NULL default current_timestamp,
    [member_id]         VARCHAR(20) NOT NULL,
    [first_name]         VARCHAR (200)  NULL,
    [last_name]          VARCHAR (200)  NULL,
    [birth_date]         VARCHAR (20)   NULL,
    [sex]               VARCHAR (10)   NULL,
    [phone_number]       VARCHAR (20)   NULL,
    [address1]          VARCHAR (200)  NULL,
    [address2]          VARCHAR (200)  NULL,
    [city]              VARCHAR (200)  NULL,
    [state]             VARCHAR (200)  NULL,
    [zip_code]           VARCHAR (200)  NULL,
    [pcp_name]           VARCHAR (200)  NULL,
    [pcp_npi]            VARCHAR (200)  NULL
);
GO

