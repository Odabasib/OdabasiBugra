﻿CREATE TABLE [Gusto].[OY_EventDef] (
  [OY_EVENTDEF_ROWID] [int] IDENTITY,
  [SADI] [varchar](255) NULL DEFAULT (''),
  [NEVENTTYPE] [int] NULL DEFAULT (0),
  [SACIKLAMA] [varchar](255) NULL,
  [POBJECT] [image] NULL,
  PRIMARY KEY CLUSTERED ([OY_EVENTDEF_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO