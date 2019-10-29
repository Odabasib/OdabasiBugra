﻿CREATE TABLE [Gusto].[EPMTekLstSablon] (
  [EPMTEKLSTSABLON_ROWID] [int] IDENTITY,
  [NEKRANTURU] [smallint] NULL DEFAULT (0),
  [PFAALIYETTURU] [int] NULL DEFAULT (0),
  [PKULLANICI] [int] NULL DEFAULT (0),
  [SSABLONADI] [varchar](255) NULL DEFAULT (''),
  [DTOLUSTURMA] [smalldatetime] NULL,
  [OBJLAYOUT] [image] NULL,
  PRIMARY KEY CLUSTERED ([EPMTEKLSTSABLON_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IND_EPMTekLstSablon]
  ON [Gusto].[EPMTekLstSablon] ([PFAALIYETTURU], [PKULLANICI])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO