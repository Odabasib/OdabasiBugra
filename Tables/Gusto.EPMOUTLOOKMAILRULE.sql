﻿CREATE TABLE [Gusto].[EPMOUTLOOKMAILRULE] (
  [EPMOUTLOOKMAILRULE_ROWID] [int] IDENTITY,
  [SADI] [varchar](255) NULL DEFAULT (''),
  [SGRUPADI] [varchar](255) NULL DEFAULT (''),
  [BAKTIF] [bit] NULL DEFAULT (0),
  [SACIKLAMA] [varchar](2000) NULL DEFAULT (''),
  [POBJECT] [image] NULL,
  PRIMARY KEY CLUSTERED ([EPMOUTLOOKMAILRULE_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO