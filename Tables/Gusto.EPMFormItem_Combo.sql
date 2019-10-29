﻿CREATE TABLE [Gusto].[EPMFormItem_Combo] (
  [EPMFORMITEM_COMBO_ROWID] [int] IDENTITY,
  [SADI] [varchar](255) NULL DEFAULT (''),
  [NTYPE] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMFORMITEM_COMBO_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO