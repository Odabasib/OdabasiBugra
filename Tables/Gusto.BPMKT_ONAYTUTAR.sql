﻿CREATE TABLE [Gusto].[BPMKT_ONAYTUTAR] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  [ldLimit] [decimal](22, 6) NULL DEFAULT (0),
  [ldTutarLimitEuro] [decimal](22, 6) NULL DEFAULT (0),
  [pTur] [int] NULL DEFAULT (-1),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_ONAYTUTAR]
  ADD CONSTRAINT [BPMKT_ONAYTUTARONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO