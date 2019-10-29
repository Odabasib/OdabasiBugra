﻿CREATE TABLE [Gusto].[LEF_TANIMLAR] (
  [LEF_TANIMLAR_ROWID] [int] IDENTITY,
  [PFIRMA] [int] NULL DEFAULT (0),
  [SKEY] [varchar](255) NULL DEFAULT (''),
  [POBJECT] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([LEF_TANIMLAR_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO