﻿CREATE TABLE [Gusto].[BPMCG_OlusanDepoTransferleri] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [bTransferTuru] [int] NULL DEFAULT (-1),
  [pOlusanTransfer] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_OlusanDepoTransferleri]
  ADD CONSTRAINT [BPMCG_OlusanDepoTransferleriONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMFT_DEPOTRANSFERI] ([ROWID]) ON DELETE CASCADE
GO