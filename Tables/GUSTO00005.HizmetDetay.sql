﻿CREATE TABLE [GUSTO00005].[HizmetDetay] (
  [HizmetDetay_rowid] [int] IDENTITY,
  [pHizmetKodu] [int] NULL DEFAULT (0),
  [pHizmetDetayDevami] [int] NULL DEFAULT (0),
  [pHizmetDetayDevami1] [int] NULL DEFAULT (0),
  [pHizmetDetayDevami2] [int] NULL DEFAULT (0),
  [ldAlisKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldSatisKDV] [decimal](22, 2) NULL DEFAULT (0),
  [sBirinciBirimAdi] [varchar](10) NULL DEFAULT (''),
  [sIkinciBirimAdi] [varchar](10) NULL DEFAULT (''),
  [cIkinciBirimCarpanBolen] [char](1) NULL DEFAULT (' '),
  [ldIkinciBirimKatsayisi] [decimal](22, 6) NULL DEFAULT (0),
  [sUcuncuBirimAdi] [varchar](10) NULL DEFAULT (''),
  [cUcuncuBirimCarpanBolen] [char](1) NULL DEFAULT (' '),
  [ldUcuncuBirimKatsayisi] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirinciBirim] [decimal](22, 6) NULL DEFAULT (0),
  [ldIkinciBirim] [decimal](22, 6) NULL DEFAULT (0),
  [ldUcuncuBirim] [decimal](22, 6) NULL DEFAULT (0),
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
  [ldTevkifatOranCarpi] [decimal](22, 2) NULL DEFAULT (0),
  [ldTevkifatOranBolu] [decimal](22, 2) NULL DEFAULT (0),
  [pTevkifatOranTanimi] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HizmetDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO