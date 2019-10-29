CREATE TABLE [Gusto].[BPMCG_KismiDepoTransferleri] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldRevizeMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [pIsemri] [int] NULL DEFAULT (0),
  [ldAnaDepoMiktari] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_KismiDepoTransferleri]
  ADD CONSTRAINT [BPMCG_KismiDepoTransferleriONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMFT_DEPOTRANSFERI] ([ROWID]) ON DELETE CASCADE
GO