CREATE TABLE [Gusto].[BPMFT_TEKLIF] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [dtTeklifTarihi] [datetime] NULL,
  [nNo] [decimal](22, 6) NULL DEFAULT (0),
  [pDepartman] [int] NULL DEFAULT (0),
  [pTedarikci] [int] NULL DEFAULT (0),
  [pAtananKullanici] [int] NULL DEFAULT (0),
  [pSeri] [int] NULL DEFAULT (0),
  [pTalepSatir] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_TEKLIF]
  ADD CONSTRAINT [BPMFT_TEKLIFONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO