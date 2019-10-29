﻿CREATE TABLE [Gusto].[EPMCariBilgiItem] (
  [EPMCARIBILGIITEM_ROWID] [int] IDENTITY,
  [SADI] [varchar](255) NULL DEFAULT (''),
  [SSQL] [varchar](2048) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([EPMCARIBILGIITEM_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO