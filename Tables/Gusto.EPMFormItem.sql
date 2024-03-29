﻿CREATE TABLE [Gusto].[EPMFormItem] (
  [EPMFORMITEM_ROWID] [int] IDENTITY,
  [NFORMTYPE] [smallint] NULL DEFAULT (0),
  [PFAALIYETTURU] [int] NULL DEFAULT (0),
  [PGRUP] [int] NULL DEFAULT (0),
  [SADI] [varchar](255) NULL DEFAULT (''),
  [CTUR] [char](1) NULL,
  [PEPMCONTROL] [int] NULL DEFAULT (0),
  [BZORUNLU] [bit] NULL DEFAULT (0),
  [BSUREKLIGIRIS] [bit] NULL DEFAULT (0),
  [SLOCATION] [varchar](15) NULL DEFAULT (''),
  [STOOLTIP] [varchar](255) NULL DEFAULT (''),
  [POBJECT] [image] NULL,
  PRIMARY KEY CLUSTERED ([EPMFORMITEM_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IND_EPMFormItem]
  ON [Gusto].[EPMFormItem] ([PFAALIYETTURU])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO