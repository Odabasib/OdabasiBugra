CREATE TABLE [GUSTO00003].[GustoUserObjectData] (
  [GustoUserObjectData_rowid] [int] IDENTITY,
  [pKullanici] [int] NULL DEFAULT (0),
  [sKey] [varchar](255) NULL DEFAULT (''),
  [POBJECT] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([GustoUserObjectData_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [pKullanici]
  ON [GUSTO00003].[GustoUserObjectData] ([pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO