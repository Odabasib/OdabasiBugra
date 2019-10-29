CREATE TABLE [GUSTO00001].[faturaKulTan] (
  [faturaKulTan_rowid] [int] IDENTITY,
  [pKulTanTanim] [int] NULL DEFAULT (0),
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](60) NULL DEFAULT (''),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [bPasif] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([faturaKulTan_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KulTan_sAdKey]
  ON [GUSTO00001].[faturaKulTan] ([pKulTanTanim], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KulTan_sKodKey]
  ON [GUSTO00001].[faturaKulTan] ([pKulTanTanim], [sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KulTan_UstKodAdKey]
  ON [GUSTO00001].[faturaKulTan] ([pKulTanTanim], [pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KulTan_UstKodKodKey]
  ON [GUSTO00001].[faturaKulTan] ([pKulTanTanim], [pUstKod], [sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO