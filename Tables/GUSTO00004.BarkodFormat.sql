CREATE TABLE [GUSTO00004].[BarkodFormat] (
  [BarkodFormat_rowid] [int] IDENTITY,
  [pYazarKasa] [int] NULL DEFAULT (0),
  [nEANTipi] [int] NULL DEFAULT (0),
  [nIsaretKodu] [tinyint] NULL DEFAULT (0),
  [nPLUUzunlugu] [tinyint] NULL DEFAULT (0),
  [nFiyatMiktarUzunlugu] [tinyint] NULL DEFAULT (0),
  [nFiyatKontrol] [tinyint] NULL DEFAULT (0),
  [nMiktarOndalik] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BarkodFormat_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO