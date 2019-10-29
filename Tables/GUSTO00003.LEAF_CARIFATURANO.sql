﻿CREATE TABLE [GUSTO00003].[LEAF_CARIFATURANO] (
  [LEAF_CARIFATURANO_ROWID] [int] IDENTITY,
  [PNUMARA] [int] NOT NULL DEFAULT (0),
  [PCARIID] [int] NULL DEFAULT (0),
  [SFATURASERI] [varchar](50) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([LEAF_CARIFATURANO_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO