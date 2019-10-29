CREATE TABLE [Gusto].[BPMFT_VTTEKLIFKONTROL] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [dtTeklif] [datetime] NULL,
  [dtTermin] [datetime] NULL,
  [pKontrolDurum] [int] NULL DEFAULT (-1),
  [pNavlun] [int] NULL DEFAULT (0),
  [pNakliyeTuru] [int] NULL DEFAULT (0),
  [pTeklifOlustKullanici] [int] NULL DEFAULT (0),
  [pTeklifTuru] [int] NULL DEFAULT (0),
  [pCari] [int] NULL DEFAULT (0),
  [pOdemeKosulu] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_VTTEKLIFKONTROL]
  ADD CONSTRAINT [BPMFT_VTTEKLIFKONTROLONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO