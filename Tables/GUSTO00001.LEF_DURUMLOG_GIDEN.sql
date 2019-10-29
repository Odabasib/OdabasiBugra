﻿CREATE TABLE [GUSTO00001].[LEF_DURUMLOG_GIDEN] (
  [LEF_DURUMLOG_GIDEN_ROWID] [int] IDENTITY,
  [PEFATURA] [int] NULL DEFAULT (0),
  [NESKIDURUM] [smallint] NULL DEFAULT (0),
  [NYENIDURUM] [smallint] NULL DEFAULT (0),
  [PKULLANICI] [int] NULL DEFAULT (0),
  [DTTARIH] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([LEF_DURUMLOG_GIDEN_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO