﻿CREATE TABLE [Gusto].[BPMFT_VTUSTYONETIMONAYI] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [sRedAciklama] [varchar](255) NULL DEFAULT (''),
  [UYOnayBekleyenTeklifler] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_VTUSTYONETIMONAYI]
  ADD CONSTRAINT [BPMFT_VTUSTYONETIMONAYIONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO