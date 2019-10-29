CREATE TABLE [GUSTO00005].[PersonelSablonu] (
  [PersonelSablonu_rowid] [int] IDENTITY,
  [nModul] [int] NULL DEFAULT (0),
  [sSablonAdi] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelSablonu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [ModulAdKey]
  ON [GUSTO00005].[PersonelSablonu] ([nModul], [sSablonAdi], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO