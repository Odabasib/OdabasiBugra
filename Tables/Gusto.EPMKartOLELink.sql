﻿CREATE TABLE [Gusto].[EPMKartOLELink] (
  [EPMKARTOLELINK_ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  [PITEM] [int] NULL DEFAULT (0),
  [SOLENAME] [varchar](255) NULL DEFAULT (''),
  [SOLELINK] [varchar](2048) NULL DEFAULT (''),
  [bMovedToServer] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMKARTOLELINK_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IND_EPMKartOLELink]
  ON [Gusto].[EPMKartOLELink] ([PKART])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO