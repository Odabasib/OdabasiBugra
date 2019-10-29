CREATE TABLE [GUSTO00001].[PersonelDil] (
  [PersonelDil_rowid] [int] IDENTITY,
  [pPersonelKodu] [int] NOT NULL DEFAULT (0),
  [pYabanciDil] [int] NOT NULL DEFAULT (0),
  [cDerece] [char](1) NOT NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([PersonelDil_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [PersonelDilKey]
  ON [GUSTO00001].[PersonelDil] ([pPersonelKodu], [pYabanciDil])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO