﻿CREATE TABLE [Gusto].[GIZA_GENEL] (
  [GIZA_GENEL_ROWID] [int] IDENTITY,
  [SKEY] [varchar](255) NULL DEFAULT (''),
  [NKEY] [int] NULL DEFAULT (0),
  [SGRUPADI] [varchar](50) NULL DEFAULT (''),
  [STANIMADI] [varchar](255) NULL DEFAULT (''),
  [POBJECT] [image] NULL,
  PRIMARY KEY CLUSTERED ([GIZA_GENEL_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IndGizaGenel]
  ON [Gusto].[GIZA_GENEL] ([NKEY])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO