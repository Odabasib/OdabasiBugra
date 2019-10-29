CREATE TABLE [GUSTO00005].[MalzemeUrunDepoBaglanti] (
  [MalzemeUrunDepoBaglanti_rowid] [int] IDENTITY,
  [cTip] [char](1) NULL DEFAULT (' '),
  [sBaslangicDepoKodu] [varchar](41) NOT NULL DEFAULT (''),
  [sBaslangicDepoAdi] [varchar](41) NOT NULL DEFAULT (''),
  [sBitisDepoKodu] [varchar](41) NOT NULL DEFAULT (''),
  [sBitisDepoAdi] [varchar](41) NOT NULL DEFAULT (''),
  [pUrunMalzeme] [int] NOT NULL DEFAULT (0),
  [pBaslangicDepoKodu] [int] NOT NULL DEFAULT (0),
  [pBitisDepoKodu] [int] NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MalzemeUrunDepoBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pUrunMalzeme]
  ON [GUSTO00005].[MalzemeUrunDepoBaglanti] ([pUrunMalzeme])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO