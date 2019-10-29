CREATE TABLE [GUSTO00003].[IsyeriDegiskenBilgileri] (
  [IsyeriDegiskenBilgileri_rowid] [int] IDENTITY,
  [pIsyeriId] [int] NOT NULL DEFAULT (0),
  [dtBasTar] [smalldatetime] NULL,
  [nIskoluTehlikeSinif] [tinyint] NULL DEFAULT (0),
  [nTehlikeDerecesi] [tinyint] NULL DEFAULT (0),
  [ldNormalArtisOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldHaftaSonuArtisOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldResmiBayramArtisOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldDiniBayramArtisOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldGenelIndirimTutari] [decimal](22, 2) NULL DEFAULT (0),
  [nGenelIndirimUygulama] [tinyint] NULL DEFAULT (0),
  [nNormalRaporUcretiOdenecek] [tinyint] NULL DEFAULT (0),
  [nNormalRaporOdemeBaslangici] [tinyint] NULL DEFAULT (0),
  [nNormalRaporOdenecekGun] [tinyint] NULL DEFAULT (0),
  [nIsKazasiRaporUcretiOdenecek] [tinyint] NULL DEFAULT (0),
  [nIsKazasiRaporOdemeBaslangici] [tinyint] NULL DEFAULT (0),
  [nIsKazasiRaporOdenecekGun] [tinyint] NULL DEFAULT (0),
  [bIssizlik] [bit] NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [nCalismaGunu] [int] NULL DEFAULT (0),
  [ldCalismaSaati] [decimal](22, 2) NULL DEFAULT (0),
  [nCumartesiCalisma] [tinyint] NULL DEFAULT (0),
  [nPazarCalisma] [tinyint] NULL DEFAULT (0),
  [bCalismaSureSiniriYok] [bit] NULL DEFAULT (0),
  [bSSKPrimiIsciIsverenAyri] [bit] NULL DEFAULT (0),
  [bYillikIzinPuantajaGelmesin] [bit] NULL DEFAULT (0),
  [bCumartesiIzneDahil] [bit] NULL DEFAULT (1),
  [nTerkinDusmeSekli] [tinyint] NULL DEFAULT (0),
  [pCalismaTakvimi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsyeriDegiskenBilgileri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IYD_IsyeriTarihKey]
  ON [GUSTO00003].[IsyeriDegiskenBilgileri] ([pIsyeriId], [dtBasTar], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO