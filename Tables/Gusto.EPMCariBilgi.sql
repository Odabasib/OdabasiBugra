﻿CREATE TABLE [Gusto].[EPMCariBilgi] (
  [EPMCARIBILGI_ROWID] [int] IDENTITY,
  [PCARISECIMI] [int] NULL DEFAULT (0),
  [PBILGIITEM] [int] NULL DEFAULT (0),
  [SLOCATION] [varchar](255) NULL DEFAULT (''),
  [BEXPANDED] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMCARIBILGI_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO