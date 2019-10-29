﻿CREATE TABLE [Gusto].[BPMKT_UARENK] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  [sKisaAd] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_UARENK]
  ADD CONSTRAINT [BPMKT_UARENKONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO