CREATE TABLE [GUSTO00005].[FinBaglantiSablonSatir] (
  [FinBaglantiSablonSatir_rowid] [int] IDENTITY,
  [pSablon] [int] NOT NULL DEFAULT (0),
  [nTur] [int] NOT NULL DEFAULT (0),
  [pHesapKodu] [int] NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FinBaglantiSablonSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SablonTurKey]
  ON [GUSTO00005].[FinBaglantiSablonSatir] ([pSablon], [nTur], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO