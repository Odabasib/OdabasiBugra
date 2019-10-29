CREATE TABLE [GUSTO00005].[kasaHesapAdi] (
  [kasaHesapAdi_rowid] [int] IDENTITY,
  [pHesapAdiTanimi] [int] NULL DEFAULT (0),
  [cKodTuru] [varchar](2) NULL DEFAULT (''),
  [pKod] [int] NULL DEFAULT (0),
  [sAd] [varchar](60) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([kasaHesapAdi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [HesapAdiTanimiAdKey]
  ON [GUSTO00005].[kasaHesapAdi] ([pHesapAdiTanimi], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [HspAdiKodKey]
  ON [GUSTO00005].[kasaHesapAdi] ([pKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO