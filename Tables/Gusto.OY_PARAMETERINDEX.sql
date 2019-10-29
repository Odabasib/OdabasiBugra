﻿CREATE TABLE [Gusto].[OY_PARAMETERINDEX] (
  [OY_PARAMETERINDEX_ROWID] [int] IDENTITY,
  [SPARAMADI] [varchar](255) NULL DEFAULT (''),
  [PCONDITION] [int] NULL DEFAULT (0),
  [NINDEX] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OY_PARAMETERINDEX_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO