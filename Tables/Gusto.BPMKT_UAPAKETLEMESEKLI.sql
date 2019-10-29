﻿CREATE TABLE [Gusto].[BPMKT_UAPAKETLEMESEKLI] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  [nAdet] [decimal](22, 6) NULL DEFAULT (0),
  [pAnaGrup] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_UAPAKETLEMESEKLI]
  ADD CONSTRAINT [BPMKT_UAPAKETLEMESEKLIONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO