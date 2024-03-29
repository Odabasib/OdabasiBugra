﻿CREATE TABLE [GUSTO00001].[SabitKDetay] (
  [SabitKDetay_rowid] [int] IDENTITY,
  [pSabitKKodu] [int] NULL DEFAULT (0),
  [pSabitKDetayDevami] [int] NULL DEFAULT (0),
  [pSabitKDetayDevami1] [int] NULL DEFAULT (0),
  [ldAsgariSeviye1] [decimal](22, 6) NULL DEFAULT (0),
  [ldAzamiSeviye1] [decimal](22, 6) NULL DEFAULT (0),
  [ldSiparisEdilmeSeviyesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldAlisKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldSatisKDV] [decimal](22, 2) NULL DEFAULT (0),
  [sBirinciBirimAdi] [varchar](10) NULL DEFAULT (''),
  [ldBirinciBirim] [decimal](22, 6) NULL DEFAULT (0),
  [ldEn1Birim] [real] NULL DEFAULT (0.000000),
  [ldBoy1Birim] [real] NULL DEFAULT (0.000000),
  [ldYukseklik1Birim] [real] NULL DEFAULT (0.000000),
  [ldAgirlik1Birim] [real] NULL DEFAULT (0.000000),
  [sOlcuUzunluk1Birim] [varchar](10) NULL DEFAULT (''),
  [sOlcuAgirlik1Birim] [varchar](10) NULL DEFAULT (''),
  [sBarkod1Birim] [varchar](20) NULL DEFAULT (''),
  [nVadeSuresiAlis] [smallint] NULL DEFAULT (0),
  [nVadeSuresiSatis] [smallint] NULL DEFAULT (0),
  [cFaturaAltiIskonto] [char](1) NULL DEFAULT (' '),
  [cSatirIskonto] [char](1) NULL DEFAULT (' '),
  [pDovizYeriAlis] [int] NULL DEFAULT (0),
  [cDovizTurAlis] [int] NULL DEFAULT (0),
  [pDovizYeriSatis] [int] NULL DEFAULT (0),
  [cDovizTurSatis] [int] NULL DEFAULT (0),
  [ldTpMalAlimi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpKonsinyeGiren1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpKonsinyeCikaninIadeAlimi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpPerakendeSatisIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpToptanSatisIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpTesvikliIthalat1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpTesviksizIthalat1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpDevirGirisi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpImalattanGiris1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpSayimFarkiGirisi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpDigerGirisler1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpTesvikliIhracatIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpTesviksizIhracatIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpDigerCikisIadesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpFasonGiris1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTpFasonCikisIadesi1] [decimal](22, 6) NULL DEFAULT (0),
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
  [ldVSiparisMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldKarsilananVSiparisMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [dtSonKullanim] [smalldatetime] NULL,
  [nRafOmru] [int] NULL DEFAULT (0),
  [dtUretim] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([SabitKDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sBarkod1Birim]
  ON [GUSTO00001].[SabitKDetay] ([sBarkod1Birim])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO