﻿CREATE TABLE [GUSTO00003].[PersonelMaas] (
  [PersonelMaas_rowid] [int] IDENTITY,
  [cMaasFark] [char](1) NOT NULL DEFAULT (' '),
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [nYil] [int] NOT NULL DEFAULT (0),
  [nAy] [int] NOT NULL DEFAULT (0),
  [pIsYeri] [int] NOT NULL DEFAULT (0),
  [pYasalStatu] [int] NOT NULL DEFAULT (0),
  [nSira] [int] NULL DEFAULT (0),
  [ldGunlukUcret] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [ldNormalCalismaUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldTatilCalismaUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldResmiBayramCalismaUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldDiniBayramCalismaUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldNormalRaporCalismaUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsKazasiRaporCalismaUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldYillikIzinCalismaUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldUcretliIzinCalismaUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldUcretsizIzinCalismaUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldNormalUcret] [decimal](22, 2) NULL DEFAULT (0),
  [ldNormalFazlaMesaiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldTatilFazlaMesaiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldResmiBayramFazlaMesaiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldDiniBayramFazlaMesaiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldVardiyaPrimUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [nCocukSayisi] [smallint] NULL DEFAULT (0),
  [ldCocukYardimUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldSGKCocukYardimUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkGelirToplami] [decimal](22, 2) NULL DEFAULT (0),
  [ldTumEkGelirlerToplami] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkGelirIssizlikSigUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkGelirGelirVerUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkGelirSSKPrimUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkGelirDamgaVerUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamEkGelirGelirVerUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamEkGelirDamgaVerUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldBrutUcret] [decimal](22, 2) NULL DEFAULT (0),
  [ldSendikaKesintisiToplami] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKNormalUcret] [decimal](22, 2) NULL DEFAULT (0),
  [ldAsilSSKMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [nSSKTabanTavan] [smallint] NULL DEFAULT (0),
  [ldSSKTabanUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKTavanUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKPrimiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKMatrahGun] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKYuzde] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKIsverenPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldArttirimUcretiToplami] [decimal](22, 2) NULL DEFAULT (0),
  [ldIndirimUcretiToplami] [decimal](22, 2) NULL DEFAULT (0),
  [ldGenelIndirimUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldGunlukIndirimUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldKanuniCocukYardimUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamIndirim] [decimal](22, 2) NULL DEFAULT (0),
  [ldGelirVergisiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldDamgaVergisiMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [ldDamgaVergisiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldYasalKesintiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldNetUcret] [decimal](22, 2) NULL DEFAULT (0),
  [ldKesintilerUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldDigerKesintiler] [decimal](22, 2) NULL DEFAULT (0),
  [ldSonNetUcret] [decimal](22, 2) NULL DEFAULT (0),
  [ldOdenen] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKRaporUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciSSKKazaPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciSSKAnalikPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciSSKHastalikPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciSSKCirakPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciSSKYasliPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciSSKSosGuvDestekPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsverenSSKKazaPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsverenSSKAnalikPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsverenSSKHastalikPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsverenSSKCirakPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsverenSSKYasliPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsverenSSKSosGuvDestekPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKIsKazaMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [ldSakatlikIndirimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldOzelIndirim] [decimal](22, 2) NULL DEFAULT (0),
  [ldLimiteTabiOzelVergiIndirimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldAskerlikBorclanmasiIndirimi] [decimal](22, 2) NULL DEFAULT (0),
  [pIslemId] [int] NOT NULL DEFAULT (0),
  [nMemurDerece] [int] NULL DEFAULT (0),
  [nMemurKademe] [int] NULL DEFAULT (0),
  [nMemurEkGosterge] [int] NULL DEFAULT (0),
  [nMemurKidemYili] [int] NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [ldhdBrutUcret] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdOdenen] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdNormalFazlaMesaiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdTatilFazlaMesaiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdResmiByrmFzlMesaiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdDiniByrmFazlaMesaiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdVardiyaPrimUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdSSKIsverenPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdBrutUcret] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdOdenen] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdNormalFazlaMesaiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdTatilFazlaMesaiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdResmiByrmFzlMesaiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdDiniByrmFazlaMesaiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdVardiyaPrimUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdSSKIsverenPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKIsverenTesvikPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdSSKIsverenTesvikPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdSSKIsverenTesvikPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [cUcretNetBrutTipi] [char](1) NULL DEFAULT (' '),
  [ldPrsKartiAylikUcret] [decimal](22, 2) NULL DEFAULT (0),
  [nYararlandigiKanunTuru] [tinyint] NULL DEFAULT (0),
  [pTahakkukTanimi] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelMaas_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [IsYeriKey]
  ON [GUSTO00003].[PersonelMaas] ([pIsYeri])
  ON [PRIMARY]
GO

CREATE INDEX [MaasPersonelKey]
  ON [GUSTO00003].[PersonelMaas] ([pPersonel])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pIslemId]
  ON [GUSTO00003].[PersonelMaas] ([pIslemId])
  ON [PRIMARY]
GO