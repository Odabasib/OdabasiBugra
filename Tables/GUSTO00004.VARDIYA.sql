﻿CREATE TABLE [GUSTO00004].[VARDIYA] (
  [VARDIYA_ROWID] [int] IDENTITY,
  [PMOLA] [int] NULL DEFAULT (0),
  [POBJECT] [image] NULL DEFAULT (''),
  [SADI] [varchar](50) NULL DEFAULT (''),
  [BASZAMANI] [bigint] NULL DEFAULT (0),
  [BITZAMANI] [bigint] NULL DEFAULT (0),
  [BAKTIF] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VARDIYA_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO