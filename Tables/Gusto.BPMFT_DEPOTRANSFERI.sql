CREATE TABLE [Gusto].[BPMFT_DEPOTRANSFERI] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [sReferansNo] [varchar](255) NULL DEFAULT (''),
  [bKismiTransfer] [bit] NULL,
  [bTopluTransfer] [bit] NULL,
  [bMiktarRevizeTransfer] [bit] NULL,
  [dtIsemriTarih] [datetime] NULL,
  [TransferYapilacakMalz] [int] NULL DEFAULT (0),
  [pAtayanKullanici] [int] NULL DEFAULT (0),
  [pIsemri] [int] NULL DEFAULT (0),
  [pUrun] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_DEPOTRANSFERI]
  ADD CONSTRAINT [BPMFT_DEPOTRANSFERIONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO