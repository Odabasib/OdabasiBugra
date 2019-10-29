CREATE TABLE [GUSTO00005].[CiroPrimHesaplamalari] (
  [CiroPrimHesaplamalari_rowid] [int] IDENTITY,
  [pPrimDonem] [int] NULL DEFAULT (0),
  [pCariKodu] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pHizmetKodu] [int] NULL DEFAULT (0),
  [pStokHareket] [int] NULL DEFAULT (0),
  [ldPrimOran] [decimal](22, 6) NULL DEFAULT (0),
  [ldPrimTutar] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([CiroPrimHesaplamalari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO