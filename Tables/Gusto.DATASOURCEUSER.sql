﻿CREATE TABLE [Gusto].[DATASOURCEUSER] (
  [DATASOURCEUSER_ROWID] [int] IDENTITY,
  [DATASOURCEID] [int] NULL DEFAULT (0),
  [USERID] [int] NULL DEFAULT (0),
  [USERTYPE] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DATASOURCEUSER_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO