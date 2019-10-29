﻿CREATE TABLE [Gusto].[EPMFormItem_Yetki] (
  [EPMFORMITEM_YETKI_ROWID] [int] IDENTITY,
  [PFORMITEM] [int] NULL DEFAULT (0),
  [PYETKIGRUBU] [int] NULL DEFAULT (0),
  [BOKUMA] [bit] NULL DEFAULT (0),
  [BDEGISTIRME] [bit] NULL DEFAULT (0),
  [BOKUMAOWN] [bit] NULL DEFAULT (0),
  [BDEGISTIRMEOWN] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMFORMITEM_YETKI_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IND_EPMFormItem_Yetki]
  ON [Gusto].[EPMFormItem_Yetki] ([PFORMITEM], [PYETKIGRUBU])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO