﻿CREATE TABLE [GUSTO00005].[LEAF_CARISABLON] (
  [LEAF_CARISABLON_ROWID] [int] IDENTITY,
  [PSABLON] [int] NOT NULL DEFAULT (0),
  [PCARIID] [int] NULL DEFAULT (0),
  [SFATURASERI] [varchar](50) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([LEAF_CARISABLON_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IND_LEFCARISABLON]
  ON [GUSTO00005].[LEAF_CARISABLON] ([PSABLON], [PCARIID], [SFATURASERI])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO