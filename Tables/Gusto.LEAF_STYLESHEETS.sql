﻿CREATE TABLE [Gusto].[LEAF_STYLESHEETS] (
  [LEAF_STYLESHEETS_ROWID] [int] IDENTITY,
  [SADI] [varchar](255) NULL DEFAULT (''),
  [BAKTIF] [bit] NULL DEFAULT (0),
  [SACIKLAMA] [varchar](2000) NULL DEFAULT (''),
  [POBJECT] [image] NULL DEFAULT (''),
  [PXSLTOBJECT] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([LEAF_STYLESHEETS_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO