﻿CREATE TABLE [Gusto].[EPMCust_KartList] (
  [EPMCUST_KARTLIST_ROWID] [int] IDENTITY,
  [PKARTTURU] [smallint] NULL DEFAULT (0),
  [PKULLANICI] [int] NULL DEFAULT (0),
  [SSABLONADI] [varchar](255) NULL DEFAULT (''),
  [OBJLAYOUT] [image] NULL,
  PRIMARY KEY CLUSTERED ([EPMCUST_KARTLIST_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IND_EPMCust_KartList]
  ON [Gusto].[EPMCust_KartList] ([PKARTTURU], [PKULLANICI])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO