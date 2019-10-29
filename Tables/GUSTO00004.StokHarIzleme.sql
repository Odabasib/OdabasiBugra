CREATE TABLE [GUSTO00004].[StokHarIzleme] (
  [StokHarIzleme_rowid] [int] IDENTITY,
  [pStokHareket] [int] NOT NULL DEFAULT (0),
  [sTur] [varchar](2) NOT NULL DEFAULT (''),
  [sKaynak] [varchar](2) NOT NULL DEFAULT (''),
  [pKaynak] [int] NOT NULL DEFAULT (0),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pIzlemeKodu] [int] NOT NULL DEFAULT (0),
  [sEtiket] [varchar](50) NOT NULL DEFAULT (''),
  [ldMiktar1Birim] [decimal](22, 6) NOT NULL DEFAULT (0),
  [ldMiktar2Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar3Birim] [decimal](22, 6) NULL DEFAULT (0),
  [dtSonKullanma] [smalldatetime] NULL,
  [dtGarantiBitis] [smalldatetime] NULL,
  [pDinamikDegerler] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](50) NOT NULL DEFAULT (''),
  [pSablon] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokHarIzleme_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [StokHareket]
  ON [GUSTO00004].[StokHarIzleme] ([pStokHareket], [sTur], [sEtiket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO