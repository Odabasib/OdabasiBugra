CREATE TABLE [Gusto].[BPMFT_VTMUSTERIONAYI] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [TeklifSatirlari] [int] NULL DEFAULT (0),
  [AlternatifTeklifSatirlari] [int] NULL DEFAULT (0),
  [pTeslimSekli] [int] NULL DEFAULT (0),
  [pMalCikisLokasyon] [int] NULL DEFAULT (0),
  [pSticker] [int] NULL DEFAULT (0),
  [pPaketleme] [int] NULL DEFAULT (0),
  [pCikti] [int] NULL DEFAULT (0),
  [MusteriOnayiBekleyenTeklifler] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_VTMUSTERIONAYI]
  ADD CONSTRAINT [BPMFT_VTMUSTERIONAYIONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO