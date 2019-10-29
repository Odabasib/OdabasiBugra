﻿CREATE TABLE [Gusto].[PERS_PARAMSABLON] (
  [PERS_PARAMSABLON_ROWID] [int] IDENTITY,
  [PKULLANICI] [int] NULL DEFAULT (0),
  [PDATASOURCE] [smallint] NULL DEFAULT (0),
  [SSABLONADI] [varchar](255) NULL DEFAULT (''),
  [BDEFAULT] [bit] NULL DEFAULT (0),
  [OBJLAYOUT] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([PERS_PARAMSABLON_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO