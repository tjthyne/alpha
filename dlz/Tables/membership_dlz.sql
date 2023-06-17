CREATE TABLE [dlz].[membership_dlz] (
    [source_code]        VARCHAR (20)   NOT NULL,
    [source_description] VARCHAR (2000) NOT NULL,
    [cycle_sk]          INT            NOT NULL,
    [create_dtm]         DATETIME       NOT NULL DEFAULT (getdate()),
    [member_id]          VARCHAR (200)  NOT NULL,
    [first_name]         VARCHAR (200)  NULL,
    [last_name]          VARCHAR (200)  NULL,
    [birth_date]         DATE           NULL,
    [sex]               VARCHAR(1)            NULL,
    [phone_number]       VARCHAR (10)   NULL,
    [address1]          VARCHAR (200)  NULL,
    [address2]          VARCHAR (200)  NULL,
    [city]              VARCHAR (200)  NULL,
    [state]             VARCHAR (2)    NULL,
    [zip_code]           INT            NULL,
    [pcp_name]           VARCHAR (200)  NULL,
    [pcp_npi]            VARCHAR (200)  NULL
);
GO

