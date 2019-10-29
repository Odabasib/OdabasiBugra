﻿CREATE TABLE [Gusto].[EPMGridCust_KartList] (
  [EPMGRIDCUST_KARTLIST_ROWID] [int] IDENTITY,
  [PKULLANICI] [int] NULL DEFAULT (0),
  [PBASEKOD] [smallint] NULL DEFAULT (0),
  [SSABLONADI] [varchar](255) NULL DEFAULT (''),
  [BDEFAULT] [bit] NULL DEFAULT (0),
  [OBJLAYOUT] [image] NULL,
  PRIMARY KEY CLUSTERED ([EPMGRIDCUST_KARTLIST_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IND_EPMGridCust_KartList]
  ON [Gusto].[EPMGridCust_KartList] ([PKULLANICI], [PBASEKOD])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO