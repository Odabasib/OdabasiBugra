CREATE TABLE [GUSTO00005].[StokKodu] (
  [StokKodu_rowid] [int] IDENTITY,
  [sKod] [varchar](61) NULL DEFAULT (''),
  [sAd] [varchar](100) NULL DEFAULT (''),
  [sKisaAdi] [varchar](30) NULL DEFAULT (''),
  [pStokDetayi] [int] NULL DEFAULT (0),
  [pGrupKodu] [int] NULL DEFAULT (0),
  [pUstKod] [int] NULL DEFAULT (0),
  [cIzlemeKodlariVarmi] [char](1) NULL DEFAULT (' '),
  [bIzlemeKoduGirilemez] [bit] NULL DEFAULT (0),
  [bIzlemeKoduZorunlu] [bit] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [sAltHesapKoduBaslangic] [varchar](41) NULL DEFAULT (''),
  [sAltHesapKoduBitis] [varchar](41) NULL DEFAULT (''),
  [pTekDinamikKodDegeri] [int] NULL DEFAULT (0),
  [bSablonMu] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [GrupKey]
  ON [GUSTO00005].[StokKodu] ([pGrupKodu], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pTekDinamikKodDegeri]
  ON [GUSTO00005].[StokKodu] ([pTekDinamikKodDegeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00005].[StokKodu] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sKisaAdi]
  ON [GUSTO00005].[StokKodu] ([sKisaAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00005].[StokKodu] ([sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAdKey]
  ON [GUSTO00005].[StokKodu] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKisaAdKey]
  ON [GUSTO00005].[StokKodu] ([pUstKod], [sKisaAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKodKey]
  ON [GUSTO00005].[StokKodu] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO