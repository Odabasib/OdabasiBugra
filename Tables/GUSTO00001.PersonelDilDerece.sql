CREATE TABLE [GUSTO00001].[PersonelDilDerece] (
  [PersonelDilDerece_rowid] [int] IDENTITY,
  [pPersonelDil] [int] NULL DEFAULT (0),
  [sDilSinavi] [varchar](20) NULL DEFAULT (''),
  [sDerece] [varchar](20) NULL DEFAULT (''),
  [sGecerlilikSuresi] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([PersonelDilDerece_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersonelDilDereceKey]
  ON [GUSTO00001].[PersonelDilDerece] ([pPersonelDil], [sDilSinavi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO