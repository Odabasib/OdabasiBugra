﻿CREATE TABLE [Gusto].[LEF_KILIT] (
  [LEF_KILIT_ROWID] [int] IDENTITY,
  [PFIRMA] [int] NULL DEFAULT (0),
  [NTUR] [smallint] NULL DEFAULT (0),
  [PNESNE] [int] NULL DEFAULT (0),
  [PKULLANICI] [int] NULL DEFAULT (0),
  [DTTARIH] [smalldatetime] NULL,
  [SHOSTIP] [varchar](50) NULL DEFAULT (''),
  [PROCESSID] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([LEF_KILIT_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO