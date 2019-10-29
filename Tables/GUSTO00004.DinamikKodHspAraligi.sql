CREATE TABLE [GUSTO00004].[DinamikKodHspAraligi] (
  [DinamikKodHspAraligi_rowid] [int] IDENTITY,
  [pDinamikKodTanimi] [int] NULL DEFAULT (0),
  [pBaslangicHesapKodu] [int] NULL DEFAULT (0),
  [pBitisHesapKodu] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DinamikKodHspAraligi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [TanimBasBitHesKodKey]
  ON [GUSTO00004].[DinamikKodHspAraligi] ([pDinamikKodTanimi], [pBaslangicHesapKodu], [pBitisHesapKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO