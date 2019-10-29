CREATE TABLE [GUSTO00005].[SabitKIzlemeDetay] (
  [SabitKIzlemeDetay_rowid] [int] IDENTITY,
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pIzlemeDetayDevami] [int] NULL DEFAULT (0),
  [pIzlemeDetayDevami1] [int] NULL DEFAULT (0),
  [cMuhKodlariStokKodundan] [char](1) NULL DEFAULT (' '),
  [cBarkodlarStokKodundan] [char](1) NULL DEFAULT (' '),
  [cUreticiKodlariStokKodundan] [char](1) NULL DEFAULT (' '),
  [cSeviyelerStokKodundan] [char](1) NULL DEFAULT (' '),
  [cAmbalajStokKodundan] [char](1) NULL DEFAULT (' '),
  [ldAsgariSeviye1] [decimal](22, 6) NULL DEFAULT (0),
  [ldAzamiSeviye1] [decimal](22, 6) NULL DEFAULT (0),
  [ldSiparisEdilmeSeviyesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirinciBirim] [decimal](22, 6) NULL DEFAULT (0),
  [ldEn1Birim] [real] NULL DEFAULT (0.000000),
  [ldBoy1Birim] [real] NULL DEFAULT (0.000000),
  [ldYukseklik1Birim] [real] NULL DEFAULT (0.000000),
  [ldAgirlik1Birim] [real] NULL DEFAULT (0.000000),
  [sOlcuUzunluk1Birim] [varchar](10) NULL DEFAULT (''),
  [sOlcuAgirlik1Birim] [varchar](10) NULL DEFAULT (''),
  [sBarkod1Birim] [varchar](20) NULL DEFAULT (''),
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
  [pSabitKymTurleri] [int] NULL DEFAULT (0),
  [bKisitAmortisman] [bit] NULL DEFAULT (0),
  [cAmortismanSekli] [tinyint] NULL DEFAULT (0),
  [bYeniDegerTabi] [bit] NULL DEFAULT (0),
  [nAmortismanSuresi] [smallint] NULL DEFAULT (0),
  [ldAmortismanOrani] [decimal](22, 6) NULL DEFAULT (0),
  [nAmortismanKalanYil] [smallint] NULL DEFAULT (0),
  [ldDevredenSonDegeri] [decimal](22, 2) NULL DEFAULT (0),
  [ldDevredenAmortismanDegeri] [decimal](22, 2) NULL DEFAULT (0),
  [ldDevredenYeniDegerFon] [decimal](22, 2) NULL DEFAULT (0),
  [ldDevredenSonNetDeger] [decimal](22, 2) NULL DEFAULT (0),
  [ldSonDeger] [decimal](22, 2) NULL DEFAULT (0),
  [ldBirikmisAmortisman] [decimal](22, 2) NULL DEFAULT (0),
  [ldSonNetDeger] [decimal](22, 2) NULL DEFAULT (0),
  [ldYenidenDegerlemeFonu] [decimal](22, 2) NULL DEFAULT (0),
  [ldSermayeArtisi] [decimal](22, 2) NULL DEFAULT (0),
  [dtAlinisTarihi] [smalldatetime] NULL,
  [ldAlinisFiyati] [decimal](22, 2) NULL DEFAULT (0),
  [bHareketVarmi] [bit] NULL DEFAULT (0),
  [bOmruDoldu] [bit] NULL DEFAULT (0),
  [ldKisitliKalan] [decimal](22, 2) NULL DEFAULT (0),
  [bDevreden] [bit] NULL DEFAULT (0),
  [pAlimHareketi] [int] NULL DEFAULT (0),
  [ldEndeks] [decimal](22, 5) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SabitKIzlemeDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pAlimHareketi]
  ON [GUSTO00005].[SabitKIzlemeDetay] ([pAlimHareketi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pSabitKymTurleri]
  ON [GUSTO00005].[SabitKIzlemeDetay] ([pSabitKymTurleri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sBarkod1Birim]
  ON [GUSTO00005].[SabitKIzlemeDetay] ([sBarkod1Birim])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO