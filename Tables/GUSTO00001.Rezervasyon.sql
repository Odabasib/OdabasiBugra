CREATE TABLE [GUSTO00001].[Rezervasyon] (
  [Rezervasyon_rowid] [int] IDENTITY,
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [pBagliOlduguRzv] [int] NULL DEFAULT (0),
  [cAcikKapali] [char](1) NULL DEFAULT ('A'),
  [pStok] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [sRzvYapanTur] [varchar](2) NULL DEFAULT (''),
  [pRzvYapanBelge] [int] NULL DEFAULT (0),
  [ldSetMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [sRzvKoyulanTur] [varchar](2) NULL DEFAULT (''),
  [pRzvKoyulanBelge] [int] NULL DEFAULT (0),
  [ldMiktar1Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar2Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar3Birim] [decimal](22, 6) NULL DEFAULT (0),
  [dtRezervasyonTarihi] [smalldatetime] NULL,
  [dtRezervasyonGecerliTar] [smalldatetime] NULL,
  [cOnayDurumu] [char](1) NULL DEFAULT ('G'),
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [pCari] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](120) NULL DEFAULT (''),
  [nBagliOlanRzvSayisi] [smallint] NULL DEFAULT (0),
  [pStokHareket] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Rezervasyon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CariKey]
  ON [GUSTO00001].[Rezervasyon] ([pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KoyulanRzvKey]
  ON [GUSTO00001].[Rezervasyon] ([pRzvKoyulanBelge], [sRzvKoyulanTur])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KullaniciKey]
  ON [GUSTO00001].[Rezervasyon] ([pOlusturanKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pBagliOlduguRzv]
  ON [GUSTO00001].[Rezervasyon] ([pBagliOlduguRzv])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pStokHareket]
  ON [GUSTO00001].[Rezervasyon] ([pStokHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [RezYapanTumKey]
  ON [GUSTO00001].[Rezervasyon] ([pRzvYapanBelge], [sRzvYapanTur], [pRzvKoyulanBelge], [sRzvKoyulanTur])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [RzvYapanTurKey]
  ON [GUSTO00001].[Rezervasyon] ([sRzvYapanTur])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriNoKey]
  ON [GUSTO00001].[Rezervasyon] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokKey]
  ON [GUSTO00001].[Rezervasyon] ([pStok], [pIzlemeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TarihKey]
  ON [GUSTO00001].[Rezervasyon] ([dtRezervasyonTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO