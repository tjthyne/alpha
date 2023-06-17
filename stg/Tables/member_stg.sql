CREATE TABLE [stg].[member_stg] (
    [SourceCode]        VARCHAR (20)   NOT NULL,
    [SourceDescription] VARCHAR (2000) NOT NULL,
    [MemberId]          VARCHAR (200)  NOT NULL,
    [FirstName]         VARCHAR (200)  DEFAULT ('') NOT NULL,
    [LastName]          VARCHAR (200)  DEFAULT ('') NOT NULL,
    [BirthDate]         DATE           DEFAULT ('1799-01-01') NOT NULL,
    [SexCode]           VARCHAR (1)    DEFAULT ('U') NOT NULL,
    [Phone]             VARCHAR (10)   DEFAULT ('') NOT NULL,
    [Address1]          VARCHAR (200)  DEFAULT ('') NOT NULL,
    [Address2]          VARCHAR (200)  DEFAULT ('') NOT NULL,
    [City]              VARCHAR (200)  DEFAULT ('') NOT NULL,
    [StateCode]         VARCHAR (2)    DEFAULT ('') NOT NULL,
    [ZIPCode]           INT            DEFAULT ('') NOT NULL,
    [PCPName]           VARCHAR (200)  DEFAULT ('') NOT NULL,
    [PCPNPI]            VARCHAR (200)  DEFAULT ('') NOT NULL
);
GO

ALTER TABLE [stg].[member_stg]
    ADD CONSTRAINT [check_sex] CHECK ([SexCode]='U' OR [SexCode]='F' OR [SexCode]='M');
GO

