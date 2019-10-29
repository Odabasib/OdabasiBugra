﻿CREATE TABLE [Gusto].[OY_GenelX] (
  [OY_GENEL_ROWID] [int] IDENTITY,
  [SKEY] [varchar](255) NULL DEFAULT (''),
  [NKEY] [int] NULL DEFAULT (0),
  [POBJECT] [image] NULL,
  PRIMARY KEY CLUSTERED ([OY_GENEL_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO