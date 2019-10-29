﻿CREATE TABLE [Gusto].[EPMFormItem_KodAd] (
  [EPMFORMITEM_KODAD_ROWID] [int] IDENTITY,
  [SADI] [varchar](255) NULL DEFAULT (''),
  [STABLESCHEMA] [varchar](10) NULL DEFAULT (''),
  [SKODADTABLE] [varchar](255) NULL DEFAULT (''),
  [SKODFIELD] [varchar](255) NULL DEFAULT (''),
  [SADFIELD] [varchar](255) NULL DEFAULT (''),
  [SKEYFIELD] [varchar](255) NULL DEFAULT (''),
  [SCONDITION] [varchar](2048) NULL DEFAULT (''),
  [BCOKLUSECIM] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMFORMITEM_KODAD_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO