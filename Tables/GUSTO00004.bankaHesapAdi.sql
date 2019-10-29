CREATE TABLE [GUSTO00004].[bankaHesapAdi] (
  [bankaHesapAdi_rowid] [int] IDENTITY,
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
  PRIMARY KEY CLUSTERED ([bankaHesapAdi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [HesapAdiTanimiAdKey]
  ON [GUSTO00004].[bankaHesapAdi] ([pHesapAdiTanimi], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [HspAdiKodKey]
  ON [GUSTO00004].[bankaHesapAdi] ([pKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO