CREATE TABLE [Gusto].[DepoTransferLog] (
  [Rowid] [int] IDENTITY,
  [bTopluDepoTransfer_Rowid] [int] NULL,
  [pFaaliyet] [int] NULL,
  PRIMARY KEY CLUSTERED ([Rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO