﻿CREATE TABLE [Gusto].[ONAY_USERTEMPLATE] (
  [ONAY_USERTEMPLATE_ROWID] [int] IDENTITY,
  [SADI] [varchar](255) NULL,
  [POBJECT] [image] NULL,
  PRIMARY KEY CLUSTERED ([ONAY_USERTEMPLATE_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO