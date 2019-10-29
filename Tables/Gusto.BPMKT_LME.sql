CREATE TABLE [Gusto].[BPMKT_LME] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  [dtTarih] [datetime] NULL,
  [ldLME] [decimal](22, 6) NULL DEFAULT (0),
  [ldPress] [decimal](22, 6) NULL DEFAULT (0),
  [ldEloksal] [decimal](22, 6) NULL DEFAULT (0),
  [ldBoyali] [decimal](22, 6) NULL DEFAULT (0),
  [ldAhsap] [decimal](22, 6) NULL DEFAULT (0),
  [ldPvc] [decimal](22, 6) NULL DEFAULT (0),
  [ldPolistren] [decimal](22, 6) NULL DEFAULT (0),
  [ldGalvanizHam] [decimal](22, 6) NULL DEFAULT (0),
  [ldEmaye] [decimal](22, 6) NULL DEFAULT (0),
  [ldGalvanizBeyaz] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_LME]
  ADD CONSTRAINT [BPMKT_LMEONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO