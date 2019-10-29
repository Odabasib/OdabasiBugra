﻿CREATE TABLE [Gusto].[EPMGridCust_GelenEFaturaList] (
  [EPMGRIDCUST_GELENEFATURALIST_ROWID] [int] IDENTITY,
  [PKULLANICI] [int] NULL DEFAULT (0),
  [PBASEKOD] [smallint] NULL DEFAULT (0),
  [SSABLONADI] [varchar](255) NULL DEFAULT (''),
  [BDEFAULT] [bit] NULL DEFAULT (0),
  [OBJLAYOUT] [image] NULL,
  PRIMARY KEY CLUSTERED ([EPMGRIDCUST_GELENEFATURALIST_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IND_EPMGridCust_GelenEFaturaList]
  ON [Gusto].[EPMGridCust_GelenEFaturaList] ([PKULLANICI])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO