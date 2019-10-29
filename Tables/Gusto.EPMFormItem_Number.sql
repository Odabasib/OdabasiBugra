﻿CREATE TABLE [Gusto].[EPMFormItem_Number] (
  [EPMFORMITEM_NUMBER_ROWID] [int] IDENTITY,
  [SADI] [varchar](255) NULL DEFAULT (''),
  [NPRECISION] [decimal](22, 2) NULL DEFAULT (0),
  [LDVARSAYILAN] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMFORMITEM_NUMBER_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO