﻿CREATE TABLE [Gusto].[BPMKT_UAARKALIKONKORUMA] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  [pAltGrupKodu] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_UAARKALIKONKORUMA]
  ADD CONSTRAINT [BPMKT_UAARKALIKONKORUMAONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO