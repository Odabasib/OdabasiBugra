CREATE TABLE [GUSTO00005].[StokHareketDetay] (
  [StokHareketDetay_rowid] [int] IDENTITY,
  [pStokHareket] [int] NULL DEFAULT (0),
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
  [pButce] [int] NULL DEFAULT (0),
  [ldTevkifatTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldTevkifatOrani] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdTevkifatTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdTevkifatTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pTevkifatOranTanimi] [int] NULL DEFAULT (0),
  [pIstisnaTanimi] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokHareketDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pStokHareket]
  ON [GUSTO00005].[StokHareketDetay] ([pStokHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO