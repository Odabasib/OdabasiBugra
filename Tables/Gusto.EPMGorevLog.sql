﻿CREATE TABLE [Gusto].[EPMGorevLog] (
  [EPMGOREVLOG_ROWID] [int] IDENTITY,
  [PKULLANICI] [int] NULL DEFAULT (0),
  [PFAALIYET] [int] NULL DEFAULT (0),
  [DTREMIND] [smalldatetime] NULL,
  [SACIKLAMA] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([EPMGOREVLOG_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IND_EPMGorevLog]
  ON [Gusto].[EPMGorevLog] ([PKULLANICI], [PFAALIYET])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO