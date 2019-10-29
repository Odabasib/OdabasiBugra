CREATE TABLE [GUSTO00003].[UreticiKodu] (
  [UreticiKodu_rowid] [int] IDENTITY,
  [cStokHizmet] [char](1) NULL DEFAULT (' '),
  [pStok] [int] NULL DEFAULT (0),
  [pCari] [int] NULL DEFAULT (0),
  [sUreticiKodu] [varchar](120) NULL DEFAULT (''),
  [sAmbarNo] [varchar](30) NULL DEFAULT (''),
  [ldTedarikKotasi] [decimal](22, 6) NULL DEFAULT (0),
  [ldKabulToleransi] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar1Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar2Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar3Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldEn] [real] NULL DEFAULT (0.000000),
  [ldBoy] [real] NULL DEFAULT (0.000000),
  [ldYukseklik] [real] NULL DEFAULT (0.000000),
  [ldAgirlik] [real] NULL DEFAULT (0.000000),
  [sOlcuUzunluk] [varchar](10) NULL DEFAULT (''),
  [sOlcuAgirlik] [varchar](10) NULL DEFAULT (''),
  [nTeminSuresi] [int] NULL DEFAULT (0),
  [nSevkSuresi] [int] NULL DEFAULT (0),
  [nEnErkenTeslimatSuresi] [int] NULL DEFAULT (0),
  [bOtomatik] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UreticiKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CariUreticiKoduKey]
  ON [GUSTO00003].[UreticiKodu] ([pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokUreticiKodu]
  ON [GUSTO00003].[UreticiKodu] ([pStok])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sUreticiKodu]
  ON [GUSTO00003].[UreticiKodu] ([sUreticiKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO