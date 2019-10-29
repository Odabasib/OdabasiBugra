CREATE TABLE [GUSTO00001].[DepoTransferMaliyet] (
  [DepoTransferMaliyet_rowid] [int] IDENTITY,
  [pDepoTransfer] [int] NOT NULL DEFAULT (0),
  [pStokHarBaslik] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DepoTransferMaliyet_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pStokHarBaslik]
  ON [GUSTO00001].[DepoTransferMaliyet] ([pStokHarBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [TransferBaslikKey]
  ON [GUSTO00001].[DepoTransferMaliyet] ([pDepoTransfer], [pStokHarBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO