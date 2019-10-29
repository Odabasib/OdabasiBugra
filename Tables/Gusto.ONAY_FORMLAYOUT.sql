﻿CREATE TABLE [Gusto].[ONAY_FORMLAYOUT] (
  [ONAY_FORMLAYOUT_ROWID] [int] IDENTITY,
  [PONAYFORMU] [int] NULL DEFAULT (0),
  [POBJECT] [image] NULL,
  PRIMARY KEY CLUSTERED ([ONAY_FORMLAYOUT_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO