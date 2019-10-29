CREATE TABLE [GUSTO00001].[IsMerkMlytDagHesaplari] (
  [IsMerkMlytDagHesaplari_rowid] [int] IDENTITY,
  [pDagitimSekli] [int] NULL DEFAULT (0),
  [pBaslangicHesapKodu] [int] NOT NULL DEFAULT (0),
  [pBitisHesapKodu] [int] NOT NULL DEFAULT (0),
  [pBaslangicGGTuru] [int] NOT NULL DEFAULT (0),
  [pBitisGGTuru] [int] NOT NULL DEFAULT (0),
  [pYansitmaHesapKodu] [int] NOT NULL DEFAULT (0),
  [pYansitmaGGTuru] [int] NOT NULL DEFAULT (0),
  [nMaliyetIsareti] [tinyint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsMerkMlytDagHesaplari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pDagitimSekli]
  ON [GUSTO00001].[IsMerkMlytDagHesaplari] ([pDagitimSekli])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO