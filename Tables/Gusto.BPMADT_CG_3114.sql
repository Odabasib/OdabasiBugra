﻿CREATE TABLE [Gusto].[BPMADT_CG_3114] (
  [ROW_ID] [int] IDENTITY,
  [PMAINAUDIT] [int] NULL DEFAULT (0),
  [SFIELDNAME] [varchar](40) NULL,
  [SOLDVALUE] [varchar](255) NULL,
  [SNEWVALUE] [varchar](255) NULL,
  PRIMARY KEY CLUSTERED ([ROW_ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO