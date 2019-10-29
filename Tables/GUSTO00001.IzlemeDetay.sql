﻿CREATE TABLE [GUSTO00001].[IzlemeDetay] (
  [IzlemeDetay_rowid] [int] IDENTITY,
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pIzlemeDetayDevami] [int] NULL DEFAULT (0),
  [pIzlemeDetayDevami1] [int] NULL DEFAULT (0),
  [pIzlemeDetayDevami2] [int] NULL DEFAULT (0),
  [cMuhKodlariStokKodundan] [char](1) NULL DEFAULT (' '),
  [cBarkodlarStokKodundan] [char](1) NULL DEFAULT (' '),
  [cUreticiKodlariStokKodundan] [char](1) NULL DEFAULT (' '),
  [cSeviyelerStokKodundan] [char](1) NULL DEFAULT (' '),
  [cAmbalajStokKodundan] [char](1) NULL DEFAULT (' '),
  [ldAsgariSeviye1] [decimal](22, 6) NULL DEFAULT (0),
  [ldAzamiSeviye1] [decimal](22, 6) NULL DEFAULT (0),
  [ldSiparisEdilmeSeviyesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldAsgariSeviye2] [decimal](22, 6) NULL DEFAULT (0),
  [ldAzamiSeviye2] [decimal](22, 6) NULL DEFAULT (0),
  [ldSiparisEdilmeSeviyesi2] [decimal](22, 6) NULL DEFAULT (0),
  [ldAsgariSeviye3] [decimal](22, 6) NULL DEFAULT (0),
  [ldAzamiSeviye3] [decimal](22, 6) NULL DEFAULT (0),
  [ldSiparisEdilmeSeviyesi3] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirinciBirim] [decimal](22, 6) NULL DEFAULT (0),
  [ldIkinciBirim] [decimal](22, 6) NULL DEFAULT (0),
  [ldUcuncuBirim] [decimal](22, 6) NULL DEFAULT (0),
  [ldEn1Birim] [real] NULL DEFAULT (0.000000),
  [ldEn2Birim] [real] NULL DEFAULT (0.000000),
  [ldEn3Birim] [real] NULL DEFAULT (0.000000),
  [ldBoy1Birim] [real] NULL DEFAULT (0.000000),
  [ldBoy2Birim] [real] NULL DEFAULT (0.000000),
  [ldBoy3Birim] [real] NULL DEFAULT (0.000000),
  [ldYukseklik1Birim] [real] NULL DEFAULT (0.000000),
  [ldYukseklik2Birim] [real] NULL DEFAULT (0.000000),
  [ldYukseklik3Birim] [real] NULL DEFAULT (0.000000),
  [ldAgirlik1Birim] [real] NULL DEFAULT (0.000000),
  [ldAgirlik2Birim] [real] NULL DEFAULT (0.000000),
  [ldAgirlik3Birim] [real] NULL DEFAULT (0.000000),
  [sOlcuUzunluk1Birim] [varchar](10) NULL DEFAULT (''),
  [sOlcuAgirlik1Birim] [varchar](10) NULL DEFAULT (''),
  [sOlcuUzunluk2Birim] [varchar](10) NULL DEFAULT (''),
  [sOlcuAgirlik2Birim] [varchar](10) NULL DEFAULT (''),
  [sOlcuUzunluk3Birim] [varchar](10) NULL DEFAULT (''),
  [sOlcuAgirlik3Birim] [varchar](10) NULL DEFAULT (''),
  [sBarkod1Birim] [varchar](20) NULL DEFAULT (''),
  [sBarkod2Birim] [varchar](20) NULL DEFAULT (''),
  [sBarkod3Birim] [varchar](20) NULL DEFAULT (''),
  [ldTpMalAlimi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpKonsinyeGiren1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpKonsinyeCikaninIadeAlimi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpPerakendeSatisIadesi1] [decimal](22, 2) NULL DEFAULT (6),
  [ldTpToptanSatisIadesi1] [decimal](22, 2) NULL DEFAULT (6),
  [ldTpTesvikliIthalat1] [decimal](22, 2) NULL DEFAULT (6),
  [ldTpTesviksizIthalat1] [decimal](22, 2) NULL DEFAULT (6),
  [ldTpDevirGirisi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpImalattanGiris1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpSayimFarkiGirisi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpDigerGirisler1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpTesvikliIhracatIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpTesviksizIhracatIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpDigerCikisIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpFasonGiris1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpFasonCikisIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpIhracatKayitliMalAlis1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpPerakendeSatis1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpToptanSatis1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpKonsinyeCikis1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpKonsinyeGirisIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpTesvikliIhracat1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpTesviksizIhracat1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpUretimeCikis1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpMamulYMHurdaFireCikisi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpHammaddeHurdaFireCikisi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpDahiliKullanim1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpSayimFarkiCikisi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpDigerCikislar1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpAlimIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpTesvikliIthalatIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpTesviksizIthalatIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpFasonGirisIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpDigerGirisIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpFasonCikis1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpIhracatKayitliSatis1] [decimal](22, 6) NULL DEFAULT (0),
  [ldASiparisMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldKarsilananASiparisMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldVSiparisMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldKarsilananVSiparisMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [dtSonKullanim] [smalldatetime] NULL,
  [nRafOmru] [int] NULL DEFAULT (0),
  [dtUretim] [smalldatetime] NULL,
  [nStokBirlestirGunAralik] [smallint] NULL DEFAULT (0),
  [bMRPTalepBirlestirmeYapma] [bit] NULL DEFAULT (0),
  [nMRPKaynaklariKontrolEtme] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IzlemeDetay_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [sBarkod1Birim]
  ON [GUSTO00001].[IzlemeDetay] ([sBarkod1Birim])
  ON [PRIMARY]
GO

CREATE INDEX [sBarkod2Birim]
  ON [GUSTO00001].[IzlemeDetay] ([sBarkod2Birim])
  ON [PRIMARY]
GO

CREATE INDEX [sBarkod3Birim]
  ON [GUSTO00001].[IzlemeDetay] ([sBarkod3Birim])
  ON [PRIMARY]
GO