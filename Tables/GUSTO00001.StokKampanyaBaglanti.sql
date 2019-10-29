CREATE TABLE [GUSTO00001].[StokKampanyaBaglanti] (
  [StokKampanyaBaglanti_rowid] [int] IDENTITY,
  [cTur] [char](1) NULL DEFAULT (' '),
  [pStokHareketPromosyon] [int] NULL DEFAULT (0),
  [pStokHareket] [int] NULL DEFAULT (0),
  [pKampanyaTanim] [int] NULL DEFAULT (0),
  [pHareketBaslik] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokKampanyaBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO