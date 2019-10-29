﻿CREATE TABLE [Gusto].[LED_TICARISOZLEMELER] (
  [LED_TICARISOZLEMELER_ROWID] [int] IDENTITY,
  [PFIRMA] [int] NULL DEFAULT (0),
  [PDONEM] [int] NULL DEFAULT (0),
  [SAY] [varchar](100) NULL DEFAULT (''),
  [SYIL] [varchar](100) NULL DEFAULT (''),
  [SFILENAME] [varchar](2000) NULL DEFAULT (''),
  [FILEDATA] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([LED_TICARISOZLEMELER_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO