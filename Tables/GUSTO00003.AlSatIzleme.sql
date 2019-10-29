CREATE TABLE [GUSTO00003].[AlSatIzleme] (
  [AlSatIzleme_rowid] [int] IDENTITY,
  [pHareket] [int] NOT NULL DEFAULT (0),
  [sTur] [varchar](2) NOT NULL DEFAULT (''),
  [sKaynak] [varchar](2) NOT NULL DEFAULT (''),
  [pKaynak] [int] NOT NULL DEFAULT (0),
  [sHedef] [varchar](2) NOT NULL DEFAULT (''),
  [pHedef] [int] NOT NULL DEFAULT (0),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pIzlemeKodu] [int] NOT NULL DEFAULT (0),
  [sEtiket] [varchar](50) NOT NULL DEFAULT (''),
  [ldMiktar1Birim] [decimal](22, 6) NOT NULL DEFAULT (0),
  [ldMiktar2Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar3Birim] [decimal](22, 6) NULL DEFAULT (0),
  [dtSonKullanma] [smalldatetime] NULL,
  [dtGarantiBitis] [smalldatetime] NULL,
  [pDinamikDegerler] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](100) NOT NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([AlSatIzleme_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [HareketIzleme]
  ON [GUSTO00003].[AlSatIzleme] ([pHareket], [sTur], [sEtiket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO