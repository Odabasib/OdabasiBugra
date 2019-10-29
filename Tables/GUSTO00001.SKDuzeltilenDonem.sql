CREATE TABLE [GUSTO00001].[SKDuzeltilenDonem] (
  [SKDuzeltilenDonem_rowid] [int] IDENTITY,
  [pSKIzlemeKodu] [int] NULL DEFAULT (0),
  [pDonem] [int] NULL DEFAULT (0),
  [pSKDuzeltmeHareketi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SKDuzeltilenDonem_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [Donem_SKIzlemeKodu]
  ON [GUSTO00001].[SKDuzeltilenDonem] ([pDonem], [pSKIzlemeKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO