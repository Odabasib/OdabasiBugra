CREATE TABLE [Gusto].[SystemVersion] (
  [SystemVersion_rowid] [int] IDENTITY,
  [sVersiyon] [varchar](10) NULL DEFAULT (''),
  [nParola1] [int] NOT NULL DEFAULT (0),
  [nParola2] [int] NOT NULL DEFAULT (0),
  [nParola3] [int] NOT NULL DEFAULT (0),
  [nParola4] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SystemVersion_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO