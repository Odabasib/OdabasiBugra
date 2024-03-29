﻿CREATE TABLE [Gusto].[BPMCG_TCKoseStoklari] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pStok] [int] NULL DEFAULT (0),
  [nAdet] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_TCKoseStoklari]
  ADD CONSTRAINT [BPMCG_TCKoseStoklariONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMKT_TCPROFIL] ([ROWID]) ON DELETE CASCADE
GO