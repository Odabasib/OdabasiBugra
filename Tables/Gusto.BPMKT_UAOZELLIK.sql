﻿CREATE TABLE [Gusto].[BPMKT_UAOZELLIK] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  [sKisAd] [varchar](255) NULL DEFAULT (''),
  [pAnaGrup] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_UAOZELLIK]
  ADD CONSTRAINT [BPMKT_UAOZELLIKONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO