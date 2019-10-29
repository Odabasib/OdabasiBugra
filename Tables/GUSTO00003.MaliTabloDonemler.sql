CREATE TABLE [GUSTO00003].[MaliTabloDonemler] (
  [MaliTabloDonemler_rowid] [int] IDENTITY,
  [pMaliTabloAd] [int] NOT NULL DEFAULT (0),
  [sAdi] [varchar](30) NULL DEFAULT (''),
  [pFirma] [int] NOT NULL DEFAULT (0),
  [dtBasTarih] [smalldatetime] NOT NULL,
  [dtBitTarih] [smalldatetime] NOT NULL,
  [dtSonHesaplama] [smalldatetime] NULL,
  [tmSonHesaplama] [int] NULL DEFAULT (0),
  [sDipnotDosyaAdi] [varchar](255) NULL DEFAULT (''),
  [bDuzeltmeFisiHaric] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MaliTabloDonemler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [TabloDonemKey]
  ON [GUSTO00003].[MaliTabloDonemler] ([pMaliTabloAd], [sAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO