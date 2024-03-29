﻿CREATE TABLE [Gusto].[BPMKT_NAVLUNSEKLI] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_NAVLUNSEKLI]
  ADD CONSTRAINT [BPMKT_NAVLUNSEKLIONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO