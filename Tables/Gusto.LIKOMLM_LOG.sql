﻿CREATE TABLE [Gusto].[LIKOMLM_LOG] (
  [LIKOMLM_LOG_ROWID] [int] IDENTITY,
  [MODULID] [int] NULL DEFAULT (0),
  [USED] [int] NULL DEFAULT (0),
  [FREE] [int] NULL DEFAULT (0),
  [TARIH] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([LIKOMLM_LOG_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IND_LIKOMLM_LOG]
  ON [Gusto].[LIKOMLM_LOG] ([MODULID], [TARIH])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO