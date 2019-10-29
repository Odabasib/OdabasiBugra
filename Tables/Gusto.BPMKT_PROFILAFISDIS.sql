﻿CREATE TABLE [Gusto].[BPMKT_PROFILAFISDIS] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_PROFILAFISDIS]
  ADD CONSTRAINT [BPMKT_PROFILAFISDISONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO