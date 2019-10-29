﻿CREATE TABLE [Gusto].[ONAY_DYNUSER] (
  [ONAY_DYNUSER_ROWID] [int] IDENTITY,
  [SADI] [varchar](255) NULL,
  [SVALUE] [varchar](max) NULL,
  [NTYPE] [int] NULL,
  PRIMARY KEY CLUSTERED ([ONAY_DYNUSER_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO