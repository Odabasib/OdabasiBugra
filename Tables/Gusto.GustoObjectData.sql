CREATE TABLE [Gusto].[GustoObjectData] (
  [GustoObjectData_rowid] [int] IDENTITY,
  [pKullanici] [int] NULL DEFAULT (0),
  [sKey] [varchar](255) NULL DEFAULT (''),
  [POBJECT] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([GustoObjectData_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [pKullanici]
  ON [Gusto].[GustoObjectData] ([pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO