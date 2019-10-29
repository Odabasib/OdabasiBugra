CREATE TABLE [GUSTO00003].[AlinanTeklifSatir] (
  [AlinanTeklifSatir_rowid] [int] IDENTITY,
  [pBaslik] [int] NULL DEFAULT (0),
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [cStokHizmetDemirbas] [char](1) NULL DEFAULT (' '),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pButce] [int] NULL DEFAULT (0),
  [dtOpsiyon] [smalldatetime] NULL,
  [tmOpsiyon] [int] NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NULL DEFAULT (' '),
  [ldMalMiktari1Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMalMiktari2Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMalMiktari3Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamVerilenSipMiktari1] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamVerilenSipMiktari2] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamVerilenSipMiktari3] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVOrani] [decimal](22, 2) NULL DEFAULT (0),
  [ldBirimFiyatKDVsiz] [decimal](22, 9) NULL DEFAULT (0),
  [ldBirimFiyatKDVli] [decimal](22, 9) NULL DEFAULT (0),
  [ldToplamFiyatKDVsiz] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamIskontoTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldIskontoSonrasiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [nSira] [smallint] NULL DEFAULT (0),
  [nVadeSuresi] [int] NULL DEFAULT (0),
  [pOdemeKosulu] [int] NULL DEFAULT (0),
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [pCari] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [ldsdBirimFiyatKDVsiz] [decimal](22, 9) NULL DEFAULT (0),
  [ldsdBirimFiyatKDVli] [decimal](22, 9) NULL DEFAULT (0),
  [ldsdToplamFiyatKDVsiz] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamIskontoTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdIskontoSonrasiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdBirimFiyatKDVsiz] [decimal](22, 9) NULL DEFAULT (0),
  [ldhdBirimFiyatKDVli] [decimal](22, 9) NULL DEFAULT (0),
  [ldhdToplamFiyatKDVsiz] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamIskontoTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdIskontoSonrasiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdBirimFiyatKDVsiz] [decimal](22, 9) NULL DEFAULT (0),
  [ldhrkdBirimFiyatKDVli] [decimal](22, 9) NULL DEFAULT (0),
  [ldhrkdToplamFiyatKDVsiz] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkdToplamKDV] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkdToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdToplamIskontoTutar] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkdIskontoSonrasiTutar] [decimal](22, 4) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
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
  [cBaglanti] [char](1) NULL DEFAULT ('Z'),
  [pBagliOlduguSatir] [int] NULL DEFAULT (0),
  [pSetTanimi] [int] NULL DEFAULT (0),
  [ldSetMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [cAcikKapali] [char](1) NULL DEFAULT ('A'),
  [cSatirOnayDurumu] [char](1) NULL DEFAULT ('G'),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AlinanTeklifSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CariSeriNoKey]
  ON [GUSTO00003].[AlinanTeklifSatir] ([pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CariStokIzTarihBelgeKey]
  ON [GUSTO00003].[AlinanTeklifSatir] ([pStokKodu], [pIzlemeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [OpsiyonTarKey]
  ON [GUSTO00003].[AlinanTeklifSatir] ([dtOpsiyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pBagliOlduguSatir]
  ON [GUSTO00003].[AlinanTeklifSatir] ([pBagliOlduguSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriNoKey]
  ON [GUSTO00003].[AlinanTeklifSatir] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TarihKey]
  ON [GUSTO00003].[AlinanTeklifSatir] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [VerTekStokKey]
  ON [GUSTO00003].[AlinanTeklifSatir] ([pBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO