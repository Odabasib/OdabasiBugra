﻿CREATE TABLE [Gusto].[OY_FAILEDMAILS] (
  [OY_FAILEDMAILS_ROWID] [int] IDENTITY,
  [PEVENT] [int] NULL DEFAULT (0),
  [PPLAN] [int] NULL DEFAULT (0),
  [NTRYCOUNT] [int] NULL DEFAULT (0),
  [DTTARIH] [date] NULL,
  [POBJECT] [image] NULL,
  PRIMARY KEY CLUSTERED ([OY_FAILEDMAILS_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO