﻿CREATE TABLE [GUSTO00004].[DinamikDegerKisit] (
  [DinamikDegerKisit_rowid] [int] IDENTITY,
  [pDinamikDeger] [int] NULL DEFAULT (0),
  [pDinamikDegerKisit] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DinamikDegerKisit_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO