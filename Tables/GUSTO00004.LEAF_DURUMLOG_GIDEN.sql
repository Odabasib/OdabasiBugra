﻿CREATE TABLE [GUSTO00004].[LEAF_DURUMLOG_GIDEN] (
  [LEAF_DURUMLOG_GIDEN_ROWID] [int] IDENTITY,
  [PEARSIVFATURA] [int] NULL DEFAULT (0),
  [NESKIDURUM] [smallint] NULL DEFAULT (0),
  [NYENIDURUM] [smallint] NULL DEFAULT (0),
  [PKULLANICI] [int] NULL DEFAULT (0),
  [DTTARIH] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([LEAF_DURUMLOG_GIDEN_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO