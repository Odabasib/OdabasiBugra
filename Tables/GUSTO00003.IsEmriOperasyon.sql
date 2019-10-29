CREATE TABLE [GUSTO00003].[IsEmriOperasyon] (
  [IsEmriOperasyon_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [nIslemSiraNo] [smallint] NULL DEFAULT (0),
  [pOperasyonKodu] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](120) NULL DEFAULT (''),
  [pIsMerkeziKodu] [int] NULL DEFAULT (0),
  [dtPlanBaslamaTarihi] [smalldatetime] NULL,
  [dtPlanBitisTarihi] [smalldatetime] NULL,
  [tmPlanBaslamaZamani] [int] NULL DEFAULT (0),
  [tmPlanBitisZamani] [int] NULL DEFAULT (0),
  [dtIslemBaslamaTarihi] [smalldatetime] NULL,
  [dtIslemBitisTarihi] [smalldatetime] NULL,
  [pHizmetKodu] [int] NULL DEFAULT (0),
  [ldPlanlananMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldUretilenMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldUrunFireMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldSabitUretimSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nSabitUretimSureBirim] [tinyint] NULL DEFAULT (0),
  [ldDegiskenUretimSuresi] [decimal](22, 4) NULL DEFAULT (0),
  [nDegiskenUretimSureBirim] [tinyint] NULL DEFAULT (0),
  [ldBandUretimSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nBandUretimSureBirim] [tinyint] NULL DEFAULT (0),
  [ldOrtalamaPartiAdedi] [decimal](22, 6) NULL DEFAULT (0),
  [nOncekiIslem1] [smallint] NULL DEFAULT (0),
  [nOncekiIslem2] [smallint] NULL DEFAULT (0),
  [nOncekiIslem3] [smallint] NULL DEFAULT (0),
  [nOncekiIslem4] [smallint] NULL DEFAULT (0),
  [nOncekiIslem5] [smallint] NULL DEFAULT (0),
  [nOncekiIslem6] [smallint] NULL DEFAULT (0),
  [nOncekiIslem7] [smallint] NULL DEFAULT (0),
  [nOncekiIslem8] [smallint] NULL DEFAULT (0),
  [nOncekiIslem9] [smallint] NULL DEFAULT (0),
  [nOncekiIslem10] [smallint] NULL DEFAULT (0),
  [ldKapasiteVerimlilik] [decimal](22, 2) NULL DEFAULT (0),
  [ldKapanisUretimSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nKapanisUretimSureBirim] [smallint] NULL DEFAULT (0),
  [nBelirleyiciKaynakSecimi] [smallint] NULL DEFAULT (0),
  [ldOverlapMiktar] [decimal](22, 2) NULL DEFAULT (0),
  [bGanttCizelgelediMi] [bit] NULL DEFAULT (0),
  [dtCizelgeleme] [smalldatetime] NULL,
  [tmCizelgeleme] [int] NULL DEFAULT (0),
  [pCizelgeleyenKullanici] [int] NULL DEFAULT (0),
  [ldBeklemeSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nBeklemeSureBirim] [smallint] NULL DEFAULT (0),
  [bSonsuzKapasiteKaynagiMi] [bit] NULL DEFAULT (0),
  [ldBaslamaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nBaslamaSureBirim] [smallint] NULL DEFAULT (0),
  [nMalzemeTeminSuresiGun] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmriOperasyon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00003].[IsEmriOperasyon] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pOperasyonKodu]
  ON [GUSTO00003].[IsEmriOperasyon] ([pOperasyonKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO