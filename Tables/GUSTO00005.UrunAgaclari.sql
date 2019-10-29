CREATE TABLE [GUSTO00005].[UrunAgaclari] (
  [UrunAgaclari_rowid] [int] IDENTITY,
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](60) NULL DEFAULT (''),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [nMontajProses] [int] NULL DEFAULT (0),
  [cDurum] [char](1) NULL DEFAULT (' '),
  [dtGecerlilikBaslama] [smalldatetime] NULL,
  [dtGecerlilikBitis] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [bSablonMu] [bit] NULL DEFAULT (0),
  [sRotaOncelikKodu] [varchar](20) NULL DEFAULT (''),
  [bYMPlanlamasinaKatma] [bit] NULL DEFAULT (0),
  [bOtomatikIsEmri] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UrunAgaclari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00005].[UrunAgaclari] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00005].[UrunAgaclari] ([sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAdKey]
  ON [GUSTO00005].[UrunAgaclari] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKodKey]
  ON [GUSTO00005].[UrunAgaclari] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO