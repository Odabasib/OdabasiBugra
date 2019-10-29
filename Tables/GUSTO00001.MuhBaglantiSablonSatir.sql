CREATE TABLE [GUSTO00001].[MuhBaglantiSablonSatir] (
  [MuhBaglantiSablonSatir_rowid] [int] IDENTITY,
  [pSablon] [int] NOT NULL DEFAULT (0),
  [nTur] [int] NOT NULL DEFAULT (0),
  [pHesapKodu] [int] NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MuhBaglantiSablonSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SablonTurKey]
  ON [GUSTO00001].[MuhBaglantiSablonSatir] ([pSablon], [nTur], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO