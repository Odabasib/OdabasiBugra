CREATE TABLE [GUSTO00003].[YazarKasaKodu] (
  [YazarKasaKodu_rowid] [int] IDENTITY,
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](60) NULL DEFAULT (''),
  [pYazarKasaDetayi] [int] NULL DEFAULT (0),
  [pUstKod] [int] NULL DEFAULT (0),
  [nYazarKasaTur] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YazarKasaKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [nYazarKasaTur]
  ON [GUSTO00003].[YazarKasaKodu] ([nYazarKasaTur])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00003].[YazarKasaKodu] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sKod]
  ON [GUSTO00003].[YazarKasaKodu] ([sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAdKeyYazarKasa]
  ON [GUSTO00003].[YazarKasaKodu] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKodKeyYazarKasa]
  ON [GUSTO00003].[YazarKasaKodu] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO