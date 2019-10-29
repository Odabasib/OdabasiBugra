CREATE TABLE [GUSTO00004].[DepoHareketEmri] (
  [DepoHareketEmri_rowid] [int] IDENTITY,
  [pDepo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [cGirisCikis] [char](1) NULL DEFAULT (' '),
  [nSira] [smallint] NULL DEFAULT (0),
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NULL DEFAULT (' '),
  [ldMiktar1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar3] [decimal](22, 6) NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [pBaslik] [int] NULL DEFAULT (0),
  [fSira] [real] NULL DEFAULT (0.000000),
  [sAciklama] [varchar](120) NULL DEFAULT (''),
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
  [bFromDepoHarSetSatiri] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DepoHareketEmri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [Baslik]
  ON [GUSTO00004].[DepoHareketEmri] ([pBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Depo]
  ON [GUSTO00004].[DepoHareketEmri] ([pDepo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriNo]
  ON [GUSTO00004].[DepoHareketEmri] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Sira]
  ON [GUSTO00004].[DepoHareketEmri] ([nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Stok]
  ON [GUSTO00004].[DepoHareketEmri] ([pStokKodu], [pIzlemeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Tarih]
  ON [GUSTO00004].[DepoHareketEmri] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO