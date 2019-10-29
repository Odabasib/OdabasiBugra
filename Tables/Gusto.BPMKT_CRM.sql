CREATE TABLE [Gusto].[BPMKT_CRM] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  [sRedAciklama] [varchar](255) NULL DEFAULT (''),
  [sCikisHareketi] [varchar](255) NULL DEFAULT (''),
  [sGorusmeDetaylari] [varchar](2000) NULL DEFAULT (''),
  [dtEtkinlik] [datetime] NULL,
  [pRNOnayDurumu] [int] NULL DEFAULT (3),
  [pIletisim] [int] NULL DEFAULT (0),
  [pVerilenTeklif] [int] NULL DEFAULT (0),
  [pAlinanSiparis] [int] NULL DEFAULT (0),
  [pCari] [int] NULL DEFAULT (0),
  [pUlke] [int] NULL DEFAULT (0),
  [pSehir] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_CRM]
  ADD CONSTRAINT [BPMKT_CRMONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO