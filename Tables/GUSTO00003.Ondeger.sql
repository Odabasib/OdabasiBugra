CREATE TABLE [GUSTO00003].[Ondeger] (
  [Ondeger_rowid] [int] IDENTITY,
  [nModul] [smallint] NULL DEFAULT (0),
  [pKullanici] [int] NULL DEFAULT (0),
  [Anahtar] [varchar](80) NULL DEFAULT (''),
  [cTur] [char](1) NULL DEFAULT (' '),
  [Deger] [varchar](230) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([Ondeger_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OndegerKey]
  ON [GUSTO00003].[Ondeger] ([nModul], [pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO