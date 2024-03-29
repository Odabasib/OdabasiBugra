﻿CREATE TABLE [GUSTO00001].[EkGelirTanimi] (
  [EkGelirTanimi_rowid] [int] IDENTITY,
  [nVerilisSekli] [tinyint] NULL DEFAULT (0),
  [sEkGelirAdi] [varchar](50) NULL DEFAULT (''),
  [bAktif] [bit] NULL DEFAULT (0),
  [bGelirVergisiTabi] [bit] NULL DEFAULT (0),
  [bSSKPrimi] [bit] NULL DEFAULT (0),
  [bIssizlikTabi] [bit] NULL DEFAULT (0),
  [bDamgaVergisiTabi] [bit] NULL DEFAULT (0),
  [bHarcirah] [bit] NULL DEFAULT (0),
  [bKidemTazminatinaDahil] [bit] NULL DEFAULT (0),
  [nEkGelirTipi] [tinyint] NULL DEFAULT (0),
  [nSSKHesabi] [tinyint] NULL DEFAULT (0),
  [ldVergidenMuafTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldEnYuksekPuan] [decimal](22, 2) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [nKurTuru] [tinyint] NULL DEFAULT (0),
  [nKurTarihi] [tinyint] NULL DEFAULT (0),
  [bCalismaSuresi] [bit] NULL DEFAULT (0),
  [nCalismaSuresiOperator] [int] NULL DEFAULT (0),
  [ldCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [bCalismaGunu] [bit] NULL DEFAULT (0),
  [nCalismaGunuOperator] [int] NULL DEFAULT (0),
  [ldCalismaGunu] [decimal](22, 2) NULL DEFAULT (0),
  [bMaas] [bit] NULL DEFAULT (0),
  [nMaasOperator] [int] NULL DEFAULT (0),
  [ldMaas] [decimal](22, 2) NULL DEFAULT (0),
  [bDogumTarihi] [bit] NULL DEFAULT (0),
  [nDogumTarihiOperator] [int] NULL DEFAULT (0),
  [dtDogumTarihi] [smalldatetime] NULL,
  [bCocukSayisi] [bit] NULL DEFAULT (0),
  [nCocukSayisiOperator] [int] NULL DEFAULT (0),
  [nCocukSayisi] [tinyint] NULL DEFAULT (0),
  [bYukumluSayisi] [bit] NULL DEFAULT (0),
  [nYukumluSayisiOperator] [int] NULL DEFAULT (0),
  [nYukumluSayisi] [tinyint] NULL DEFAULT (0),
  [bHerkeseVer] [bit] NULL DEFAULT (0),
  [bSSKNormal] [bit] NULL DEFAULT (0),
  [bSSKCirak] [bit] NULL DEFAULT (0),
  [bSSKEmekli] [bit] NULL DEFAULT (0),
  [bSSKYabanci] [bit] NULL DEFAULT (0),
  [bSakatlik0] [bit] NULL DEFAULT (0),
  [bSakatlik1] [bit] NULL DEFAULT (0),
  [bSakatlik2] [bit] NULL DEFAULT (0),
  [bSakatlik3] [bit] NULL DEFAULT (0),
  [bTahsilYok] [bit] NULL DEFAULT (0),
  [bTahsilIlkOkul] [bit] NULL DEFAULT (0),
  [bTahsilOrtaOkul] [bit] NULL DEFAULT (0),
  [bTahsilIlkOgr] [bit] NULL DEFAULT (0),
  [bTahsilEndMesLisesi] [bit] NULL DEFAULT (0),
  [bTahsilLise] [bit] NULL DEFAULT (0),
  [bTahsilYuksekOkul] [bit] NULL DEFAULT (0),
  [bTahsilUniversite] [bit] NULL DEFAULT (0),
  [bTahsilYuksekLisans] [bit] NULL DEFAULT (0),
  [bTahsilDoktora] [bit] NULL DEFAULT (0),
  [bMedeniBekar] [bit] NULL DEFAULT (0),
  [bMedeniEvli] [bit] NULL DEFAULT (0),
  [bMedeniBosanmis] [bit] NULL DEFAULT (0),
  [bMedeniDul] [bit] NULL DEFAULT (0),
  [bStatuBagkur] [bit] NULL DEFAULT (0),
  [bStatuIsci] [bit] NULL DEFAULT (0),
  [bUcretTipiBrut] [bit] NULL DEFAULT (0),
  [bUcretTipiNet] [bit] NULL DEFAULT (0),
  [bGocmenEvet] [bit] NULL DEFAULT (0),
  [bGocmenHayir] [bit] NULL DEFAULT (0),
  [bEsiCalisanEvet] [bit] NULL DEFAULT (0),
  [bEsiCalisanHayir] [bit] NULL DEFAULT (0),
  [bCinsiyetErkek] [bit] NULL DEFAULT (0),
  [bCinsiyetKadin] [bit] NULL DEFAULT (0),
  [bAskerlikYapan] [bit] NULL DEFAULT (0),
  [bAskerlikYapmayan] [bit] NULL DEFAULT (0),
  [bHukumluOlan] [bit] NULL DEFAULT (0),
  [bHukumluOlmayan] [bit] NULL DEFAULT (0),
  [bOcak] [bit] NULL DEFAULT (0),
  [bSubat] [bit] NULL DEFAULT (0),
  [bMart] [bit] NULL DEFAULT (0),
  [bNisan] [bit] NULL DEFAULT (0),
  [bMayis] [bit] NULL DEFAULT (0),
  [bHaziran] [bit] NULL DEFAULT (0),
  [bTemmuz] [bit] NULL DEFAULT (0),
  [bAgustos] [bit] NULL DEFAULT (0),
  [bEylul] [bit] NULL DEFAULT (0),
  [bEkim] [bit] NULL DEFAULT (0),
  [bKasim] [bit] NULL DEFAULT (0),
  [bAralik] [bit] NULL DEFAULT (0),
  [pMuhasebeKodu] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [pOrganizasyon] [int] NULL DEFAULT (0),
  [pIsyeri] [int] NULL DEFAULT (0),
  [pGorevTanimi] [int] NULL DEFAULT (0),
  [pUnvanGrubu] [int] NULL DEFAULT (0),
  [pYasalStatu] [int] NULL DEFAULT (0),
  [pSosyalGuvenlik] [int] NULL DEFAULT (0),
  [pMeslek] [int] NULL DEFAULT (0),
  [pOkul] [int] NULL DEFAULT (0),
  [pBolum] [int] NULL DEFAULT (0),
  [pDil] [int] NULL DEFAULT (0),
  [nDilDerecesi] [tinyint] NULL DEFAULT (0),
  [pOdul] [int] NULL DEFAULT (0),
  [bSendikaYok] [bit] NULL DEFAULT (0),
  [bSendikaVar] [bit] NULL DEFAULT (0),
  [pSendika] [int] NULL DEFAULT (0),
  [pIkramiyeTanimi] [int] NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [bEksikCalismaSSKGun] [bit] NULL DEFAULT (0),
  [bSSKMatrahiniDevret] [bit] NULL DEFAULT (1),
  [bPrimIkramiyeDahil] [bit] NULL DEFAULT (1),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EkGelirTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [nVerilisSekli]
  ON [GUSTO00001].[EkGelirTanimi] ([nVerilisSekli])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pUnvanGrubu]
  ON [GUSTO00001].[EkGelirTanimi] ([pUnvanGrubu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO