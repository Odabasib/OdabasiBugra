CREATE TABLE [Gusto].[BPMFT_URUNAGACIMALZREVIZE] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [bMalzemeMiktarRevize] [bit] NULL,
  [bMiktarRevizesi] [bit] NULL,
  [bMalzemeRevize] [bit] NULL,
  [ldYeniBelirlenenMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [KullanilanUrunAgaclari] [int] NULL DEFAULT (0),
  [pStok] [int] NULL DEFAULT (0),
  [pYeniStok] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID])
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_URUNAGACIMALZREVIZE]
  ADD CONSTRAINT [BPMFT_URUNAGACIMALZREVIZEONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO