CREATE TABLE [dlz].[membership] (
    [SourceCode]        VARCHAR (20)   NOT NULL,
    [SourceDescription] VARCHAR (2000) NOT NULL,
    [FirstName]         VARCHAR (200)  NULL,
    [LastName]          VARCHAR (200)  NULL,
    [BirthDate]         DATE           NULL,
    [Sex]               BIT            NULL,
    [PhoneNumber]       VARCHAR (10)   NULL,
    [Address1]          VARCHAR (200)  NULL,
    [Address2]          VARCHAR (200)  NULL,
    [City]              VARCHAR (200)  NULL,
    [State]             VARCHAR (2)    NULL,
    [ZIPCode]           INT            NULL,
    [PCPName]           VARCHAR (200)  NULL,
    [PCPNPI]            VARCHAR (200)  NULL
);
GO

