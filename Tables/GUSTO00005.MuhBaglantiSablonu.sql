CREATE TABLE [GUSTO00005].[MuhBaglantiSablonu] (
  [MuhBaglantiSablonu_rowid] [int] IDENTITY,
  [nModul] [int] NULL DEFAULT (0),
  [sSablonAdi] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MuhBaglantiSablonu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [ModulAdKey]
  ON [GUSTO00005].[MuhBaglantiSablonu] ([nModul], [sSablonAdi], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO