CREATE TABLE [GUSTO00004].[EnfMuhSablonSatir] (
  [EnfMuhSablonSatir_rowid] [int] IDENTITY,
  [pSablon] [int] NULL DEFAULT (0),
  [sBaslangicKodu] [varchar](41) NULL DEFAULT (''),
  [sBitisKodu] [varchar](41) NULL DEFAULT (''),
  [sKarsilikHesapKodu] [varchar](41) NULL DEFAULT (''),
  [sDuzeltmeHesapKodu] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EnfMuhSablonSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SablonKey]
  ON [GUSTO00004].[EnfMuhSablonSatir] ([pSablon], [sBaslangicKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO