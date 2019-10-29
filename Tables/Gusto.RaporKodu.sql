CREATE TABLE [Gusto].[RaporKodu] (
  [RaporKodu_rowid] [int] IDENTITY,
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](255) NULL DEFAULT (''),
  [sAciklama] [varchar](120) NULL DEFAULT (''),
  [nCrystalVersion] [tinyint] NULL DEFAULT (0),
  [sRaporDosyasi] [varchar](255) NULL DEFAULT (''),
  [sRaporPath] [varchar](255) NULL DEFAULT (''),
  [bLikomStandartRaporu] [bit] NULL DEFAULT (0),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [nEkranTuru] [smallint] NULL DEFAULT (0),
  [sRevizyonNumarasi] [varchar](10) NULL DEFAULT (''),
  [nDokumanTuru] [smallint] NULL DEFAULT (0),
  [pFirma] [int] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [sLikugId] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([RaporKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [nEkranTuru]
  ON [Gusto].[RaporKodu] ([nEkranTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [Gusto].[RaporKodu] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAdKey]
  ON [Gusto].[RaporKodu] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [UstKodKodKey]
  ON [Gusto].[RaporKodu] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO