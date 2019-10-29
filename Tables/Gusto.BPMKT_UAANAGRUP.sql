﻿CREATE TABLE [Gusto].[BPMKT_UAANAGRUP] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_UAANAGRUP]
  ADD CONSTRAINT [BPMKT_UAANAGRUPONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO