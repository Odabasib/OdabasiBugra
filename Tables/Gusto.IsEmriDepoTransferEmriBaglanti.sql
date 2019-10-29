CREATE TABLE [Gusto].[IsEmriDepoTransferEmriBaglanti] (
  [Rowid] [int] IDENTITY,
  [pIsemri] [int] NULL,
  [pDepoTransfer] [int] NULL,
  [pAtamaYapilanFaaliyet] [int] NULL,
  [pDepoTransferFaaliyet] [int] NULL,
  PRIMARY KEY CLUSTERED ([Rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO