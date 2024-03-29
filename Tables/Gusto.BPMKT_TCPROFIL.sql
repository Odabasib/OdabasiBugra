﻿CREATE TABLE [Gusto].[BPMKT_TCPROFIL] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  [nBoyaKatsayi] [decimal](22, 6) NULL DEFAULT (0),
  [pBoyaiscilik] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_TCPROFIL]
  ADD CONSTRAINT [BPMKT_TCPROFILONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO