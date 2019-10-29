CREATE TABLE [Gusto].[OndegerSistem] (
  [OndegerSistem_rowid] [int] IDENTITY,
  [nModul] [smallint] NOT NULL DEFAULT (0),
  [pKullanici] [int] NOT NULL DEFAULT (0),
  [Anahtar] [varchar](80) NULL DEFAULT (''),
  [cTur] [char](1) NOT NULL DEFAULT (' '),
  [Deger] [varchar](120) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([OndegerSistem_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [OndegerSistemKey]
  ON [Gusto].[OndegerSistem] ([nModul], [pKullanici], [Anahtar])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO