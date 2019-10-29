CREATE TABLE [GUSTO00005].[SozlesmeKosullari] (
  [SozlesmeKosullari_rowid] [int] IDENTITY,
  [nKosulTuru] [int] NULL DEFAULT (0),
  [nCiroDonem] [int] NULL DEFAULT (0),
  [bCiroKotali] [bit] NULL DEFAULT (1),
  [ldCiroAltLimit] [decimal](22, 2) NULL DEFAULT (0),
  [ldCiroUstLimit] [decimal](22, 2) NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [nBirim] [int] NULL DEFAULT (1),
  [ldIskontoOran] [decimal](22, 2) NULL DEFAULT (0),
  [dtBaslangic] [smalldatetime] NULL,
  [dtBitis] [smalldatetime] NULL,
  [nUygulamaSayisi] [int] NULL DEFAULT (0),
  [nKesilenFaturaSayisi] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pSozlesme] [int] NULL DEFAULT (0),
  [nDurum] [int] NULL DEFAULT (0),
  [nInsertTur] [int] NULL DEFAULT (0),
  [nTutarMiktarIskonto] [int] NULL DEFAULT (0),
  [nStokMiktar] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SozlesmeKosullari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO